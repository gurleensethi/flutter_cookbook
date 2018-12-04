import 'package:flutter/material.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/networking/parsing_json_background/parsing_json_background_code.dart'
    as Code;

class Photo {
  final int id;
  final String title;
  final String thumbnailUrl;

  Photo({
    this.id,
    this.title,
    this.thumbnailUrl,
  });

  factory Photo.fromJSON(Map<String, dynamic> json) {
    return Photo(
      id: json['id'] as int,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}

Future<List<Photo>> fetchPhotos() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/photos');

  return compute(parsePhotos, response.body);
}

List<Photo> parsePhotos(String responseBody) {
  List<dynamic> parsed = jsonDecode(responseBody);

  return parsed.map((json) => Photo.fromJSON(json)).toList();
}

class ParsingJsonBackgroundPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ParsingJsonBackgroundPageState();
  }
}

class ParsingJsonBackgroundPageState extends State<ParsingJsonBackgroundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Parsing Json in Background',
        link: 'https://flutter.io/docs/cookbook/networking/background-parsing',
        codes: [
          CodeModel(
            code: Code.httpDependency,
            title: "Add the http package"
          ),
          CodeModel(
            code: Code.photoClassModel,
            title: "Define the photo model",
            description: "Model class to hold the photo data fetched."
          ),
          CodeModel(
            code: Code.parsePhotos,
            title: "Parse the response from network call"
          ),
          CodeModel(
            code: Code.workingOnIsolate,
            title: "Work on different isolate",
            description: "Use the compute function to execute the parsing function on different isolate.",
          ),
        ],
      ),
      body: FutureBuilder<List<Photo>>(
        future: fetchPhotos(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Unable to load photos. Please try again,',
                textAlign: TextAlign.center,
              ),
            );
          } else {
            if (snapshot.hasData) {
              return PhotoList(photos: snapshot.data);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }
        },
      ),
    );
  }
}

class PhotoList extends StatelessWidget {
  final List<Photo> photos;

  PhotoList({this.photos});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Image.network(photos[index].thumbnailUrl);
      },
    );
  }
}
