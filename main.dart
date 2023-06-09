import 'nodes/node.dart';
import 'nodes/nodeRELu.dart';
import 'nodes/nodeSigmoid.dart';
import 'ropes/rope.dart';
void main (){
  
  List<Rope> l = [];
  Node myn = Node(l, -1.0);
  Node myn2 = NodeRELu(l, -1.0);
  Node myn3 = NodeSigmoid(l, 20.0);

  myn.spy();
  myn2.spy();
  myn3.spy();
}