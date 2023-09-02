import 'package:dio/dio.dart';

class AuthInterceptor extends InterceptorsWrapper {
  AuthInterceptor(this._dio);

  final Dio _dio;

  _TokenRefreshStatus _tokenRefreshState = _TokenRefreshStatus.none;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final requestOptions = err.requestOptions;

    if (_tokenRefreshState.isInProgress) {
      handler.resolve(await _dio.fetch(requestOptions));
      return;
    }

    // Lock all requests.
    // ignore: deprecated_member_use
    _tokenRefreshState = _TokenRefreshStatus.inProgress;
  }
}

enum _TokenRefreshStatus {
  /// Default state. No ongoing token-refresh operation.
  none,

  /// Some other error while refreshing token.
  failed,

  /// Token refresh returned 401.
  expired,

  /// Token refresh is in progress.
  inProgress,
}

extension _TokenStatus on _TokenRefreshStatus {
  bool get hasExpired => this == _TokenRefreshStatus.expired;

  bool get isInProgress => this == _TokenRefreshStatus.inProgress;

  bool get hasFailed => this == _TokenRefreshStatus.failed;
}
