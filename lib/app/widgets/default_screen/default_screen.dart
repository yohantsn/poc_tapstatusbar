import 'package:flutter/material.dart';
import 'package:poc_statusbar/app/widgets/app_bar/app_bar.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen(
      {Key? key, this.bottomNavigatorBar, this.body, required this.showAppBar})
      : super(key: key);
  final Widget? bottomNavigatorBar;
  final Widget? body;
  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar ? AppBarDefault() : null,
      bottomNavigationBar: bottomNavigatorBar,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: body ?? Container(),
            )
          ],
        ),
      ),
    );
  }
}
