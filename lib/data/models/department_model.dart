class DepartmentModel {
  String departmentId;
  String departmentTitle;

  DepartmentModel({
    required this.departmentId,
    required this.departmentTitle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'departmentId': departmentId,
      'departmentTitle': departmentTitle,
    };
  }

  factory DepartmentModel.fromMap(Map<String, dynamic> map) {
    return DepartmentModel(
      departmentId: map['departmentId'],
      departmentTitle: map['departmentTitle'],
    );
  }
}
