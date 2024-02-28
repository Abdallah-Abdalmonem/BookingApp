import 'package:booking_app/core/app_export.dart';

class AddBookingScreen extends StatefulWidget {
  const AddBookingScreen({super.key});

  @override
  State<AddBookingScreen> createState() => _AddBookingScreenState();
}

class _AddBookingScreenState extends State<AddBookingScreen> {
  List<String> title = [
    'اسم المستاجر',
    'رقم الهوية',
    'رقم الجوال',
    'اسم الشالية',
    'تاريخ الحجز',
    'مبلغ الخحز',
    'المبلغ المدفوع',
    'المبلغ المتبقي',
    'التأمين',
  ];

  List<TextEditingController> _controllers = [];

  List<TextInputType> textInputType = [
    TextInputType.text,
    TextInputType.number,
    TextInputType.phone,
    TextInputType.text,
    TextInputType.datetime,
    TextInputType.number,
    TextInputType.number,
    TextInputType.number,
    TextInputType.number,
  ];

  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    List.generate(
        title.length, (index) => _controllers.add(TextEditingController()));
    super.initState();
  }

  @override
  void dispose() {
    _controllers.forEach((element) {
      element.dispose();
    });
    super.dispose();
  }

  _calculateRemainingAmount() {
    if (_controllers[5].text.isEmpty) return;
    double reservationAmount = double.parse(_controllers[5].text);
    double amountPaid = double.parse(_controllers[6].text);
    double remainingAmount = reservationAmount - amountPaid;
    _controllers[7].text = remainingAmount.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('اضافة حجز جديد'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
          itemCount: title.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) => index == 4
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(selectedDate.toString().substring(0, 10)),
                      IconButton(
                        onPressed: () async {
                          selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2021),
                                lastDate: DateTime(2025),
                              ) ??
                              DateTime.now();
                          setState(() {
                            _controllers[index].text = selectedDate.toString();
                          });
                        },
                        icon: const Icon(Icons.calendar_today),
                      ),
                    ],
                  ),
                )
              : CustomTextFormFieldWithLabel(
                  textInputType: textInputType[index],
                  onChanged: (value) {
                    if (index == 5 || index == 6) {
                      _calculateRemainingAmount();
                    }
                  },
                  textLabel: title[index],
                  controller: _controllers[index]),
        ),
      ),
    );
  }
}
