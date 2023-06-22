import 'node.dart';

class NodeInput extends Node {

  NodeInput.set(next, nextWB): super.set(next, nextWB);

  @override
  void call(input, weight, bias) {
    for(int i = 0; i < next.length; i++){
      final node = next[i];
      final params = nextWB[i];
      node.call(input, params.w, params.b);
    }
  }
}