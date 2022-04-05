class DivisionByZero {
  @override
  String toString() {
    return 'Forbidden division by zero';
  }
}

class IncorrectIntegerString {
  final String incorrectString;

  IncorrectIntegerString(this.incorrectString);

  @override
  String toString() {
    return 'incorrect value: $incorrectString';
  }
}

double? division(String a, String b) {
  final aa = int.tryParse(a);
  final bb = int.tryParse(b);

  if (bb == 0) {
    throw DivisionByZero();
  }

  if (aa == null) {
    throw IncorrectIntegerString(a);
  }

  if (bb == null) {
    throw IncorrectIntegerString(b);
  }

  return aa / bb;
}

void main() {
  try {
    final div = division('0f', '0');
    print(div);
  } on DivisionByZero catch (error) {
    print(error);
  } on IncorrectIntegerString catch (error) {
    print(error);
  } catch (error) {
    print(error);
    print(error);
  }
}
