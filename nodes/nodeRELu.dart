import 'dart:math';
import 'node.dart';

class NodeRELu extends Node{

  @override
  double activate(double input) => max(0, input);
}