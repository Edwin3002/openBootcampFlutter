import "dart:async";

class CountControl {

  final _stremControl = StreamController<int>();

  int _counter = 0;

  Sink<int> get sink => _stremControl.sink;
  Stream<int> get stream => _stremControl.stream;

  void increment() {
    sink.add(++_counter);
  }

  void decrement() {
    sink.add(--_counter);
  }

  dispose() => _stremControl.close();
  
}
