final websocketDependency = """web_socket_channel: ^1.0.9""";

final ioChannel =
    """final channel = IOWebSocketChannel.connect('ws://echo.websocket.org');""";

final streamBuilder = """StreamBuilder(
  stream: widget.channel.stream,
  builder: (context, snapshot) {
    return Text(snapshot.hasData ? '\${snapshot.data}' : '');
  },
);""";

final dataToServer = """channel.sink.add('Hello!');""";

final closingChannel = """channel.sink.close();""";
