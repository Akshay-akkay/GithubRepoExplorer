import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:jake_wharton/models/repo/repo.dart';

part 'repos_fetcher_state.dart';
part 'repos_fetcher_cubit.freezed.dart';

class ReposFetcherCubit extends HydratedCubit<ReposFetcherState> {
  ReposFetcherCubit() : super(const ReposFetcherState.empty());

  // Fetching repos from github api and updating the state with the result
  //
  // If the result is successful, the state is updated with the repos
  // If the result is unsuccessful, the state is updated with the error
  // If the result is in progress, the state is updated with the loading indicator
  void fetchIntial15Repos(String username) async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(
          'https://api.github.com/users/$username/repos?page=1&per_page=9');
      List<Repo> repos =
          (response.data as List).map((repo) => Repo.fromJson(repo)).toList();

      debugPrint(repos.toString());

      emit(ReposFetcherState.loaded(repos, 1));
    } catch (e) {
      state.when(
        empty: () => emit(const ReposFetcherState.empty()),
        loading: () => emit(const ReposFetcherState.loading()),
        loadingMore: (repos, page) =>
            emit(ReposFetcherState.loadingMore(page: page, repos: repos)),
        loaded: (repos, page) => emit(ReposFetcherState.loaded(repos, page)),
        error: (error, errorCode) => emit(ReposFetcherState.error(
          message: e.toString(),
          errorCode: (e as DioError).type.hashCode,
        )),
      );
    }
  }

  // Fetch 15 more repos from github api and updating the state with the result
  //
  // If the result is successful, the state is updated with the repos
  // If the result is unsuccessful, the state is updated with the error
  // If the result is in progress, the state is updated with the loading indicator
  void fetchMoreRepos(String username) async {
    log('Fetching More Repos');
    state.maybeWhen(
      loaded: (repos, page) async {
        emit(ReposFetcherState.loadingMore(repos: repos, page: page));

        try {
          Dio dio = Dio();
          Response response = await dio.get(
              'https://api.github.com/users/$username/repos?page=${page + 1}&per_page=9');
          List<Repo> newRepos = (response.data as List)
              .map((repo) => Repo.fromJson(repo))
              .toList();

          emit(ReposFetcherState.loaded(repos + newRepos, (page + 1)));
        } catch (e) {
          // emit(ReposFetcherState.error(
          //   message: e.toString(),
          //   errorCode: (e as DioError).type.hashCode,
          // ));
        }
      },
      loadingMore: (repos, page) async {
        emit(ReposFetcherState.loadingMore(repos: repos, page: page));
        log('Loading More');

        try {
          Dio dio = Dio();
          Response response = await dio.get(
              'https://api.github.com/users/$username/repos?page=${page + 1}&per_page=9');
          List<Repo> newRepos = (response.data as List)
              .map((repo) => Repo.fromJson(repo))
              .toList();

          emit(ReposFetcherState.loaded(repos + newRepos, (page + 1)));
        } catch (e) {
          // emit(ReposFetcherState.error(
          //   message: e.toString(),
          //   errorCode: (e as DioError).type.hashCode,
          // ));
        }
      },
      orElse: () => {},
    );
  }

  @override
  ReposFetcherState? fromJson(Map<String, dynamic> json) {
    // if (json['state'] == 'empty') return const ReposFetcherState.empty();
    // if (json['state'] == 'loading') return const ReposFetcherState.loading();
    if (json['state'] == 'loaded') {
      return ReposFetcherState.loaded(
        (json['repos'] as List).map((repo) => Repo.fromJson(repo)).toList(),
        json['page'],
      );
    }
    // if (json['state'] == 'error') {
    //   return ReposFetcherState.error(
    //     message: json['message'],
    //     errorCode: json['errorCode'],
    //   );
    // }
    if (json['state'] == 'loadingMore') {
      return ReposFetcherState.loadingMore(
        repos:
            (json['repos'] as List).map((repo) => Repo.fromJson(repo)).toList(),
        page: json['page'],
      );
    }
    // return null;
  }

  @override
  Map<String, dynamic>? toJson(ReposFetcherState state) => state.maybeWhen(
        // empty: () => {'repos': [], 'state': 'empty'},
        // loading: () => {'repos': [], 'state': 'loading'},
        loadingMore: (repos, page) =>
            {'repos': repos, 'state': 'loadingMore', 'page': page},
        // error: ,
        loaded: (repos, page) =>
            {'repos': repos, 'state': 'loadingMore', 'page': page},
        orElse: () {},
      );
}
