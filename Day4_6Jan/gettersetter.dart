class Person {
  String _name; //private data member 
  int age;
  Person(this._name,this.age);
  String get name => this._name; //getter
  set name(val){this._name = val;} //setter
  display(){
    print("Name = ${name} and age = ${this.age}");
  }
}

