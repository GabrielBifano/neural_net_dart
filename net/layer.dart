import '../nodes/node.dart';

class Layer {

  int size;
  List<Node> layer = [];
  
  Layer(size)
    : size = size;
  
  void allocate(){
    for(int i = 0; i < size; i++){
      layer[i] = Node();
    }
  }
}