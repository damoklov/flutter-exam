class StateCounter {
  int total;

  int topLeftBox;
  int bottomLeftBox;
  int topRightBox;
  int bottomRightBox;

  StateCounter({
    this.topLeftBox = 0,
    this.bottomLeftBox = 0,
    this.topRightBox = 0,
    this.bottomRightBox = 0,
    this.total = 0,
  });
}

StateCounter state = StateCounter(topLeftBox: 0, bottomLeftBox: 0, bottomRightBox: 0, topRightBox: 0);