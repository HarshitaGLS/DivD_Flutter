class Person {
  String ?name;
  int ?age;
  // Person(n,age){ this.name = n; this.age = age;}
  Person(this.name,this.age);
  display(){
    print("Name = ${name} and age = ${age}");
  }
}

void main(){
  Person p1 = new Person("Siya",7);
  Person p2 = new Person("GLS",99);
  p1.display();
  p2.display();
}