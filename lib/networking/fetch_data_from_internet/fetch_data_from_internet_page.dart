import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_cookbook/networking/fetch_data_from_internet/fetch_data_from_internet_code.dart'
    as Code;

class FetchDataFromInternetPage extends StatelessWidget {
  Future<Post> fetchPost() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/posts/1');

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
        link: 'https://flutter.io/cookbook/networking/fetch-data/',
        codes: [
          CodeModel(
            title: 'Add Imports',
            description: 'Import the appropriate libraries.',
            code: Code.imports,
          ),
          CodeModel(
            title: 'Post class',
            description: 'Define the Post data class.',
            code: Code.postClass,
          ),
          CodeModel(
            title: 'Fetch posts',
            description: 'Define a function to fetch the posts using http.',
            code: Code.fetchPost,
          ),
          CodeModel(
            title: 'FutureBuilder',
            description:
                'Use FutureBuilder Widget to display the loaded content.',
            code: Code.futureBuilder,
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder<Post>(
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
