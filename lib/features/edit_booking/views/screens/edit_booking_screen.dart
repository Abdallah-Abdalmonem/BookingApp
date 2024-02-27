import 'package:booking_app/models/booking_model.dart';
import 'package:booking_app/widgets/custom_textformfield_with_label.dart';
import 'package:flutter/material.dart';

class EditBookingScreen extends StatefulWidget {
  EditBookingScreen({super.key, required this.bookingModel});
  final BookingModel bookingModel;

  @override
  State<EditBookingScreen> createState() => _EditBookingScreenState();
}

class _EditBookingScreenState extends State<EditBookingScreen> {
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

  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers = [...List.generate(9, (index) => TextEditingController())];
    _controllers[0].text = widget.bookingModel.tenantName;
    _controllers[1].text = widget.bookingModel.IDNumber;
    _controllers[2].text = widget.bookingModel.tenantPhone;
    _controllers[3].text = widget.bookingModel.departmentTitle;
    _controllers[4].text = widget.bookingModel.bookingDate;
    _controllers[5].text = widget.bookingModel.reservationAmount;
    _controllers[6].text = widget.bookingModel.amountPaid;
    _controllers[7].text = widget.bookingModel.remainingAmount;
    _controllers[8].text = widget.bookingModel.insurance;
    print(widget.bookingModel.tenantName);
    setState(() {});
  }

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

  // @override
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
        title: Text('تعديل الحجز'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextFormFieldWithLabel(
                        textLabel: title[index],
                        controller: _controllers[index],
                        textInputType: textInputType[index],
                        onChanged: (value) {
                          if (index == 5 || index == 6) {
                            _calculateRemainingAmount();
                          }
                        },
                      ),
                    );
                  },
                ),
                ElevatedButton(onPressed: () {}, child: Text('حفظ التعديلات')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
