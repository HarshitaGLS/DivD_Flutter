abstract class Shape{
  void printhello(){print("hello");}
  void area(); //abstract function
}

class Circle extends Shape{
  final PI = 3.14;
  int r;
  Circle(this.r);
  void area(){
    print(PI*this.r* this.r);
  }
}

void main(){
  Circle c1 = new Circle(2);
  c1.area();
  c1.printhello();
}
