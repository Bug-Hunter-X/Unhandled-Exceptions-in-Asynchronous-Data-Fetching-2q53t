# Unhandled Exceptions in Asynchronous Data Fetching (Dart)

This repository demonstrates a common error in Dart: insufficient error handling during asynchronous data fetching. The original code assumes a perfect scenario, leading to potential crashes due to missing data or malformed JSON responses.

The `bug.dart` file contains the flawed code.  The `bugSolution.dart` file provides a robust solution with comprehensive error handling.

## Bug

The primary issue is the lack of error checking. The code directly accesses `jsonData['someKey']` without verifying the existence of the key or handling potential `FormatException` during JSON decoding. This may cause a runtime error if the key is missing or the JSON is invalid.