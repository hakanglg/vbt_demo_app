// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  final _$timeLeftAtom = Atom(name: '_HomeViewModelBase.timeLeft');

  @override
  int get timeLeft {
    _$timeLeftAtom.reportRead();
    return super.timeLeft;
  }

  @override
  set timeLeft(int value) {
    _$timeLeftAtom.reportWrite(value, super.timeLeft, () {
      super.timeLeft = value;
    });
  }

  final _$backgroundColorAtom =
      Atom(name: '_HomeViewModelBase.backgroundColor');

  @override
  MaterialColor get backgroundColor {
    _$backgroundColorAtom.reportRead();
    return super.backgroundColor;
  }

  @override
  set backgroundColor(MaterialColor value) {
    _$backgroundColorAtom.reportWrite(value, super.backgroundColor, () {
      super.backgroundColor = value;
    });
  }

  final _$userListAtom = Atom(name: '_HomeViewModelBase.userList');

  @override
  ObservableList<UserModel> get userList {
    _$userListAtom.reportRead();
    return super.userList;
  }

  @override
  set userList(ObservableList<UserModel> value) {
    _$userListAtom.reportWrite(value, super.userList, () {
      super.userList = value;
    });
  }

  final _$titleAtom = Atom(name: '_HomeViewModelBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$showDialogAndChangeTitleAsyncAction =
      AsyncAction('_HomeViewModelBase.showDialogAndChangeTitle');

  @override
  Future<void> showDialogAndChangeTitle(BuildContext context) {
    return _$showDialogAndChangeTitleAsyncAction
        .run(() => super.showDialogAndChangeTitle(context));
  }

  final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase');

  @override
  void init() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.init');
    try {
      return super.init();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startCountdown() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.startCountdown');
    try {
      return super.startCountdown();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
timeLeft: ${timeLeft},
backgroundColor: ${backgroundColor},
userList: ${userList},
title: ${title}
    ''';
  }
}
