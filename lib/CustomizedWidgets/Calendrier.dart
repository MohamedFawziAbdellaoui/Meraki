import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendrier extends StatelessWidget {
  CalendarController _controller = CalendarController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 1 / 3,
      height: screenSize.height,
      decoration: BoxDecoration(
          color: Colors.blueAccent[100],
          backgroundBlendMode: BlendMode.colorBurn),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: screenSize.width * .01, top: screenSize.width * .01),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  foregroundImage: AssetImage("images/avatar.jfif"),
                  radius: 35,
                ),
                SizedBox(width: screenSize.width * .01),
                Text(
                  "User name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height * .2,
          ),
          Container(
            height: screenSize.height * .45,
            child: Stack(
              children: <Widget>[
                SfCalendar(
                  controller: _controller,
                  headerStyle: CalendarHeaderStyle(
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  viewHeaderStyle: ViewHeaderStyle(
                    backgroundColor: Colors.black,
                    dayTextStyle: TextStyle(
                        color: Colors.grey, fontSize: 18, wordSpacing: 2),
                  ),
                  todayHighlightColor: Colors.blue.withOpacity(0.5),
                  allowViewNavigation: false,
                  view: CalendarView.month,
                  firstDayOfWeek: 1,
                  todayTextStyle: TextStyle(
                    fontSize: 17,
                  ),
                  monthViewSettings: MonthViewSettings(
                    monthCellStyle: MonthCellStyle(
                      backgroundColor: Colors.black,
                      trailingDatesBackgroundColor: Colors.black,
                      leadingDatesBackgroundColor: Colors.black,
                      todayBackgroundColor: Colors.black,
                      textStyle: TextStyle(
                        fontSize: 17,
                      ),
                      trailingDatesTextStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                      leadingDatesTextStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: screenSize.width * .007,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _controller.backward!();
                      }),
                ),
                Positioned(
                  right: screenSize.width * .007,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _controller.forward!();
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
