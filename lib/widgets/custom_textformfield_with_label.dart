import 'package:booking_app/core/app_export.dart';

class CustomTextFormFieldWithLabel extends StatelessWidget {
  const CustomTextFormFieldWithLabel({
    super.key,
    this.validator,
    required this.textLabel,
    this.textInputType,
    required this.controller,
    this.maxLine,
    this.maxlength,
    this.onChanged,
  });

  final String? Function(String?)? validator;
  final String? textLabel;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final int? maxLine;
  final int? maxlength;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        onChanged: onChanged,
        maxLength: maxlength,
        maxLines: maxLine ?? 1,
        controller: controller,
        keyboardType: textInputType,
        // textDirection: TextDirection.rtl,
        validator: validator,
        decoration: InputDecoration(
          labelText: textLabel,
          border: const OutlineInputBorder(borderRadius: BorderRadius.zero),
        ),
      ),
    );
  }
}
