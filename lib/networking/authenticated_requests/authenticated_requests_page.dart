import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_cookbook/networking/authenticated_requests/authenticated_requests_code.dart'
    as Code;

class AuthenticatedRequestsPage extends StatelessWidget {
  Future<Post> fetchPost() async {
    final response = await http.get(
        'https://jsonplaceholder.typicode.com/posts/1',
        headers: {"authorization": "Basic your_api_token_here"});

    if (response.statusCode == 200) {
      return Post.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load post.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        title: 'Fetch data from internet',
        context: context,
        link: 'https://flutter.io/cookbook/networking/authenticated-requests/',
        codes: [
          CodeModel(
            title: 'Add headers',
            description: 'Add authorization header to the get requests.',
            code: Code.fetchPosts,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Opacity(
                opacity: 0.5,
                child: Text(
                  'This example builds on top of\n\'Fetch data from the internet\'',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 40.0),
            FutureBuilder<Post>(
              future: fetchPost(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    snapshot.data.title,
                    textAlign: TextAlign.center,
                  );
                } else if (snapshot.hasError) {
                  return Text(
                    '${snapshot.error}',
                    textAlign: TextAlign.center,
                  );
                }

                return CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
