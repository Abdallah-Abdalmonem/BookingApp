class BookingModel {
  String bookingId;
  String tenantName;
  String tenantPhone;
  String departmentId;
  String departmentTitle;
  String bookingDate;
  String dateTime;
  String IDNumber;
  String reservationAmount;
  String amountPaid;
  String remainingAmount;
  String insurance;

  BookingModel({
    required this.bookingId,
    required this.tenantName,
    required this.tenantPhone,
    required this.departmentId,
    required this.departmentTitle,
    required this.bookingDate,
    required this.dateTime,
    required this.IDNumber,
    required this.reservationAmount,
    required this.amountPaid,
    required this.remainingAmount,
    required this.insurance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookingId': bookingId,
      'tenantName': tenantName,
      'tenantPhone': tenantPhone,
      'departmentId': departmentId,
      'departmentTitle': departmentTitle,
      'bookingDate': bookingDate,
      'dateTime': dateTime,
      'IDNumber': IDNumber,
      'reservationAmount': reservationAmount,
      'amountPaid': amountPaid,
      'remainingAmount': remainingAmount,
      'insurance': insurance,
    };
  }

  factory BookingModel.fromMap(Map<String, dynamic> map) {
    return BookingModel(
      bookingId: map['bookingId'],
      tenantName: map['tenantName'],
      tenantPhone: map['tenantPhone'],
      departmentId: map['departmentId'],
      departmentTitle: map['departmentTitle'],
      bookingDate: map['bookingDate'],
      dateTime: map['dateTime'],
      IDNumber: map['IDNumber'],
      reservationAmount: map['reservationAmount'],
      amountPaid: map['amountPaid'],
      remainingAmount: map['remainingAmount'],
      insurance: map['insurance'],
    );
  }
}
