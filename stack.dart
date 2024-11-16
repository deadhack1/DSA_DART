class Stack <E> {

//Defines a storage basically an array.
  Stack():_storage=<E>[];
  final List<E> _storage;

//This here is i guess for a print function to return something
  @override
String toString(){

//Its a very nice example of how to concatenate the strings.
  return '----Top---\n'
          '${_storage.reversed.join('\n')}'
          '\n------------';
          
}

//push operation for the stack
void push(E element)=>_storage.add(element);

//pop operation for stack.
E pop()=> _storage.removeLast();


  //Getters
  E get peek=>_storage.last;
  bool get isEmpty=> _storage.isEmpty;
  bool get isNotEmpty=>!isEmpty;

//the code gets us a method to concatenate existing iterable collection and convert it to a stack.
Stack.of(Iterable<E> elements): _storage=List<E>.of(elements);


}
