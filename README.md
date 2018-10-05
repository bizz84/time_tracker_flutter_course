# Flutter & Firebase Course | Code With Andrea

This repo contains the source code for my [Flutter & Firebase Course](https://nnbd.me/ff) on Udemy.

## Running the project with Firebase

To use this project with Firebase, some configuration steps are required.

- Create a new project with the Firebase console.
- Add iOS and Android apps in the Firebase project settings.
- On Android, use `com.codingwithflutter.time_tracker_flutter_course` as the package name.
- then, [download and copy](https://firebase.google.com/docs/flutter/setup#configure_an_android_app) `google-services.json` into `android/app`.
- On iOS, use `com.codingwithflutter.timeTrackerFlutterCourse` as the bundle ID.
- then, [download and copy](https://firebase.google.com/docs/flutter/setup#configure_an_ios_app) `GoogleService-Info.plist` into `iOS/Runner`, and add it to the Runner target in Xcode.

See this page for full instructions:

- [FlutterFire Overview](https://firebase.flutter.dev/docs/overview) 

The setup steps are also explained in the course.

### [License: MIT](LICENSE.md)

