import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:chat_app/reducers/root_reducer.dart';
import './app_state.dart';
import './views/bootstrap.dart';
import './views/login.dart';

void main() {
  final store =  Store<AppState>(reducer, initialState: new AppState());

  runApp(FlutterReduxApp(
    store: store
  ));
}

class FlutterReduxApp extends StatelessWidget {
  final Store<AppState> store;
  FlutterReduxApp({Key key, this.store}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store:store,
      child: MaterialApp(
        title: 'Chat app',
        theme: ThemeData.light(),
        initialRoute: '/login',
        routes: {
          '/': (BuildContext context) => Bootstrap(),
          '/login': (BuildContext context) => LoginPage(),
        },
      ),
    );
  }
}