import 'package:flutter/material.dart';



class TimeDark extends StatefulWidget {
  static const routeName = '/TimeDark';
  @override
  _TimeDarkState createState() => _TimeDarkState();
}

class _TimeDarkState extends State<TimeDark> {

  //for select Time now
  TimeOfDay _selectedTime;

  TextEditingController _pickTimeController;
  String _timeText='--:--';


  @override
  void initState() {
    super.initState();
    final DateTime now = DateTime.now();
    _selectedTime = TimeOfDay(hour: now.hour, minute: now.minute);
    _pickTimeController=TextEditingController(text: _timeText);
  }


  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(right: 50.0, left: 50.0),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                elevation: 5,
                color: Colors.redAccent,

                child: new Text(
                  'Pick Time',
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () async{
                  final time = await showTimePicker(
                    context: context,
                    initialTime: _selectedTime,
                    builder: (BuildContext context, Widget child) {
                      return Theme(
                        data: ThemeData(
                          primaryColor: Colors.black,
                          accentColor: Colors.black54,
                          buttonBarTheme: ButtonBarThemeData(
                            buttonTextTheme: ButtonTextTheme.accent,
                          ),
                        ),
                        child: child,
                      );

                    },
                  );
                  MaterialLocalizations localizations = MaterialLocalizations.of(context);
                  String formattedTime = localizations.formatTimeOfDay(time,
                      alwaysUse24HourFormat: false);
                  if (formattedTime != null) {
                    setState(() {
                      _timeText = formattedTime;
                      _pickTimeController.text=_timeText;
                    });
                  }
                },
              ),
            ),


            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                style: TextStyle(color: Colors.red),
                cursorColor: Colors.redAccent ,
                controller: _pickTimeController,
                readOnly: true,
              ),
            ),
          ],
        )
    );
  }
}
