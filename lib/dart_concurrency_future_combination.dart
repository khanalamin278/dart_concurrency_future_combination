/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_concurrency_future_combination_base.dart';

/*
Practice Question 3: Future Combination
Task:
Implement a function combineFutures that takes a list of Future<int> 
and returns a Future<int> that is the result of combining these 
futures in some way (e.g., summing the results).
*/

import 'dart:async';

Future<int> combineFutures(List<Future<int>> futures) async {
  int sum = 0;

  for (var future in futures) {
    sum += await future;
  }

  return sum;
}

// Future<int> combineFutures(List<Future<int>> futures) async {
//   List<int> results = await Future.wait(futures);

//   int sum = results.fold(0, (acc, value) => acc + value);


//   return sum;
// }
