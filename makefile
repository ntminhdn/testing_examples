te:
	flutter test

golden_test:
	flutter test --tags=golden

ut:
	flutter test test/unit_test

cl:
	flutter clean
	rm -rf pubspec.lock

pg:
	flutter pub get

test_coverage:
	flutter test --coverage
	lcov --remove coverage/lcov.info '*/*.g.dart' '**/generated/*' -o coverage/lcov.info
	genhtml coverage/lcov.info -o coverage/html
	open coverage/html/index.html

fb:
	dart run build_runner build --delete-conflicting-outputs --verbose

cc:
	flutter packages pub run build_runner clean