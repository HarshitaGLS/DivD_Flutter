void main(){
  //  var a = 10;
  //  a ="hello";
  // a = 20;
  //  print(a.runtimeType);

/*
  dynamic str = "hello"; //string
  print("string  - $str  and datatype = ${str.runtimeType} ");
  str = 20.20; //double 
  print(str.runtimeType); */

  String ?str1; //declare  ? = allow null
  print(str1); //null

////////////////////////////////////
  List<int> arr = [3,4,6];
  // print(arr);
    // print(arr[2]);
  // for(var i =0;i<arr.length;i++){
  //   print(arr[i]);
  // }
  // print(arr[3]);
  // print(arr[-1]);

  arr.add(9); //[3,4,6,9]
  arr.addAll([7,13,5]); //[3,4,6,9,7,13,5]
  arr.remove(9); //remove(value) 
  // print(arr); //[3, 4, 6, 7, 13, 5]
  arr.removeAt(0); //[4, 6, 7, 13, 5]
  arr.removeLast(); //[4, 6, 7, 13]
  arr.insert(2, 10); //[4, 6,10, 7, 13]
  arr.insertAll(1, [16,9,14,20]); //[4,16,9,14,20, 6,10, 7, 13]
  // print(arr.first);
  // print(arr.last);
  // print(arr.isEmpty);//false
  print(arr.contains(13)); //true 
}