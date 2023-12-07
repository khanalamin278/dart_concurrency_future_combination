/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_concurrency_future_combination_base.dart';

import 'dart:async';

/*
Practice Question 3: Future Combination
Task:
Implement a function combineFutures that takes a 
list of Future<int> and returns a Future<int> that 
is the result of combining these futures in some way 
(e.g., summing the results).
*/

Future<int> combineFutures(List<Future<int>> listOfFutures) async {
  int sum = 0;

  for (var x in listOfFutures) {
    sum += await x;
  }

  return sum;
}
