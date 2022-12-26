part of widgets;

enum MedicineFormTextFieldType { textField, dropdownField }

class CreateMedicineFormTextField extends StatelessWidget {
  final double? width;
  final String? hintText;
  final String icon;
  final VoidCallback? suffixIconTap;
  final TextEditingController? controller;
  final MedicineFormTextFieldType type;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  const CreateMedicineFormTextField({
    super.key,
    required this.width,
    required this.hintText,
    required this.icon,
    this.suffixIconTap,
    this.inputFormatters,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.controller,
    this.type = MedicineFormTextFieldType.textField,
  });

  bool get _isDropdown => type == MedicineFormTextFieldType.dropdownField;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: AppPalette.mainPurpleColor,
        showCursor: !_isDropdown,
        autocorrect: true,
        textCapitalization: TextCapitalization.sentences,
        enableSuggestions: true,
        inputFormatters: inputFormatters,
        readOnly: _isDropdown,
        onChanged: onChanged,
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        style: TextStyles.black14w500Montserrat,
        decoration: InputDecoration(
          prefixIcon: Container(
            width: 10.h,
            height: 10.h,
            margin: EdgeInsets.all(12.h),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  icon,
                ),
              ),
            ),
          ),
          suffixIcon: InkWell(
            onTap: suffixIconTap,
            child: _suffixIcon,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 10.w,
          ),
          hintText: hintText,
          hintStyle: TextStyles.gray14w500Montserrat,
          border: formBorder(),
          enabledBorder: formBorder(),
          errorBorder: formBorder(),
          focusedBorder: formBorder(),
          focusedErrorBorder: formBorder(),
          disabledBorder: InputBorder.none,
          filled: true,
          fillColor: AppPalette.whiteColor,
        ),
      ),
    );
  }

  OutlineInputBorder formBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        width: 1.2,
        color: AppPalette.mainGrayColor,
      ),
    );
  }

  Widget? get _suffixIcon {
    return _isDropdown
        ? Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppPalette.blackColor,
            size: 25.h,
          )
        : const SizedBox.shrink();
  }
}
