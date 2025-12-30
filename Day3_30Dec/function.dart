

int add1(int a,[int b=1]){
  return a+b;
}
void printhello(str,[String ?str1]){
  print("Hello $str ! ${str1?? "" }");
}
void printhello(str){
  print("Hello $tr");
}
var add = (a,b)=>a+b;

int add2({required int a,required int b}){
  print ("a = $a and b = $b");
  return a+b;
}
var anony = (a,b){
    print("anonymous function");
  return a+b;};

void main(){ // no argument no return 
  print(add(4,5));
  // print(add1(4));
  // print(add1(14,2));
  // printhello("Ram", "Have a Great Day!!");
  //  printhello("Siya");
  print(add2(b:14,a:5)); //named parameter

}