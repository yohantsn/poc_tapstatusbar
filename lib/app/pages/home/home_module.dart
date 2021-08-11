import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_statusbar/app/pages/home/home_page.dart';
import 'package:poc_statusbar/app/pages/home/home_presenter.dart';
import 'package:poc_statusbar/app/pages/home/welcome/welcome_page.dart';
import 'package:poc_statusbar/app/pages/home/welcome/welcome_presenter.dart';


class HomeModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((i) => HomePresenter()),
    Bind((i) => WelcomePresenter()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(
      '/', child: (_, args) => HomePage(),
      children: [
        ChildRoute("welcome/", child: (_ , args ) => WelcomePage(scrollController: args.data,),)
      ]
    ),

  ];

}