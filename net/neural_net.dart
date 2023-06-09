

class Cerebro<T> { // Cerebro = Brain in portuguese

  int hiddenSize = 0;
  T dataStream;

  Cerebro(T data)
    : dataStream = data;

  // change the data stored at the neural network
  void feed(T dataset) => dataStream = dataset;

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
}