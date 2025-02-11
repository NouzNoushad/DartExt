void main() {
  String name = "john doe";
  print(name.toCapitalize());
}

// extension

extension CamelCaseExt on String {
  String toCapitalize() => this[0].toUpperCase() + substring(1);
}