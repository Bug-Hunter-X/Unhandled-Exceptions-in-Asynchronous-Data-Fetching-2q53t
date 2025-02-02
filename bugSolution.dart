```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData is Map && jsonData.containsKey('someKey')) {
        return jsonData['someKey'];
      } else {
        print('Error: JSON data does not contain the required key.');
        return null;
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null; // Or throw a custom exception
    } 
  } on FormatException catch (e) {
    print('Error: Invalid JSON format: $e');
    return null; // Handle JSON decoding errors
  } on http.ClientException catch (e) {
    print('Error: Network request failed: $e');
    return null;
  } catch (e) {
    print('An unexpected error occurred: $e');
    return null; // Catch any other unexpected errors
  }
}
```