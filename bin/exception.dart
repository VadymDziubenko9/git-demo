class DivisionByZero {
  @override
  String toString() {
    return 'forbidden a division by zero';
  }
}

class IncorrectInput {
  @override
  String toString() {
    return 'incorrect input';
  }
}

double division(String a, String b) {
  final aa = int.tryParse(a);
  final bb = int.tryParse(b);

  if (aa == null || bb == null) {
    throw IncorrectInput();
  }

  if (bb == 0) {
    throw DivisionByZero();
  }

  return aa / bb;
}

void main() {
  try {
    final div = division('10', '0');
    print(div);
  } catch (e) {
    print(e);
  }

}
