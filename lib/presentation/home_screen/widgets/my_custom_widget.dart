import 'package:booking_app/core/app_export.dart';

class MyCustomGridView extends StatelessWidget {
  List<Color> colorsList;
  List<Icon> myIconsList;
  List<String> titleList;
  // void Function()? onTap;
  MyCustomGridView({
    required this.colorsList,
    required this.myIconsList,
    required this.titleList,
    // required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: AppSrings.titleDepartmentList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (index == 6) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmployeeScreen(),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DepartmentScreen(
                      department: AppSrings.departmentList[index],
                      departmentTitle: AppSrings.titleDepartmentList[index],
                    ),
                  ),
                );
              }
            },
            child: Card(
              child: Container(
                // alignment: Alignment.center,
                color: colorsList[index],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myIconsList[index],
                    Text(
                      titleList[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
