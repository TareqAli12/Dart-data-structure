class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
  @override
String toString() {
  if (next == null) return '$value';
  return '$value -> ${next.toString()}';
}

}

class LinkedList<E> extends Iterable{
  Node<E>? head;
  Node<E>? tail;
  @override
  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
void push(E value) {
  head = Node(value: value, next: head);
  tail ??= head;
}
void append(E value) {
  // 1
  if (isEmpty) {
    push(value);
    return;
  }

  // 2
  tail!.next = Node(value: value);

  // 3
  tail = tail!.next;
}
Node<E>? nodeAt(int index) {
  // 1
  var currentNode = head;
  var currentIndex = 0;

  // 2
  while (currentNode != null && currentIndex < index) {
    currentNode = currentNode.next;
    currentIndex += 1;
  }
  return currentNode;
}
Node<E> insertAfter(Node<E> node, E value) {
  // 1
  if (tail == node) {
    append(value);
    return tail!;
  }

  // 2
  node.next = Node(value: value, next: node.next);
  return node.next!;
}
E? pop() {
  final value = head?.value;
  head = head?.next;
  if (isEmpty) {
    tail = null;
  }
  return value;
}
E? removeLast() {
  // 1
  if (head?.next == null) return pop();

  // 2
  var current = head;
  while (current!.next != tail) {
    current = current.next;
  }

  // 3
  final value = tail?.value;
  tail = current;
  tail?.next = null;
  return value;
}
E? removeAfter(Node<E> node) {
  final value = node.next?.value;
  if (node.next == tail) {
    tail = node;
  }
  node.next = node.next?.next;
  return value;
}
@override
Iterator<E> get iterator => _LinkedListIterator(this);

void reverselinkedlist(){
  if(head==null){
    return;
  }
  var current=head;
  var prev=null;
  var next=null;
  while(current!=null){
    next=current.next;
    current.next=prev;
    prev=current;
    current=next;
    
  }
  head=prev;
}
E? findmidnode(){
  if(head==null){
    return null;
  }
  var slow=head;
  var fast=head;
  while(fast?.next!=null){
    slow=slow?.next;
    fast=fast?.next?.next;
  }
  return slow?.value;
  }

void removealloccurrences(int number){
  if(head==null){
    return;
  }else if(head==tail && head?.value==number){
    head=null;
  }

  var current=head?.next;
  var prev=head;
  while(current!=null){
    if(current.value==number){
      prev?.next=current.next;
      current.next=null;
      current=prev?.next;
    }else{
      current=current.next;
      prev=prev?.next;
    }
    if(head?.value==number){
      head=head?.next;
    }
  }

}



}
class _LinkedListIterator<E> implements Iterator<E> {
  _LinkedListIterator(LinkedList<E> list) : _list = list;
  final LinkedList<E> _list;
  Node<E>? _currentNode;

@override
E get current => _currentNode!.value;
bool _firstPass = true;

@override
bool moveNext() {
  // 1
  if (_list.isEmpty) return false;

  // 2
  if (_firstPass) {
    _currentNode = _list.head;
    _firstPass = false;
  } else {
    _currentNode = _currentNode?.next;
  }

  // 3
  return _currentNode != null;
}

}

