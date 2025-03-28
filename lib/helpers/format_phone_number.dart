String formatPhoneNumber(String rawPhone) {
  if (rawPhone.length != 14 || !rawPhone.startsWith('+')) {
    return rawPhone;
  }

  String countryCode = rawPhone.substring(0, 3);
  String areaCode = rawPhone.substring(3, 5);
  String prefix = rawPhone.substring(5, 10);
  String suffix = rawPhone.substring(10);

  return '$countryCode ($areaCode) $prefix-$suffix';
}
