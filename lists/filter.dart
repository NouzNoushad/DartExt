void main() {
  final firstOutput = filterFruits();
  final secondOutput = customFilterFruits();
  print("///////// firstoutput: $firstOutput, secondoutput: $secondOutput");
}

// lists
const fruits = ["Apple", "Banana", "Grapes", "Jackfruit", "Mango", "Tomato"];

// filter list
List<String> filterFruits() => fruits.where((fruit) => fruit.length > 5).toList();

//////////////////////////================== CUSTOM ====================///////////////////////////////

// type
typedef boolFunc<T> = bool Function(T);

// extension
extension ListExt<T> on List<T> {
  Iterable<T> filter(boolFunc test) {
    List<T> results = [];
    for(var element in this) {
        if(test(element)) {
          results.add(element);
        }
    }
    return results;
  }
}

// custom filter list 
List<String> customFilterFruits() => fruits.filter((fruit) => fruit.length > 5).toList();
