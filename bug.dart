```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    throw Exception('Simulated network error'); // Simulate network error
  } on TimeoutException catch (e) {
    print('Timeout Exception caught: $e');
    rethrow; // Re-throw to be handled by outer try-catch block
  } catch (e) {
    print('Exception caught: $e');
    // Handle exception and rethrow
    rethrow; 
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully');
  } on TimeoutException catch (e) {
    print('Outer TimeoutException: $e');
  } catch (e) {
    print('Outer Exception: $e');
  }
}
```