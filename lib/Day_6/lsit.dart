void main() {
  var names = ["ram", "shyam", "hari", "john"];

  print(names.map((names) => "hello " + names + ".\n").toList().join(('')));

  // print('names are');
  // print(names.join("\n"));
  // for (var i = 0; i < names.length; i++) {
  //   print('Hi ' + names[i] + ".");
  // }
  var numbers = [1, 2, 3, 4];
  int mappingFunction(x) {
    return x + 2;
  }

  var output = numbers.map(mappingFunction);
  print(output);
}
