part of 'repos_fetcher_cubit.dart';

@freezed
class ReposFetcherState with _$ReposFetcherState {
  const factory ReposFetcherState.empty() = _Empty;
  const factory ReposFetcherState.loading() = _Loading;
  const factory ReposFetcherState.loadingMore({
    required List<Repo> repos,
    required int page,
  }) = _LoadingMore;
  const factory ReposFetcherState.error({
    required String message,
    @Default(404) int errorCode,
  }) = _Error;
  const factory ReposFetcherState.loaded(
    List<Repo> repos,
    int page,
  ) = _Loaded;
}
