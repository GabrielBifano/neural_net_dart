import 'dart:math';
import 'node.dart';

class NodeRELu extends Node{
  
  NodeRELu(next, input) : super(next, input);

  @override
  double activate(double input) => max(0, input);
}