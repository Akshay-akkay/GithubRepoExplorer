import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jake_wharton/cubits/reposFetcher/repos_fetcher_cubit.dart';
import 'package:jake_wharton/screens/home/homepage.dart';
import 'package:jake_wharton/screens/reposViewer/repos_viewer.dart';

class AppRouter {
  // ? Home
  static const String splashScreem = '/';
  static const String home = '/home';
  static const String reposViewer = '/reposViewer';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute<Widget>(
          settings: settings.copyWith(name: home),
          builder: (_) => const HomePage(),
        );

      case reposViewer:
        return MaterialPageRoute<Widget>(
          settings: settings.copyWith(name: reposViewer),
          builder: (_) => BlocProvider(
            create: (context) => ReposFetcherCubit()
              ..fetchIntial15Repos(settings.arguments as String),
            child: ReposViewer(
              username: settings.arguments as String,
            ),
          ),
        );

      default:
        return MaterialPageRoute<Widget>(
          settings: settings.copyWith(name: 'CONTACT FLUTTER DEV IMMEDIATELY'),
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
