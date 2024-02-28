import 'package:booking_app/core/app_export.dart';

class DepartmentScreen extends StatelessWidget {
  const DepartmentScreen({
    super.key,
    required this.department,
    required this.departmentTitle,
  });

  final String department;
  final String departmentTitle;
  @override
  Widget build(BuildContext context) {
    double srcHeight = MediaQuery.of(context).size.height;
    double srcWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AddBookingScreen(),
            ));
          },
          child: Icon(Icons.add)),
      appBar: AppBar(
        actions: [
          Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 10))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        NewTitleForDepartmentScreen(department: department),
                  ));
                },
                child: Text(
                  'اضافة ${departmentTitle}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              // ElevatedButton(
              //   style: ButtonStyle(
              //       backgroundColor: MaterialStatePropertyAll(Colors.green),
              //       padding: MaterialStatePropertyAll(
              //           EdgeInsets.symmetric(horizontal: 10))),
              //   onPressed: () {
              //     Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => AddBookingScreen(),
              //     ));
              //   },
              //   child: Text(
              //     'اضافة حجز',
              //     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              //   ),
              // ),
            ],
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: const EdgeInsets.all(10),
                width: srcWidth,
                // height: srcHeight * .3,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'اسم المستاجر : عبدالله',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(height: srcHeight * .04),
                                  Text('رقم الجوال : 01032523437',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                  SizedBox(height: srcHeight * .04),
                                  Text('اسم حجز :\t ${departmentTitle}  4',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                ],
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => EditBookingScreen(
                                            bookingModel:
                                                AppSrings.bookingModel),
                                      ));
                                    },
                                    child: Icon(
                                      Icons.edit_document,
                                      color: Colors.green,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  InkWell(
                                    onTap: () async {
                                      // Printer printer = Printer();
                                      // var a = Printer.printContent(
                                      //         content: AppSrings.bookingModel
                                      //             .toMap()
                                      //             .toString())
                                      //     .then((value) => print('*************$value'));
                                      // print('@@@@@@@$a');
                                      // // await AppSrings.printer.print(AppSrings.bookingModel);
                                    },
                                    child: Icon(
                                      Icons.print,
                                      color: Colors.blue,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
