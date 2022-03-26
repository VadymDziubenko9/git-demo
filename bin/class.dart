class Square {
  final int _side;

  int get length => _side;

  int get width => _side;

  Square(this._side);

  @override
  String toString() {
    return 'length: $length width: $width';
  }
}

void main() {
  var squareParameters = Square(30);
  final resultOfMultiplication =
      squareParameters.width * squareParameters.width;
  print(resultOfMultiplication);
  print(squareParameters);
<<<<<<< Updated upstream
  print('new commit message');
=======
  print('new message');
>>>>>>> Stashed changes
}

