// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
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

  @override
  String toString() {
    return '''
userList: ${userList},
title: ${title}
    ''';
  }
}
