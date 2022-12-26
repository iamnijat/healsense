part of widgets;

class CreateMedicineForm extends ConsumerStatefulWidget {
  final Loc loc;
  const CreateMedicineForm({
    super.key,
    required this.loc,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateMedicineFormState();
}

class _CreateMedicineFormState extends ConsumerState<CreateMedicineForm> {
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  final _typeController = TextEditingController();
  final _timeController = TextEditingController();
  final _dateController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void createMedicine() async {
    _nameController.clear();
    _amountController.clear();
    _typeController.clear();
    _timeController.clear();
    _dateController.clear();

    final isNotified = ref.watch(createMedicineNotificationProvider);
    await ref
        .read(createMedicineProvider.notifier)
        .createMedicine(isNotified: isNotified);
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<CreateMedicineFormState>(createMedicineProvider, ((_, state) {
      state.failureOrSuccessOption.fold(() => {}, (either) {
        if (either.isError()) {
          showSnackbar(
            context,
            title: widget.loc?.errorSnackbarTitle ?? '',
            contentType: SimpleSnackbarContentType.error,
          );
        } else {
          showSnackbar(
            context,
            title: widget.loc?.successSnackbarTitle ?? '',
            contentType: SimpleSnackbarContentType.success,
          );
        }
      });
    }));
    return Form(
      key: _formKey,
      child: Padding(
        padding: Paddings.horizontal24Padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CreateMedicineFormFieldTitle(
              title: widget.loc?.createMedicinePageFormMedicineNameTitle,
            ),
            const VerticalSpacer(15),
            CreateMedicineFormTextField(
              width: context.width,
              controller: _nameController,
              inputFormatters: [
                LengthLimitingTextInputFormatter(12),
              ],
              onChanged: (name) =>
                  ref.read(createMedicineProvider.notifier).updateName(
                        name,
                      ),
              icon: AppAssets.pillIcon,
              hintText: widget.loc?.createMedicinePageFormMedicineNameHintText,
            ),
            const VerticalSpacer(20),
            CreateMedicineFormFieldTitle(
              title: widget.loc?.createMedicinePageFormMedicineAmountTitle,
            ),
            const VerticalSpacer(15),
            CreateMedicineFormTextField(
              width: context.width,
              icon: AppAssets.doseIcon,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
              ],
              keyboardType: TextInputType.number,
              onChanged: (name) =>
                  ref.read(createMedicineProvider.notifier).updateAmount(name),
              controller: _amountController,
              hintText: widget.loc?.createMedicinePageFormMedicineAmountTitle,
            ),
            const VerticalSpacer(20),
            CreateMedicineFormFieldTitle(
              title: widget.loc?.createMedicinePageFormMedicineTypeTitle,
            ),
            const VerticalSpacer(15),
            CreateMedicineFormTextField(
              width: context.width,
              icon: AppAssets.visibleIcon,
              hintText: "Tablet",
              suffixIconTap: () {
                _showTypePicker(context);
              },
              controller: _typeController,
              type: MedicineFormTextFieldType.dropdownField,
            ),
            const VerticalSpacer(20),
            CreateMedicineFormFieldTitle(
              title: widget.loc?.createMedicinePageFormMedicineWhenTitle,
            ),
            const VerticalSpacer(15),
            CreateMedicineFormTextField(
              width: context.width,
              icon: AppAssets.giveMedicineIcon,
              hintText: "10:00",
              controller: _timeController,
              suffixIconTap: () {
                _showTimePicker(context);
              },
              type: MedicineFormTextFieldType.dropdownField,
            ),
            const VerticalSpacer(20),
            CreateMedicineFormFieldTitle(
              title: widget.loc?.createMedicinePageFormMedicineHowLongTitle,
            ),
            const VerticalSpacer(15),
            CreateMedicineFormTextField(
              width: context.width,
              icon: AppAssets.dateIcon,
              hintText: "Jan,2",
              controller: _dateController,
              suffixIconTap: () {
                _showDatePicker(context);
              },
              type: MedicineFormTextFieldType.dropdownField,
            ),
            const VerticalSpacer(20),
            CreateMedicineFormNotificationField(
              loc: widget.loc,
            ),
            const VerticalSpacer(25),
            CreateMedicineFormSubmitButton(
              onTap: () => createMedicine(),
              isDisabled: !ref.watch(createMedicineProvider).isValid,
              isLoading: ref.watch(createMedicineProvider).isLoading,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _amountController.dispose();
    _typeController.dispose();
    _timeController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  void dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void updateDate(DateTime date) {
    final time = DateFormatUtil.abbrMonthDateYearParsed(
      date,
    );
    _dateController.text = time;

    ref.read(createMedicineProvider.notifier).updateDate(
          date,
        );
  }

  void updateTime(DateTime date) {
    final time = DateFormatUtil.hourMinuteParsed(
      date,
    );
    _timeController.text = time;
    ref.read(createMedicineProvider.notifier).updateTime(
          date,
        );
  }

  void updateType(int index) {
    final time = (MedicineTypeSelectionUtil.getTypes(widget.loc))[index];
    _typeController.text = time.toString();
    ref.read(createMedicineProvider.notifier).updateType(_typeController.text);
  }

  void _showDatePicker(BuildContext context) {
    showCupertinoPicker(context, child: DatePicker(updateDate));
  }

  void _showTimePicker(BuildContext context) {
    showCupertinoPicker(context, child: TimePicker(updateTime));
  }

  void _showTypePicker(BuildContext context) {
    showCupertinoPicker(context, child: MedicineTypePicker(updateType));
  }
}
