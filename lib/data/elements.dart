class StateCounter {
  int total;
  int memoryCount;

  List<bool> pressedButtons = [false, false, false, false];

  int topLeftButton;
  int topRightButton;
  int bottomRightButton;
  int bottomLeftButton;

  StateCounter({
    this.total = 0,
    this.memoryCount = 0,

    this.topLeftButton = 0,
    this.topRightButton = 0,
    this.bottomLeftButton = 0,
    this.bottomRightButton = 0,
  });
}

StateCounter state = StateCounter(topLeftButton: 0, bottomLeftButton: 0, bottomRightButton: 0, topRightButton: 0, memoryCount: 0);
