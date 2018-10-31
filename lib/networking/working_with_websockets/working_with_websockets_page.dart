import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';
import 'package:flutter_cookbook/networking/working_with_websockets/working_with_websockets_code.dart'
    as Code;

class WorkingWithWebSocketsPage extends StatefulWidget {
  @override
  WorkingWithWebSocketsPageState createState() {
    return new WorkingWithWebSocketsPageState();
  }
}

class WorkingWithWebSocketsPageState extends State<WorkingWithWebSocketsPage> {
  WebSocketChannel _channel;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _channel = IOWebSocketChannel.connect('ws://echo.websocket.org');
  }

  @override
  void dispose() {
    _channel?.sink?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Working with webockets',
        link: 'https://flutter.io/cookbook/networking/web-sockets/',
        codes: [
          CodeModel(
            title: 'Websocket package',
            description: 'Set up the websocket channel package.',
            code: Code.websocketDependency,
          ),
          CodeModel(
            title: 'Create channel',
            description: 'Set up the websocket channel.',
            code: Code.ioChannel,
          ),
          CodeModel(
            title: 'Listening to data',
            description: 'Listening to new data with StreamBuilder.',
            code: Code.streamBuilder,
          ),
          CodeModel(
            title: 'Sending data',
            description: 'Sending data to server.',
            code: Code.dataToServer,
          ),
          CodeModel(
            title: 'Closing Channel',
            description: 'Closing channel when done.',
            code: Code.closingChannel,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.blue,
                  accentColor: Colors.blue,
                  hintColor: Colors.blue,
                ),
                child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Send a message',
                  ),
                ),
              ),
            ),
            StreamBuilder(
              stream: _channel.stream,
              builder: (context, snapshot) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(snapshot.hasData ? '${snapshot.data}' : ''),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sendMessage,
        tooltip: 'Send Message',
        child: Icon(Icons.send),
      ),
    );
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      _channel.sink.add(_controller.text);
    }
  }
}
