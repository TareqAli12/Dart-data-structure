import '../lib/linked_list.dart';
void main(){
  LinkedList testlist = LinkedList();
  testlist.append(1);
  testlist.append(2);
  testlist.append(3);
  testlist.append(4);
  testlist.append(5);
  testlist.append(6);
  testlist.append(7);
  testlist.append(8);
  testlist.append(9);
  testlist.append(10);
  testlist.append(11);
  print('The Middle Node is ${testlist.findmidnode()}');
}