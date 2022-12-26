part of widgets;

class CreateMedicineFormSubmitButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isDisabled;
  final bool isLoading;
  const CreateMedicineFormSubmitButton({
    super.key,
    required this.onTap,
    required this.isDisabled,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isDisabled,
      child: AnimatedContainer(
        width: context.width,
        height: 60.h,
        duration: Durations.threeHundredMillisecondsDuration,
        decoration: BoxDecoration(
            color: isDisabled
                ? AppPalette.mainGreyColor
                : AppPalette.mainPurpleColor,
            borderRadius: BorderRadius.circular(15)),
        child: Material(
          color: AppPalette.transparentColor,
          child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(15),
              child: Center(
                child: isLoading
                    ? const JumpingDotsIndicator()
                    : Text(context.loc.createMedicinePageFormSaveChangesButton,
                        style: isDisabled
                            ? TextStyles.black16BoldMontserrat
                            : TextStyles.white16BoldMontserrat),
              )),
        ),
      ),
    );
  }
}
