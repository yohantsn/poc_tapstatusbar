import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_presenter.g.dart';

class HomePresenter = _HomePresenter with _$HomePresenter;

abstract class _HomePresenter with Store {
  @observable
  int tabIndex = 0;

  @action
  void changePage(int index) {
    tabIndex = index;
  }
}
