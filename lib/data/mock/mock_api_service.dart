class MockApiService {
  Future<Map<String, dynamic>> fetchJoke() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
    return {'format': 'JSON', 'type': 'single', 'joke': 'Doneeeeeeeee'};
  }
}
