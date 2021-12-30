import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart' hide Bloc;
import 'package:jake_wharton/cubits/services/cubit_observer.dart';
import 'package:jake_wharton/router.dart';
import 'package:jake_wharton/screens/home/homepage.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: AppBlocObserver(),
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Repo Explorer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
