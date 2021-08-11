import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_statusbar/app/pages/home/home_presenter.dart';
import 'package:poc_statusbar/app/widgets/bottom_navigator/bottom_navigator.dart';
import 'package:poc_statusbar/app/widgets/default_screen/default_screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomePresenter> {

  @override
  void initState() {
    super.initState();
    setInitialPage();
  }

  void setInitialPage(){
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if(mounted){
        _changePage(0);
      }
    });
  }

  void _changePage(index){
    controller.changePage(index);
    final scrollController = PrimaryScrollController.of(context);
    switch (index) {
      case 0:
        Modular.to.navigate("/welcome/",arguments: scrollController);
        break;
      case 1:
        Modular.to.navigate("/welcome/",arguments: scrollController);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {

    return DefaultScreen(
      showAppBar: false,
      bottomNavigatorBar: Observer(
        builder: (_) => BottomNavigator(
        onItemTapped: _changePage,
        selectedIndex: controller.tabIndex,
        ),
      ),
      body: RouterOutlet(),
    );
  }
}
