final fetchPosts = """Future<http.Response> fetchPost() {
  return http.get(
    'https://jsonplaceholder.typicode.com/posts/1',
    // Send authorization headers to your backend
    headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here"},
  );
}""";