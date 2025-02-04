# Uncommon Dart Error: Nested try-catch with Rethrow

This example showcases a scenario where a nested `try-catch` block in Dart handles exceptions. The inner `catch` block rethrows the exception, allowing a more specific handling in the outer `try-catch` block. This is useful when you want to handle different exceptions differently based on the type or context of the exception.

The `fetchData` function simulates an asynchronous operation that might throw an exception. It uses nested `try-catch` blocks to handle `TimeoutException` and other exceptions.

The `main` function demonstrates the usage of `fetchData` and how it handles exceptions thrown by `fetchData`. The outer `try-catch` block handles any exceptions not handled by the inner block, including `TimeoutException`.

This pattern helps achieve robust error handling for asynchronous operations in Dart.