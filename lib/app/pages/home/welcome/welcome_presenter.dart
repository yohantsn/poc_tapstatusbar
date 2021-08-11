import 'package:mobx/mobx.dart';

part 'welcome_presenter.g.dart';

class WelcomePresenter = _WelcomePresenter with _$WelcomePresenter;

abstract class _WelcomePresenter with Store{
  _WelcomePresenter(){
    getList();
  }

  ObservableList<String> listMock = ObservableList<String>();

  @action
  Future<void> getList() async{
    var _lista = new List<String>.generate(100, (i) => (i + 1).toString());
    listMock.addAll(_lista);
  }
}