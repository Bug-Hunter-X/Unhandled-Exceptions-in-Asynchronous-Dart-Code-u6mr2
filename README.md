# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: neglecting to handle exceptions during asynchronous operations.  The example shows how to fetch data from an API and properly handle both success and failure scenarios.

The `bug.dart` file contains code that does not fully handle potential exceptions, while `bugSolution.dart` provides a corrected version.

## Bug Description

The original code (`bug.dart`) lacks robust exception handling.  If the API request fails (due to network issues or other reasons), the error is only printed to the console, potentially crashing the application or resulting in unexpected behavior.

## Solution

The solution (`bugSolution.dart`) addresses this by wrapping the asynchronous operation in a `try-catch` block.  This ensures that errors are caught, logged, and handled appropriately, preventing application crashes.  The `rethrow` keyword allows the exception to be handled at a higher level if needed.

## How to Run

1. Clone this repository.
2. Navigate to the project directory in your terminal.
3. Run the following command:
   `dart bug.dart` (for the buggy code)
   `dart bugSolution.dart` (for the corrected code)

Observe the output in the console to see the difference in how exceptions are handled.