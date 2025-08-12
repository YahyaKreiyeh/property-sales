import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/constants/constants.dart';
import 'package:property_sales/core/constants/enums.dart';
import 'package:property_sales/core/helpers/spacing.dart';
import 'package:property_sales/core/models/country.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/routing/routes.dart';
import 'package:property_sales/core/routing/routes_extension.dart';
import 'package:property_sales/core/style/assets/assets.gen.dart';
import 'package:property_sales/core/themes/app_colors.dart';
import 'package:property_sales/core/themes/text_styles.dart';
import 'package:property_sales/core/widgets/buttons/primary_button.dart';
import 'package:property_sales/core/widgets/text_fields/custom_text_field.dart';
import 'package:property_sales/features/login/presentation/cubit/login_cubit.dart';
import 'package:property_sales/features/login/presentation/cubit/login_state.dart';
import 'package:property_sales/features/snackbar/bloc/snackbar_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _LoginBlocListener(),
              _Header(),
              _LoginForm(),
              _Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(200),
        _SubmitButton(),
        VerticalSpace(24),
        _HomeButton(),
      ],
    );
  }
}

class _HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('Skip to Homepage'), Icon(Icons.arrow_forward)],
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final phone = context.select((LoginCubit c) => c.state.phone);
    final phoneError = context.select((LoginCubit c) => c.state.phoneError);
    final isLoading = context.select(
      (LoginCubit c) => c.state.status.isLoading,
    );
    final canSubmit = phone.isNotEmpty && phoneError == null && !isLoading;
    return PrimaryButton(
      text: 'Next',
      textStyle: TextStyles.primaryText60015,
      onPressed: canSubmit ? () => context.read<LoginCubit>().login() : null,
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Assets.images.authHeader.image(),
        VerticalSpace(32),
        Text('Login or Sign Up', style: TextStyles.primaryText60017),
        VerticalSpace(32),
      ],
    );
  }
}

class _LoginBlocListener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (p, c) => p.status != c.status,
      listener: (context, state) {
        state.status.when(
          success: (_) {
            context.read<SnackbarBloc>().add(
              AddSnackbarEvent(
                message: 'Login successful',
                type: SnackbarType.success,
              ),
            );
            context.pushNamed(Routes.home);
          },
          failure: (_, _, errorMessage) {
            context.read<SnackbarBloc>().add(
              AddSnackbarEvent(
                message: errorMessage ?? 'Login failed',
                type: SnackbarType.error,
              ),
            );
          },
          loading: () {},
          empty: () {},
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _PhoneNumberInput(),
        VerticalSpace(16),
        Text(
          "You'll receive a code to verify this number",
          style: TextStyles.primaryText40013,
        ),
      ],
    );
  }
}

class _PhoneNumberInput extends StatelessWidget {
  const _PhoneNumberInput();

  @override
  Widget build(BuildContext context) {
    final error = context.select((LoginCubit c) => c.state.phoneError);
    return CustomTextField(
      keyboardType: TextInputType.phone,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      onChanged: context.read<LoginCubit>().phoneChanged,
      hintText: 'Mobile Number',
      maxLength: 10,
      errorText: error,
      prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
      prefixIcon: InkWell(
        onTap: () => _showCountryPicker(context),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 4),
                child: Text('+963', style: TextStyles.primaryText40015),
              ),
              const Icon(Icons.keyboard_arrow_down),
              const HorizontalSpace(16),
            ],
          ),
        ),
      ),
    );
  }

  Future<Country?> _showCountryPicker(BuildContext context) async {
    const all = [Country(name: 'Syria', flag: '🇸🇾')];
    final controller = TextEditingController();
    var filtered = List<Country>.from(all);

    return showModalBottomSheet<Country>(
      context: context,
      useSafeArea: true,
      builder: (ctx) {
        return StatefulBuilder(
          builder: (ctx, setSheetState) {
            void filter(String q) {
              final query = q.toLowerCase();
              setSheetState(() {
                filtered = all
                    .where((c) => c.name.toLowerCase().contains(query))
                    .toList();
              });
            }

            return Column(
              children: [
                VerticalSpace(24),
                _SearchField(controller: controller, onChanged: filter),
                _List(items: filtered, onSelect: (c) => ctx.pop()),
              ],
            );
          },
        );
      },
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField({required this.controller, required this.onChanged});

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),

      child: CustomTextField(
        controller: controller,
        onChanged: onChanged,
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search),
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({required this.items, required this.onSelect});

  final List<Country> items;
  final ValueChanged<Country> onSelect;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(horizontalPadding),
        itemCount: items.length,
        itemBuilder: (_, i) {
          final c = items[i];
          return ListTile(
            onTap: () => onSelect(c),
            leading: Text(c.flag, style: const TextStyle(fontSize: 30)),
            title: Text(c.name),
          );
        },
        separatorBuilder: (_, _) =>
            const Divider(height: 1, color: AppColors.inputBorderGrey),
      ),
    );
  }
}
