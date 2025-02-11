void main() {
  String naming = "is my boss screaming";
  print(naming.toScreamingSnakeCase());
}

// extension
extension ScreamingSnakeCaseExt on String {
  String toScreamingSnakeCase() {
    var newWords = [];
    var wordList = this.split(" ");
    for(var word in wordList) {
      newWords.add(word.toUpperCase());
    }
    return newWords.join("_");
  }
}