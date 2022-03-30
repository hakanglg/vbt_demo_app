import 'package:mobx/mobx.dart';

import '../model/home_model.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  @observable
  ObservableList<UserModel> userList = ObservableList<UserModel>.of([
    UserModel(name: "Tesla", imageUrl: "assets/images/tesla_photo.png"),
    UserModel(name: "Edison", imageUrl: "assets/images/edison_photo.jpg"),
  ]);
}
