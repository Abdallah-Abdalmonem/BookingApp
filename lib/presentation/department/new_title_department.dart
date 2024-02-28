import 'package:booking_app/core/app_export.dart';

class NewTitleForDepartmentScreen extends StatefulWidget {
  NewTitleForDepartmentScreen({super.key, required this.department});
  String department;

  @override
  State<NewTitleForDepartmentScreen> createState() =>
      _NewTitleForDepartmentScreenState();
}

class _NewTitleForDepartmentScreenState
    extends State<NewTitleForDepartmentScreen> {
  TextEditingController titleController = TextEditingController();

  bool isTitleValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'اضافة ${widget.department} جديدة',
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              CustomTextFormFieldWithLabel(
                textLabel: 'العنوان',
                controller: titleController,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    isTitleValid = true;
                  } else {
                    isTitleValid = false;
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Checkbox(
                value: isTitleValid,
                onChanged: (value) {
                  setState(() {
                    isTitleValid = value!;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('اضافة'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
