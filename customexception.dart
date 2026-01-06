class MyException implements Exception{
  String errMsg() => "Custom exception occurred!";
}


void check(int val){
  if(val<0){ throw MyException();}
}

void main(){
  try{
    check(-1);
  }
  catch(e){if(e is MyException){print(e.errMsg());}}
}