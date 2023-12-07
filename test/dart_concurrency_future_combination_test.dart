import 'package:dart_concurrency_future_combination/dart_concurrency_future_combination.dart';
import 'package:test/test.dart';

void main() {
  test('combineFutures combines multiple futures into a single future',
      () async {
    var futures = [Future.value(1), Future.value(2), Future.value(3)];
    // Assuming the function sums the values of the futures
    expect(await combineFutures(futures), equals(6));
  });
}
