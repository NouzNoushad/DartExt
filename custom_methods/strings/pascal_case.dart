void main() {
  String naming = "is valid email";
  print(naming.toPascalCase());
}

// extension for Capitalize
extension CapitalizeExt on String {
  String toCapitalize() => this[0].toUpperCase() + substring(1);
}

// extension fo PascalCase
extension ConvertToPascalCaseExt on String {
  String toPascalCase() {
    var newWords = [];
    var wordList = this.split(' ');
    for (var word in wordList) {
      newWords.add(word.toCapitalize());
    }
    return newWords.join();
  }
}
