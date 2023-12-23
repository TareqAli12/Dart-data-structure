import '../lib/linked_list.dart';
void main(){
  LinkedList testlist = LinkedList();
  testlist.append(1);
  testlist.append(3);
  testlist.append(3);
  testlist.append(3);
  testlist.append(4);
  print('Before:');
  print(testlist);
  testlist.removealloccurrences(3);
  print('After:');
  print(testlist);
}