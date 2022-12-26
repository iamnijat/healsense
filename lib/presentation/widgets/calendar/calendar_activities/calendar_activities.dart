part of widgets;

class CalendarActivities extends ConsumerWidget {
  final Loc loc;
  const CalendarActivities({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final medicines = ref.watch(medicinesByDateProvider);
    return medicines.when(
        initial: () => const ShimmerLoadingIndicator(),
        loading: () => const ShimmerLoadingIndicator(),
        empty: () => ErrorOrEmpty(loc: loc),
        error: () => ErrorOrEmpty(loc: loc),
        loaded: (medicines) {
          return MediaQueryRemovePadding(
              child: ListView.builder(
                  itemCount: medicines?.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final medicine = medicines?[index];
                    return CalendarActivity(
                      index: index,
                      medicine: medicine,
                      loc: loc,
                      ref: ref,
                    );
                  }));
        });
  }
}
