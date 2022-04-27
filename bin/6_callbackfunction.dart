int sum(int a, int b) {
  return a + b;
}

int multi(int a, int b) {
  return a * b;
}

int input(int a, int b, {required int Function(int a, int b) calc}) {
  return calc(a, b);
}

void main(List<String> args) {
  int sum_value = input(10, 20, calc: (a, b) => sum(a, b));
  int multi_value = input(2, 4, calc: (a, b) => multi(a, b));
  print("sum = $sum_value, multi = $multi_value");
}
