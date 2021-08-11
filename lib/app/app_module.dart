import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_statusbar/app/pages/home/home_module.dart';

class AppModule extends Module {

  // Provide a list of dependencies to inject into your project
  @override
  List<Bind> get binds => [];

  // Provide all the routes for your module
  @override
  List<ModularRoute> get routes => [
    ModuleRoute("/", module: HomeModule())
  ];

}