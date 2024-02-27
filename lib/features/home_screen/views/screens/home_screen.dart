import 'package:booking_app/constants/app_strings.dart';
import 'package:booking_app/features/home_screen/views/widgets/my_custom_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.logout,
          color: Colors.red,
        ),
        centerTitle: true,
        title: const Text(
          'لوحة التحكم',
          style: TextStyle(
              letterSpacing: 1,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            // const CustomAppBar(),
            SizedBox(
              // height: screenHeight * 0.32,
              child: MyCustomGridView(
                colorsList: AppSrings.colorsList,
                myIconsList: AppSrings.myIconsList,
                titleList: AppSrings.titleDepartmentList,
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(
                // height: screenHeight,
                // child: myCustomCalendarPicker(),
                ),
          ],
        ),
      ),
    );
  }
}
