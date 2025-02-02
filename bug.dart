```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing data from JSON, this can throw an exception
      final String data = jsonData['someKey'];
      print('Data: $data');
    } else {
      throw Exception('Failed to load data');
    } 
  } catch (e) {
    //Error handling is limited
    print('Error: $e'); 
  }
}
```