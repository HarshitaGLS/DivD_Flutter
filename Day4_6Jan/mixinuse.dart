import 'mixins.dart';
class demo with mixin1,mixin2{}

void main(){
  demo d1 = new demo();
  d1.fun1();
  d1.fun2();
}