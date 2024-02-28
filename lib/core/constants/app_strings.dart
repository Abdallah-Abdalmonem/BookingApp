import 'package:booking_app/core/app_export.dart';

class AppSrings {
  static BookingModel bookingModel = BookingModel(
      tenantName: 'عبدالله',
      tenantPhone: '0599999999',
      departmentId: 'Chalet',
      departmentTitle: 'Chalet',
      bookingDate: '2024-02-27',
      dateTime: DateTime.now().toString(),
      IDNumber: '1234567890',
      reservationAmount: '1000',
      amountPaid: '500',
      remainingAmount: '500',
      insurance: '100',
      bookingId: '1234567890');
  static UserModel? userModel;
  static List<String> departmentList = [
    'Chalet',
    'Big break',
    'Small break',
    'public park',
    'Private office',
    'Playgrounds',
    'add employee',
    'export names',
  ];
  static List<String> titleDepartmentList = [
    'الشاليهات',
    'استراحة كبرى',
    'استراحة صغرى',
    'منتزه عام للعائلات',
    'دايوانية خاصة',
    'ملاعب',
    'اضافة موظف',
    'تصدير الاسماء',
  ];

  static List<Color> colorsList = [
    // Colors.orange,
    // Colors.blue,
    // Colors.grey,
    Colors.green,
    Colors.blueAccent,
    Colors.deepOrange,
    Colors.deepOrange,
    Colors.red,
    Colors.purple,
    Colors.blueAccent,
    Colors.lightGreen,
  ];
  static List<Icon> myIconsList = [
    // Icon(
    //   Icons.add_box_sharp,
    //   color: Colors.grey[200],
    // ),
    // Icon(
    //   Icons.edit_calendar_rounded,
    //   color: Colors.grey[200],
    // ),

    Icon(
      Icons.topic_rounded,
      color: Colors.grey[200],
    ),
    Icon(
      Icons.blinds_closed_outlined,
      color: Colors.grey[200],
    ),
    Icon(
      Icons.blinds_closed_outlined,
      color: Colors.grey[200],
    ),
    Icon(
      Icons.blinds_closed_outlined,
      color: Colors.grey[200],
    ),
    Icon(
      Icons.blinds_closed_outlined,
      color: Colors.grey[200],
    ),
    Icon(
      Icons.blinds_closed_outlined,
      color: Colors.grey[200],
    ),
    Icon(
      Icons.person_add_alt_1,
      color: Colors.grey[200],
    ),
    Icon(
      Icons.contacts,
      color: Colors.grey[200],
    ),
  ];
  // static List titleList = [
  //   // 'اضافة حجز',
  //   // 'تعديل حجز',
  //   // 'طباعة حجز',
  //   // 'الحجوزات',
  //   'استراحة كبرى',
  //   'استراحة صغرى',
  //   'منتزة عام للعائلات',
  //   'دايوانية خاصة',
  //   'ملاعب',
  //   'اضافة موظف',
  // ];
}
