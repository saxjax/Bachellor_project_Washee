import 'dart:core';

import 'package:flutter_test/flutter_test.dart';
import 'package:washee/features/account/domain/entities/user_entity.dart';

import '../../../../fixtures/entities/account/accounts.dart';
import '../../../../fixtures/entities/account/users.dart';

void main() {
  group("UserEntity constructor",() {
    test(
      """
        Should have a valid set of fixtures that have unique ids
      """,
      () async {
      // arrange

      // act
      UserEntity firstUser = firstUserFixture();
      UserEntity secondUser = secondUserFixture();

      // assert
      expect(firstUser.id, 1);
      expect(secondUser.id, 2);
    },
    tags: ["unittest","account","entities","user_entity","constructor"]);
    test(
      """
        First Fixture should create a new entity, independent of changes done to a previous entity
      """,
      () async {
      // arrange
      UserEntity firstUser = firstUserFixture();
      firstUser.accounts.add(firstAccountFixture());

      // act
      UserEntity firstUserUsingSameFixture = firstUserFixture();

      // assert
      expect(firstUserUsingSameFixture.id, firstUser.id);
      expect(firstUser.accounts, [firstAccountFixture()]);
      expect(firstUserUsingSameFixture.accounts, []);
    },
    tags: ["unittest","account","entities","user_entity","constructor"]);
    test(
      """
        Second Fixture should create a new entity, independent of changes done to a previous entity
      """,
      () async {
      // arrange
      UserEntity secondUser = secondUserFixture();
      secondUser.accounts.add(firstAccountFixture());

      // act
      UserEntity secondUserUsingSameFixture = secondUserFixture();

      // assert
      expect(secondUserUsingSameFixture.id, secondUser.id);
      expect(secondUser.accounts, [firstAccountFixture()]);
      expect(secondUserUsingSameFixture.accounts, []);
    },
    tags: ["unittest","account","entities","user_entity","constructor"]);
  });
  group("UserEntity anonymousUser",() {
    test(
      """
        Should be possible to have an anonymous user with id 0
      """,
      () async {
      // arrange

      // act
      UserEntity anonymousUser = UserEntity.anonymousUser();

      // assert
      expect(anonymousUser.id, 0);
      expect(anonymousUser.loggedIn, false);
    },
    tags: ["unittest","account","entities","user_entity","anonymousUser"]);
  });
}