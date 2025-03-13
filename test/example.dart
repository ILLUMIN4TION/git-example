void main(){

  try{
    //var index = 0;
    throw Exception('error');
    //index = '1';
    print('Try');
  } catch(e) {
    print('catch');
  }finally{
    print('finally');
  }

}