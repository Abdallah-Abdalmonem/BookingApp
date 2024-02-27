// import 'package:booking_app/widgets/custom_appbar.dart';
// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
//   List<Color> colors = [
//     Colors.green,
//     Colors.orange,
//     Colors.blue,
//     Colors.red,
//     Colors.blueAccent,
//     Colors.lightGreen,
//     // Colors.pink,
//     // Colors.teal,
//     // Colors.brown,
//     // Colors.grey,
//   ];

//   List<String> title = [
//     'اضافة حجز',
//     'تعديل حجز',
//     'طباعة حجز',
//     'الحجوزات',
//     'الشاليهات',
//     'اضافة مستخدم',
//   ];
//   List<Icon> myIcons = [
//     Icon(
//       Icons.add_box_sharp,
//       color: Colors.grey[200],
//     ),
//     Icon(
//       Icons.edit_calendar_rounded,
//       color: Colors.grey[200],
//     ),
//     Icon(
//       Icons.print,
//       color: Colors.grey[200],
//     ),
//     Icon(
//       Icons.topic_rounded,
//       color: Colors.grey[200],
//     ),
//     Icon(
//       Icons.blinds_closed_outlined,
//       color: Colors.grey[200],
//     ),
//     Icon(
//       Icons.person_add_alt_1,
//       color: Colors.grey[200],
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     double ScreenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Admin Panel'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           physics: const NeverScrollableScrollPhysics(),
//           child: Column(
//             children: [
//               Column(
//                 children: [
//                   const CustomAppBar(),
//                   SizedBox(
//                     height: screenHeight * 0.5,
//                     child: Column(
//                       children: [
//                         const Divider(
//                           color: Colors.black,
//                           thickness: 1,
//                         ),
//                         myCustomGridView(
//                             colors: colors, myIcons: myIcons, title: title),
//                       ],
//                     ),
//                   ),
//                   const Divider(
//                     color: Colors.black,
//                     thickness: 1,
//                   ),
//                   SizedBox(
//                       height: screenHeight * 0.5,
//                       child: myCustomCalendarPicker()),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class myCustomCalendarPicker extends StatefulWidget {
//   myCustomCalendarPicker({
//     super.key,
//   });

//   @override
//   State<myCustomCalendarPicker> createState() => _myCustomCalendarPickerState();
// }

// class _myCustomCalendarPickerState extends State<myCustomCalendarPicker> {
//   CalendarFormat _calendarFormat = CalendarFormat.month;

//   DateTime _focusedDay = DateTime.now();

//   DateTime? _selectedDay;

//   _onDaySelected(selectedDay, focusedDay) {
//     // if (!isSameDay(_selectedDay, selectedDay)) {
//     //   // Call `setState()` when updating the selected day
//     setState(() {
//       _selectedDay = selectedDay;
//       _focusedDay = focusedDay;
//     });
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: TableCalendar(
//         headerStyle: const HeaderStyle(
//           titleCentered: true,
//           formatButtonVisible: false,
//         ),
//         firstDay: DateTime.now().toUtc(),
//         lastDay: DateTime.utc(2040),
//         focusedDay: _focusedDay,
//         calendarFormat: _calendarFormat,
//         selectedDayPredicate: (day) {
//           print('😂');
//           return isSameDay(_selectedDay, day);
//         },
//         onDaySelected: _onDaySelected,
//         onFormatChanged: (format) {
//           if (_calendarFormat != format) {
//             // Call `setState()` when updating calendar format
//             setState(() {
//               print('///');
//               _calendarFormat = format;
//               print(_calendarFormat.toString());
//             });
//           }
//         },
//         onPageChanged: (focusedDay) {
//           // No need to call `setState()` here
//           _focusedDay = focusedDay;
//           print('++');
//           print(focusedDay.toString());
//         },
//       ),
//     );
//   }
// }

// class myCustomGridView extends StatelessWidget {
//   const myCustomGridView({
//     super.key,
//     required this.colors,
//     required this.myIcons,
//     required this.title,
//   });

//   final List<Color> colors;
//   final List<Icon> myIcons;
//   final List<String> title;

//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: GridView.builder(
//         shrinkWrap: true,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//         ),
//         itemBuilder: (context, index) {
//           return Card(
//             child: Container(
//               // alignment: Alignment.center,
//               color: colors[index],
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   myIcons[index],
//                   Text(title[index],
//                       style: TextStyle(fontSize: 20, color: Colors.white)),
//                 ],
//               ),
//             ),
//           );
//         },
//         itemCount: title.length,
//       ),
//     );
//   }
// }
