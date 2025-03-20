void main(){

  final list = [2, 1, 3, 3, 4];
  for(var i = 0; i<list.length; i++ ) {
    print('1번째: ${list[i]}');

  }



  //2.
  list.forEach((item) {
    print('2번쨰:! $item');
  });
  


  //3. //리스트의 길ㅇ
  List.generate(list.length, (i){
    final item = list[i];

    print('3번째: $item');
  });
  
}


