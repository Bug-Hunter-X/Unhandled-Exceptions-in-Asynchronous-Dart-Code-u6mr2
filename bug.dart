```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data from the JSON
      print(jsonData['key']);
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('An error occurred: $e');
  }
}
```