import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jake_wharton/cubits/reposFetcher/repos_fetcher_cubit.dart';
import 'package:recase/recase.dart';

class ReposViewer extends StatefulWidget {
  const ReposViewer({
    Key? key,
    required this.username,
  }) : super(key: key);

  final String username;

  @override
  State<ReposViewer> createState() => _ReposViewerState();
}

class _ReposViewerState extends State<ReposViewer> {
  var scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController.addListener(pagination);
  }

  void pagination() {
    if (scrollController.position.pixels ==
        (scrollController.position.maxScrollExtent))
    //     &&
    // (_subCategoryModel.products.length < total))
    {
      log('bottom reached');
      log(scrollController.position.maxScrollExtent.toString());
      var repoFetcherCubit = context.read<ReposFetcherCubit>();

      repoFetcherCubit.state.maybeWhen(
        loaded: (repos, page) =>
            repoFetcherCubit.fetchMoreRepos(widget.username),
        orElse: () => {},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('''${widget.username.titleCase}'s Repos'''),
        backgroundColor: Colors.blueGrey,
      ),
      body: BlocBuilder<ReposFetcherCubit, ReposFetcherState>(
        builder: (context, state) {
          return state.when(
            empty: () => const Center(
              child: Text('No repos found'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loadingMore: (repos, _) => ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black,
              ),
              controller: scrollController,
              shrinkWrap: true,
              // physics: const BouncingScrollPhysics(),
              itemCount: repos.length + 1,
              itemBuilder: (context, index) {
                if (index == repos.length) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final repo = repos[index];
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.book, size: 50),
                    const SizedBox(width: 12),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            repo.name ?? 'No name',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(repo.description ?? 'No description'),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(repo.language.toString()),
                              const Icon(Icons.code),
                              const SizedBox(width: 8),
                              Text(repo.openIssues.toString()),
                              const Icon(Icons.bug_report),
                              const SizedBox(width: 8),
                              Text(repo.watchers.toString()),
                              const Icon(Icons.people),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            error: (error, errorCode) {
              if (errorCode == 444432397) {
                return const Center(
                  child: Text('No Internet Connection'),
                );
              }
              return const Center(
                child: Text('Error fetching repos'),
              );
            },

            /// A list view with the repos which fetches more repos on
            /// reaching the third last item.
            loaded: (repos, _) => ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black,
              ),
              controller: scrollController,
              shrinkWrap: true,
              // physics: const BouncingScrollPhysics(),
              itemCount: repos.length,
              itemBuilder: (context, index) {
                final repo = repos[index];
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.book, size: 50),
                    const SizedBox(width: 12),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            repo.name ?? 'No name',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(repo.description ?? 'No description'),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(repo.language.toString()),
                              const Icon(Icons.code),
                              const SizedBox(width: 8),
                              Text(repo.openIssues.toString()),
                              const Icon(Icons.bug_report),
                              const SizedBox(width: 8),
                              Text(repo.watchers.toString()),
                              const Icon(Icons.people),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
