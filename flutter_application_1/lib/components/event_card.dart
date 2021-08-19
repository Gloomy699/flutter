import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/events.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isEnabled = true;

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Card(
      color: Colors.deepPurple[200],
      elevation: 10,
      shadowColor: Colors.deepPurple.shade400,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        enabled: _isEnabled,
        title: Text(
          widget.event.name,
          style: TextStyle(fontSize: 20.0),
        ),
        subtitle:
            Text("${widget.event.location} ${widget.event.startDateTime}"),
        leading: Icon(
          Icons.local_airport,
          size: 40.0,
          color: Colors.lightBlue[400],
        ),
        trailing: IconButton(
          icon: _isEnabled ? Icon(Icons.lock_outline) : Icon(Icons.lock_open),
          onPressed: () => setState(() => _isEnabled = !_isEnabled),
        ),
        onTap: () => print("${widget.event.name} - tap"),
        onLongPress: () => print("${widget.event.location} - longPress"),
      ),
    );
  }
}
