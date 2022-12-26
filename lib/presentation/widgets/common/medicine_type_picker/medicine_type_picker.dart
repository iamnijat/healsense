part of widgets;

class MedicineTypePicker extends StatelessWidget {
  final void Function(int) _onTap;
  const MedicineTypePicker(this._onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: CupertinoPicker(
        itemExtent: 60,
        children: MedicineTypeSelectionUtil.typesBuilder(
            MedicineTypeSelectionUtil.getTypes(context.loc), (index, model) {
          return Center(
            child: Text(model),
          );
        }),
        onSelectedItemChanged: (value) => _onTap(value),
      ),
    );
  }

  static DateTime get currentTime => DateFormatUtil.dateTimeNow;
}
