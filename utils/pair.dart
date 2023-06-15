class Pair<T> {
  
  T w, b;

  Pair(T w, T b)
    : w = w,
      b = b;

  @override
  String toString() {
    // TODO: implement toString
    return 'weight: $w  |  bias: $b';
  }
}