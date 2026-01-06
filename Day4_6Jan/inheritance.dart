class Person {
  String name;
  int age;
  Person(this.name,this.age);
  display(){
    print("Name = ${this.name} and age = ${this.age}");
  }
}

class Employee extends Person{
  int empid;
  Employee(String n,int a,this.empid):super(n,a);
  
  @override
  display(){ //function override
    super.display();
    print("Empid is = ${this.empid}");
  }
}
void main(){
  Employee e1 = new Employee( "Ram",20,1001);
  e1.display();
}