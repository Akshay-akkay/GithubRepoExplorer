// To parse this JSON data, do
//
//     final repo = repoFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo.freezed.dart';
part 'repo.g.dart';

@freezed
class Repo with _$Repo {
  const factory Repo({
    int? id,
    String? nodeId,
    String? name,
    String? fullName,
    bool? private,
    Owner? owner,
    String? htmlUrl,
    String? description,
    bool? fork,
    String? url,
    String? forksUrl,
    String? keysUrl,
    String? collaboratorsUrl,
    String? teamsUrl,
    String? hooksUrl,
    String? issueEventsUrl,
    String? eventsUrl,
    String? assigneesUrl,
    String? branchesUrl,
    String? tagsUrl,
    String? blobsUrl,
    String? gitTagsUrl,
    String? gitRefsUrl,
    String? treesUrl,
    String? statusesUrl,
    String? languagesUrl,
    String? stargazersUrl,
    String? contributorsUrl,
    String? subscribersUrl,
    String? subscriptionUrl,
    String? commitsUrl,
    String? gitCommitsUrl,
    String? commentsUrl,
    String? issueCommentUrl,
    String? contentsUrl,
    String? compareUrl,
    String? mergesUrl,
    String? archiveUrl,
    String? downloadsUrl,
    String? issuesUrl,
    String? pullsUrl,
    String? milestonesUrl,
    String? notificationsUrl,
    String? labelsUrl,
    String? releasesUrl,
    String? deploymentsUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? pushedAt,
    String? gitUrl,
    String? sshUrl,
    String? cloneUrl,
    String? svnUrl,
    String? homepage,
    int? size,
    int? stargazersCount,
    int? watchersCount,
    String? language,
    bool? hasIssues,
    bool? hasProjects,
    bool? hasDownloads,
    bool? hasWiki,
    bool? hasPages,
    int? forksCount,
    dynamic mirrorUrl,
    bool? archived,
    bool? disabled,
    int? openIssuesCount,
    License? license,
    bool? allowForking,
    bool? isTemplate,
    List<dynamic>? topics,
    String? visibility,
    int? forks,
    int? openIssues,
    int? watchers,
    String? defaultBranch,
  }) = _Repo;

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}

@freezed
class License with _$License {
  const factory License({
    String? key,
    String? name,
    String? spdxId,
    String? url,
    String? nodeId,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    String? login,
    int? id,
    String? nodeId,
    String? avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
    String? followersUrl,
    String? followingUrl,
    String? gistsUrl,
    String? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    String? eventsUrl,
    String? receivedEventsUrl,
    String? type,
    bool? siteAdmin,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
