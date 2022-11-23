import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/alarm.dart';

// import '../alarm.dart';

class AddEditAlarmPage extends StatefulWidget {
  List<Alarm> AlarmList;
  final int? index;
  // コンストラクター
  AddEditAlarmPage(this.AlarmList, {this.index});

  @override
  State<AddEditAlarmPage> createState() => _AddEditAlarmPage();
}

class _AddEditAlarmPage extends State<AddEditAlarmPage> {
  TextEditingController controller = TextEditingController();
  DateTime selectedDate = DateTime.now();
  void initEditAlarm() {
    // 編集中の時の処理
    if (widget.index != null) {
      // null safetyの対応
      selectedDate = widget.AlarmList[widget.index!].alarmTime;
      controller.text = DateFormat("H:mm").format(selectedDate);
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    initEditAlarm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.highlight_off,
              color: Colors.white,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(right: 20),
              alignment: Alignment.center,
              child: Text("保存",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            onTap: () {
              Alarm alarm = Alarm(
                  alarmTime: DateTime(
                      2000, 1, 1, selectedDate.hour, selectedDate.minute));
              if (widget.index != null) {
                widget.AlarmList[widget.index!] = alarm;
              } else {
                widget.AlarmList.add(alarm);
              }

              Navigator.pop(context);
            },
          )
        ],
        backgroundColor: Color.fromRGBO(253, 160, 133, 1),
        title: Text("アラームを追加", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(253, 160, 133, 1),
              Color.fromRGBO(246, 211, 101, 1),
            ],
                stops: const [
              0.0,
              1.0,
            ])),

        // color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("時間",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Container(
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: controller,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(border: InputBorder.none),
                      readOnly: true,
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return CupertinoDatePicker(
                                initialDateTime: selectedDate,
                                mode: CupertinoDatePickerMode.time,
                                onDateTimeChanged: (newDate) {
                                  String time =
                                      DateFormat("H:mm").format(newDate);
                                  selectedDate = newDate;
                                  controller.text = time;
                                  setState(() {});
                                },
                              );
                            });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
