import 'dart:io';

void main() {
  stdout.write("Please Enter your name : ");
  String? name = stdin.readLineSync();
  print(name);
  name = "Manish";
  print(name);
  var humanObj = Human();
  humanObj.PrintName(name!);

  var map_name = {"key1": 10, 'key2': "okay"};
  print(map_name);
}

class Human {
  // ignore: non_constant_identifier_names
  void PrintName(String name) {
    print(name);
  }
}
