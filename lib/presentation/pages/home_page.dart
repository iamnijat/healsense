part of pages;

class HomePage extends StatelessWidget {
  final Widget child;

  const HomePage({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.whiteColor,
      body: child,
      bottomNavigationBar: CustomBottomNavigationBar(
        loc: context.loc,
      ),
    );
  }
}
