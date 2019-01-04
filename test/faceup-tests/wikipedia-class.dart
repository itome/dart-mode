// Import the math library to get access to the sqrt function.
import 'dart:math' as math;

// Create a class for Point.
class Point {

  // Final variables cannot be changed once they are assigned.
  // Create two instance variables.
  final num x, y;

  // A constructor, with syntactic sugar for setting instance variables.
  // The constructor has two mandatory parameters
  Point(this.x, this.y);

  // A named constructor with an initializer list.
  Point.origin()
      : x = 0,
        y = 0;

  // A method.
  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return math.sqrt(dx * dx + dy * dy);
  }

  // Example of Operator Overloading
  Point operator +(Point other) => Point(x + other.x, y + other.y);
  // When you Instantiating a class such as Point, in Dart 2+, new is 
  // an optional word
}

// All Dart programs start with main().
void main() {
  // Instantiate point objects.
  var p1 = Point(10, 10);
  var p2 = Point.origin();
  var distance = p1.distanceTo(p2);
  print(distance);
}
