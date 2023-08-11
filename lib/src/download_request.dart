import 'package:dio/dio.dart';

class DownloadRequest {
  final String url;
  final String path;
  final Map<String, dynamic>? headers;
  var cancelToken = CancelToken();
  var forceDownload = false;

  DownloadRequest(this.url, this.path, {this.headers});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DownloadRequest &&
          runtimeType == other.runtimeType &&
          url == other.url &&
          path == other.path;

  @override
  int get hashCode => url.hashCode ^ path.hashCode;
}
