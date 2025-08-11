import 'package:property_sales/core/constants/constants.dart';
import 'package:property_sales/core/helpers/shared_pref_helper.dart';

abstract class LocalDataSource {
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> clearToken();
}

class LocalDataSourceImpl implements LocalDataSource {
  const LocalDataSourceImpl();

  @override
  Future<void> saveToken(String token) {
    return SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  }

  @override
  Future<String?> getToken() async {
    final v = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    return v.isEmpty ? null : v;
  }

  @override
  Future<void> clearToken() {
    return SharedPrefHelper.clearAllSecuredData();
  }
}
