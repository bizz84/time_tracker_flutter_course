import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';
import 'package:time_tracker_flutter_course/services/database.dart';

class MockAuth extends Mock implements AuthBase {}

class MockUser extends Mock implements User {
  MockUser();
  factory MockUser.uid(String uid) {
    final user = MockUser();
    when(user.uid).thenReturn('123');
    return user;
  }
}

class MockDatabase extends Mock implements Database {}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}
