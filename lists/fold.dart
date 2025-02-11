void main() {
  print("////////////// sum: $sumOfNumbers, custom sum: $customSumOfNumbers");
}

// list of numbers
List<int> numbers = [2, 4, 8, 9, 12, 34, 100, 20];

// fold
int sumOfNumbers = numbers.fold<int>(0, (prev, elem) => prev + elem);

//////////////////////////================== CUSTOM ====================///////////////////////////////

// type
typedef SumFunc<T> = T Function(T, int);

// extension
extension ListExt<T> on List<T> {
  T sum(T initialValue, SumFunc test) {
    T currentValue = initialValue;
    for (var element in this) {
      if (element is int) {
        T previous = test(currentValue, element);
        currentValue = previous;
      }
    }
    return currentValue;
  }
}

// custom fold
int customSumOfNumbers = numbers.sum(0, (prev, elem) => prev + elem);
