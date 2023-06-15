import 'node.dart';

class NodeInput extends Node {

  @override
  void call(input, weight, bias) {
    for(int i = 0; i < next.length; i++){
      final node = next[i];
      final params = nextWB[i];
      node.call(input, params.w, params.b);
    }
  }
}