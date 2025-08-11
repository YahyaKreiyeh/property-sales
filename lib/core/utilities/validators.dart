bool validateSyrianLocalNumber(String digitsOnly) {
  final d = digitsOnly;
  if (d.isEmpty) return false;
  final normalized = d.startsWith('0') ? d.substring(1) : d;
  final isValid =
      normalized.length == 9 &&
      normalized.startsWith('9') &&
      int.tryParse(normalized) != null;
  return isValid;
}

String toSyrianE164(String localDigits) {
  final d = localDigits.startsWith('0')
      ? localDigits.substring(1)
      : localDigits;
  return '+963$d';
}
