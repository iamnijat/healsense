part of widgets;

class Reminders extends ConsumerWidget {
  final Loc loc;
  const Reminders({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final medicines = ref.watch(todayActiveMedicinesProvider);
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
                    return RemindersActivity(
                      index: index,
                      medicine: medicine,
                      loc: loc,
                      ref: ref,
                    );
                  }));
        });
  }
}
