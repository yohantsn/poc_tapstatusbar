// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_presenter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomePresenter on _HomePresenter, Store {
  final _$tabIndexAtom = Atom(name: '_HomePresenter.tabIndex');

  @override
  int get tabIndex {
    _$tabIndexAtom.reportRead();
    return super.tabIndex;
  }

  @override
  set tabIndex(int value) {
    _$tabIndexAtom.reportWrite(value, super.tabIndex, () {
      super.tabIndex = value;
    });
  }

  final _$_HomePresenterActionController =
      ActionController(name: '_HomePresenter');

  @override
  void changePage(int index) {
    final _$actionInfo = _$_HomePresenterActionController.startAction(
        name: '_HomePresenter.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_HomePresenterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tabIndex: ${tabIndex}
    ''';
  }
}
