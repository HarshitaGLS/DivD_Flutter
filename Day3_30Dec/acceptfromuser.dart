import 'dart:io';
void main(){
  String ?name;
  print("enter a value");
  name = stdin.readLineSync();
  int num = int.parse(name!);
  // print("Value is = $name");
  // print(name.runtimeType);
  // print("num = $num and datatype= ${num.runtimeType}");
print("${num is int}"); //true
print("${num is! int}"); //false

dynamic val = "10";
String str = val as String;
}