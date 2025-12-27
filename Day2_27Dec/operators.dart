void main(){
  int a = 10;
  // print(a.runtimeType);
  // print(a is int); //true
  // print(a is! int);//false 

  dynamic str = "hello";
  String txt =  str as String;
  print(txt.runtimeType);

}