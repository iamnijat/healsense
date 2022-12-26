part of pages;

class RouteErrorPage extends StatelessWidget {
  const RouteErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppPalette.whiteColor,
        body: ErrorOrEmpty(
          loc: context.loc,
        ));
  }
}
