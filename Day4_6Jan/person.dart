class Person {
  //data members
  String name = "Ram";
  int age = 20;
  //member functions
  display(){
    print("Name = ${name} and age = ${age}");
  }
}

void main(){
  Person p1 = new Person();
  p1.display();
  print(p1.name);
}