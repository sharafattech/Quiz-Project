import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TimeOfDay timeofday = TimeOfDay(hour: 10, minute: 32);

  void _showtimepicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      if (value != null) {
        timeofday = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${timeofday.format(context)}',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                onPressed: _showtimepicker,
                child: const Text(
                  'Pick Time',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
