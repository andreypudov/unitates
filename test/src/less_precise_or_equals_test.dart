import 'package:flutter_test/flutter_test.dart';

import 'less_precise_or_equals.dart';

void main() {
  test("should match", () {
    expect(1.1, lessPreciseOrEquals(1.0));
    expect(1.15, lessPreciseOrEquals(1.1));
    expect(1.01, lessPreciseOrEquals(1.01));
    expect(1.012, lessPreciseOrEquals(1.01));

    expect(0.00002539998628400741, lessPreciseOrEquals(2.54e-5));
    expect(0.000013714900141812068, lessPreciseOrEquals(1.3715e-5));
    expect(0.5399568034557235, lessPreciseOrEquals(0.539957));
  });

  test("should mismatch", () {
    expect(1.25, isNot(lessPreciseOrEquals(1.1)));
  });
}