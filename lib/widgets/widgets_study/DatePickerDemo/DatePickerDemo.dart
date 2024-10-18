import 'package:flutter/material.dart';


class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
   DateTime? time ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePiker"),
      ),
      body: Column(
        children: [
          Center(
            child: OutlinedButton(onPressed: ()async{

            time =  await showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2099));
            setState(() {

            });

            }, child: Text(time==null?"上朝的日期":time.toString())),
          ),
          CalendarDatePicker(initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2099),
              onDateChanged: (DateTime stime){
                  setState(() {
                    time = stime;
                  });
              }
              ),
          InputDatePickerFormField(
            firstDate: DateTime.now(),
            lastDate: DateTime(2099),
            onDateSubmitted: (date){
              debugPrint(time.toString());
            },
          ),

        ],
      ),
    );
  }
}
