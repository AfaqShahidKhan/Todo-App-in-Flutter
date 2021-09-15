class Task {
  final String name;
  bool isDone;

  Task({this.name = "IR", this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
