import 'dart:core';

import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// class MockREPOSITORY_NAME extends Mock implements REPOSITORY_NAME {}

void main() {
  group("TEST_USECASE_NAME base (requirements)",() {
    test(
      """
        Should XXX
        When YYY
        Given ZZZ
      """,
      () async {
      // arrange

      // act

      // assert
    }, skip: true,
    tags: ["unittest","FEATURE_NAME","usecases","FILE_NAME","base"]);
  });
  group("TEST_USECASE_NAME security (requirements)",() {
    test(
      """
        Should XXX
        When YYY
        Given ZZZ
      """,
      () async {
      // arrange

      // act

      // assert
    }, skip: true,
    tags: ["unittest","FEATURE_NAME","usecases","FILE_NAME","security"]);
  });
}