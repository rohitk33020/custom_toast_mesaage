extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
String capitalizeText(value) {
  String name = value.toString().split('.').last.capitalize();
  return name;
}