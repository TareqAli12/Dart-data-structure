import '../lib/stack.dart';

void main(){
  String s = "h((e))llo(world)()";
  if(balanced(s)){
    print('Parantheses are Balanced');
  }else{
    print('Parantheses are not Balanced');
  }

}

bool balanced(String a){
  Stack<String> S = Stack();
  for(int i = 0 ; i < a.length ; i++){
    if (a[i]=='('||a[i]=='['||a[i]=='{'){
      S.push(a[i]);
    }else if (a[i]==')'||a[i]==']'||a[i]=='}'){
      if(S.isEmpty()||!isaPair(S.top()!, a[i])){
      return false;
    }else{
      S.pop();
    }
    }
    
  }
  return S.isEmpty();

}
bool isaPair(String left, String right){
  if(left=='(' && right==')'){
    return true;
  }
  else if(left=='{' && right=='}'){
    return true;
  }
  else if(left=='[' && right==']'){
    return true;
  }
  return false;
}