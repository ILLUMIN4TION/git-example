enum AppRoute { start, main }

//AppRoute의 ApprouteExtension 확장함수를 만든다
extension AppRouteExtenstion on AppRoute {
  String get toPath => '/$name';
}

// void main() {
//   AppRoute.start.name; //start
// }
