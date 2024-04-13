void sayHi(String name, {String? secondName}) {
  (secondName == null)
      ? print("hi" + name)
      : print('hi' + name + "," + secondName);

  print("hi" + name + (secondName != null ? "," + secondName : ""));
}

void main() {
  sayHi("Ram", secondName: "shyam");
}
