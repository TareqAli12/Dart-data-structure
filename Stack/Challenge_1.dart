import 'dart:io';
void main(){
  List Testlist=[1,2,3,4,5,6,7,8];
  reverselist(Testlist);

}
void reverselist(List list1){
  for(int i = list1.length-1 ; i >=0; i--){
    stdout.write('${list1[i]} ');
  }
}