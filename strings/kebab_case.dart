void main() {
  String naming = "is user hungry";
  print(naming.toKebabCase());
}

// extension
extension KebabCaseExt on String {
  String toKebabCase() => this.replaceAll(" ", "-");
}
