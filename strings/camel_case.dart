void main() {
  String naming = "is user exists";
  print(naming.toCamelCase());
}

// extension for Capitalize
extension CapitalizeExt on String {
  String toCapitalize() => this[0].toUpperCase() + substring(1);
}

// extension fo camelCase
extension ConvertToCamelCaseExt on String {
  String toCamelCase() {
    var newWords = [];
    var wordList = this.split(' ');
    for (var word in wordList) {
      if (wordList.indexOf(word) != 0) {
        newWords.add(word.toCapitalize());
      } else {
        newWords.insert(0, word);
      }
    }
    return newWords.join();
  }
}
