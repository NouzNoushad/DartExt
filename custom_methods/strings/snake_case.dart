void main() {
  String naming = "fetch user data";
  print(naming.toSnakeCase());
}

// extension for snake_case
extension SnakeCaseExt on String {
  String toSnakeCase() => this.replaceAll(" ", "_");
}
