import '../lib/linked_list.dart';
import '../lib/stack.dart';
void main(){
LinkedList testlist = LinkedList();
  testlist.append(1);
  testlist.append(2);
  testlist.append(3);
  testlist.append(4);
  testlist.append(5);
  printinreverse(testlist);
}
void printinreverse(LinkedList list){
Stack S = Stack();
var len=list.length;
for(int i=0 ; i < len ; i++){
S.push(list.pop());
}
while(!S.isEmpty()){
  print(S.pop());
}
}