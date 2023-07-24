import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:please/blocs/swipe/swipe_bloc.dart';
import 'package:please/config/app_router.dart';
import 'package:please/screens/home/home_screen.dart';
import 'package:please/models/user_model.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return 
      MultiBlocProvider(providers: 
        BlocProvider(create: (_) => SwipeBloc()..add(LoadUserEvent(users: users ))), 
        child: MaterialApp(
      title: "Unidates",
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      )
    );
  }
}
