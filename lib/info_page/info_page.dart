import 'package:flutter/material.dart';

const _GITHUB_IMAGE_URL = "images/github_image.png";
const _TECHNOLOGIES = ['Flutter', 'Dart', 'Android', 'Java', 'Kotlin', 'Node'];

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
      ),
      backgroundColor: Colors.white,
      body: _body,
    );
  }

  Widget get _body {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _profileImageWidget,
            _nameWidget,
            SizedBox(height: 8.0),
            _infoWidget,
            SizedBox(height: 16.0),
            _technologyWidget,
            SizedBox(height: 32.0),
            _socialLinks,
          ],
        ),
      ),
    );
  }

  Widget get _profileImageWidget {
    return Container(
      height: 200.0,
      width: 200.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(_GITHUB_IMAGE_URL),
        ),
      ),
    );
  }

  Widget get _nameWidget {
    return Text(
      'Gurleen Sethi',
      style: TextStyle(
        fontSize: 24.0,
      ),
    );
  }

  Widget get _infoWidget {
    return Text(
      'Software Developer',
      style: TextStyle(),
    );
  }

  Widget get _technologyWidget {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      alignment: WrapAlignment.center,
      children: _TECHNOLOGIES.map(
        (item) {
          return Chip(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            elevation: 2.0,
            backgroundColor: Colors.blue,
            label: Text(
              item,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  Widget get _socialLinks {
    return Column(
      children: <Widget>[

      ],
    );
  }
}
