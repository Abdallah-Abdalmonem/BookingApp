import 'package:booking_app/core/app_export.dart';
import 'package:booking_app/presentation/whole_calendar_page/app_imports.dart';

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
              child: MyCustomGridView(
                colorsList: AppSrings.colorsList,
                myIconsList: AppSrings.myIconsList,
                titleList: AppSrings.titleDepartmentList,
              ),
            ),
            SizedBox(
                // height: screenHeight,
                // child: myCustomCalendarPicker(),
                ),
            Container(height: screenHeight * 0.75, child: CalendarPage()),
          ],
        ),
      ),
    );
  }
}
