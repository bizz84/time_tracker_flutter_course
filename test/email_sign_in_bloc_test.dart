import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracker_flutter_course/app/sign_in/email_sign_in_bloc.dart';
import 'package:time_tracker_flutter_course/app/sign_in/email_sign_in_model.dart';

import 'mocks.dart';

void main() {
  MockAuth mockAuth;
  EmailSignInBloc bloc;

  setUp(() {
    mockAuth = MockAuth();
    bloc = EmailSignInBloc(auth: mockAuth);
  });

  tearDown(() {
    bloc.dispose();
  });

  test(
      'WHEN email is updated'
      'AND password is updated'
      'AND submit is called'
      'THEN modelStream emits the correct events', () async {
    when(mockAuth.signInWithEmailAndPassword(any, any))
        .thenThrow(PlatformException(code: 'ERROR'));
    expect(
        bloc.modelStream,
        emitsInOrder([
          EmailSignInModel(),
          EmailSignInModel(email: 'email@email.com'),
          EmailSignInModel(
            email: 'email@email.com',
            password: 'password',
          ),
          EmailSignInModel(
            email: 'email@email.com',
            password: 'password',
            submitted: true,
            isLoading: true,
          ),
          EmailSignInModel(
            email: 'email@email.com',
            password: 'password',
            submitted: true,
            isLoading: false,
          ),
        ])
    );

    bloc.updateEmail('email@email.com');

    bloc.updatePassword('password');

    try {
      await bloc.submit();
    } catch (_) {
    }
  });
}
