import 'dart:math';

import '../nodes/node.dart';
import '../nodes/nodeIn.dart';
import '../nodes/nodeOut.dart';
import '../utils/pair.dart';

class Cerebro { // Cerebro = Brain in portuguese

  final layers = {};
  Cerebro();



  /// [hlayers] is a [int] vector,
  /// each element representing the
  /// ammount of [nodes] inside each layer

  void setLayers(hlayers, ninputs, noutputs) { // TODO just hlayers is fine
    
    layers['input'] = <NodeInput>[];
    layers['output'] = <NodeOutput>[];
       
    for(int i = 0; i < noutputs; i++){
      layers['output'].add(NodeOutput());
    }
    {
      int a = hlayers.length - 1;
      hlayers[a] = <Node>[]; 
      for(int j = 0; j < hlayers[a]; j++){
        final wb = _generateWB(hlayers[a - 1]);
        hlayers[a].add(Node.set(hlayers['output'], wb));
      }
    }
    for(int i = hlayers.length - 2; i >= 0; i--){
      hlayers[i] = <Node>[];
      for(int j = 0; j < hlayers[i]; j++){
        hlayers[i].add(Node());
      }
    }
    for(int i = 0; i < ninputs; i++){
      layers['input'].add(NodeInput());
    }
  }

  // Internal process functions
  void forward(){
    // input.start();
  }

  void backward(){

  }

  // Inteface functions

  // uses the stored data to train
  void train() {
    // TODO logic here
  }

  // uses the stored data to validate its precision
  void validate() {
    // TODO logic here
  }

  // uses the stored data to find a 'squigle'
  void apply() {
    // TODO logic here
  }

  // Utils
  List<dynamic> _generateWB(size){
    List<dynamic> wb = [];
    for(int i = 0; i < size; i++){
      final w = Random().nextDouble() * 2 - 1;
      final b = Random().nextDouble() * 4 - 1;
      wb.add(Pair(w, b));
    }
    return wb;
  }
}