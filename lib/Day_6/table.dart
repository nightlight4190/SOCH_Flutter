// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

table(int a) {
  // for (int i = 1; i < 11; i++) {
  //   print("a * $i = " + (a * i).toString());
  // }
  int i = 1;
  while (i < 11) {
    print("5 * $i = " + (5 * i).toString());
    i++;
  }
}

void main() {
  print("Hello there");
  table(5);
}
