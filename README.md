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

## Course Diagrams

All diagrams shown in the course are available at this URL:

- [Course Diagrams](https://www.sketch.com/s/a518d937-ff0c-4025-81c5-1cbdd3e0415e)

## Course Contents

### 1. Course Introduction

1. Course Introduction
2. Course Content
3. App Overview
4. Making the most of this course
5. What is Flutter

### 2. Introduction to Dart

1. The Dart Language
2. Introduction to Dartpad
3. A simple program
4. Variable declaration and initialization
5. String interpolation
6. Type inference with var
7. Var and final
8. The dynamic keyword
9. Introduction to functions
10. Function return types
11. Optional parameters, nullability and default values
12. Named parameters
13. The arrow operator
14. Introduction to classes
15. Class constructors
16. Instance methods
17. Inheritance
18. The super constructor
19. The base Object class and the toString method
20. Overriding the toString method
21. Abstract classes
22. More on abstract classes
23. Using abstract classes with functions
24. Computed properties
25. Mixins
26. Introduction to lists
27. Introduction to maps
28. Generics and type annotations
29. If and else statements
30. The ternary operator
31. The while loop
32. The for loop
33. Closures and the fold method
34. Enumerations
35. Switch statements
36. Wrap-up

### 3. Flutter setup on macOS

1. Flutter setup on macOS
2. Setting the PATH variable
3. Flutter doctor
4. Xcode and iOS simulator setup
5. Installing Android Studio
6. Installing the Android emulator
7. Running Flutter from the command line
8. Flutter setup on Android Studio
9. Installing Visual Studio Code

### 4. Flutter setup on Windows

1. Flutter setup on Windows
2. Updating the path variable
3. Flutter doctor
4. Installing Android Studio
5. Installing the Android emulator
6. Running Flutter from the command line
7. Flutter setup on Android Studio
8. Installing Visual Studio Code

### 5. Introduction to Flutter

1. Creating a Flutter project with Android Studio
2. A tour of the project folders
3. Running the Android emulator and iOS simulator
4. Overview of the Flutter counter app
5. Hot reload and hot restart
6. Introduction to widgets
7. The MaterialApp widget
8. The Scaffold widget
9. The Flutter widget tree
10. Stateless and stateful widgets
11. Updating the counter with setState
12. Wrap up

### 6. Building Layouts

1. Overview of the Time tracker app
2. Switching between apps
3. Writing the root widget of the app
4. Adding the MaterialApp
5. Adding some folders to our project
6. Adding a sign-in page
7. The ThemeData class
8. The AppBar widget
9. Preview of the SignInPage layout
10. Adding a Column layout
11. The CrossAxisAlignment property
12. Code formatting with dartfmt
13. Adding some boxes and extracting code into a method
14. Private methods
15. Adding some padding
16. The MainAxisAlignment property
17. Text, TextStyle and FontWeight
18. Introduction to buttons
19. Adding the first button
20. Button callbacks explained
21. Customising button colors
22. MaterialColor explained
23. Changing button shapes
24. Making code reusable
25. Creating a reusable custom RaisedButton
26. Creating a reusable SignInButton
27. Setting default values
28. Making the button height configurable
29. Adding the remaining buttons
30. Adding logos: introduction
31. Updating the pubspec.yaml file
32. Image variants
33. Adding an image inside a button
34. Arranging widgets horizontally in a Row
35. The Opacity widget
36. Creating a custom SocialSignInButton
37. The @required annotation
38. Using assertions for better widget API design

### 7. Firebase Authentication

1. Local and remote authentication
2. Introduction to Firebase
3. Creating a Firebase project
4. Configuring Firebase for Android
5. Configuring Firebase for iOS
6. Installing the firebase_core and firebase_auth packages
7. Initializing the Firebase App
8. Running on iOS and updating Cocoapods
9. Futures, async and await
10. Signing in anonymously with Firebase
11. The FirebaseAuth singleton and private constructors
12. Explaining the short-hand syntax for callbacks
13. Error handling with try/catch

### 8. Full Authentication Flow, State Management & Dependency Injection

1. Preview of the sign-in and sign-out flow
2. Creating a landing page widget
3. Adding a Firebase User to the LandingPage
4. Adding a callback to the SignInPage
5. Hooking up the onSignIn callback
6. Creating the home page
7. Adding the sign-out functionality
8. Hooking up the onSignOut callback
9.  Retrieving the current user when the app starts
10. Explaining global access and scoped access
11. Creating the Auth class
12. The abstract AuthBase class
13. Using the Auth class
14. Lifting state up and its drawbacks
15. State Management & App Architecture

### 9. Streams and StreamBuilder

1. Introduction to Streams
2. Streams in practice with DartPad
3. Handling errors and closing streams
4. The authStateChanges stream
5. Listening to the authStateChanges stream
6. Adding the StreamBuilder code
7. More on StreamBuilder
8. Refactoring the sign-in flows
9. Wrap-up on Streams and StreamBuilder

### 10. Google and Facebook sign-in

1. Overview of the Firebase sign-in methods
2. Enabling support for Google Sign In
3. Adding Google Sign-In to the Auth class
4. Hooking up Google Sign-In to our button
5. Configuring Google Sign-In on iOS
6. Google Sign-In flow explained
7. Supporting Google Sign Out
8. Testing Google Sign-In on Android
9. Viewing registered users on the Firebase console
10. Registering a Facebook App
11. Enabling Facebook Sign-In on Firebase
12. Installing the Facebook login package
13. Enabling MultiDex support on Android
14. Adding the Facebook Sign-In code
15. Testing Facebook Sign-In on Android
16. Facebook iOS setup in Xcode
17. Testing Facebook Sign-In on iOS
18. Accessing the user's data and privacy considerations

### 11. Email & Password Sign-In + Handling Text Input

1. Preview of the email & password sign-in page
2. Creating the email & password sign-in page
3. Passing the BuildContext across methods
4. Introduction to navigation
5. Adding a Card widget
6. Adding the email and password text fields
7. Adding the submit buttons
8. Creating a FormSubmitButton widget
9. Adding a TextEditingController
10. Toggling the form type
11. Adding the email & password authentication code
12. Implementing the submit method
13. Testing email & password sign-in
14. Customising the email and password text fields
15. Using FocusNode and FocusScope
16. Disabling the submit button on empty email or password
17. Adding a StringValidator class
18. Adding an email and password validation mixin
19. Showing an error text when the email or password are invalid
20. Tweaking form submission
21. Simulating a slow network with a delay
22. Adding a loading state to our form
23. Updating the email focus logic
24. Fixing the vertical overflow on small screens
25. Wrap-up

### 12. Platform-aware widgets and dialogs

1. Introduction to dialogs
2. Showing a dialog
3. Dismissing dialogs
4. Platform-aware widgets on iOS, Android & more
5. Adding a reusable showAlertDialog function
6. Adding a sign-out confirmation dialog
7. Dialog differences on Android and iOS

### 13. Scoped Access with InheritedWidget and Provider

1. Introduction to InheritedWidget
2. Creating an AuthProvider
3. Accessing the Auth object via the AuthProvider
4. Adding the provider package
5. Using the Provider class
6. Wrap-up about scoped access and Provider

### 14. Polishing the Authentication flows

1. Module Introduction
2. Creating better user-facing errors with FirebaseAuthException
3. Creating a custom exception alert dialog
4. Showing error alerts in the SignInPage
5. Adding a loading state: overview
6. Adding a loading state to the SignInPage
7. Using the loading state in the SignInPage
8. The dispose method

### 15. BLoCs

1. Introduction to state management with BLoCs
2. The application layers
3. BLoCs, sinks, streams, and asynchronous code
4. Introduction to the SignInBloc
5. Implementing a simple BLoC
6. Adding a Bloc with Provider inside a static method
7. Adding the StreamBuilder code
8. Converting the SignInPage to a stateless widget
9. The difference between Provider.of and Consumer
10. Disposing BLoCs with Provider
11. Adding authentication code to the SignInBloc
12. Updating the SignInPage
13. Fixing the BLoC submit method
14. Summary on the BLoC basics
15. Introduction to the email sign-in flow with BLoC
16. Creating a model class for the EmailSignInForm
17. Creating the EmailSignInBloc with a StreamController
18. Updating the model
19. Adding the BLoC submit method
20. Setting up the EmailSignInFormBlocBased with Provider
21. Refactoring the EmailSignInFormBlocBased widget by removing the state variables
22. Moving the business logic to the BLoC class
23. Moving more business logic to the model class
24. The benefits of separation of concerns with BLoC
25. Using stateful widgets with TextEditingControllers
26. Considerations about performance
27. Blocs and Services in the widget tree

### 16. State Management with Provider

1. Recap on State Management
2. Introduction to ValueNotifier
3. Adding a ValueNotifier with ChangeNotifierProvider
4. Consumer and ChangeNotifierProvider explained
5. Differences between BLoC/streams and ValueNotifier/ChangeNotifierProvider
6. Introduction to ChangeNotifier
7. Adding the EmailSignInChangeModel class
8. Completing the EmailSignInChangeModel class
9. Implementing the email sign-in form with ChangeNotifier
10. Comparing ValueNotifier and ChangeNotifier
11. Wrap up on State Management
12. Wrap up on the Authentication Flows

### 17. Databases and Cloud Firestore

1. Overview of the time tracker app
2. Database schema and SQL vs NoSQL
3. Introduction to Cloud Firestore
4. Documents and Collections
5. Getting started with Firestore
6. Designing a Database API with CRUD operations
7. Managing private user data with Cloud Firestore
8. Installing Cloud Firestore
9. Renaming the HomePage to JobsPage
10. Adding the Database class
11. Adding the Database Provider
12. Adding a FloatingActionButton
13. Writing data to Firestore
14. Defining a strongly-typed Job model class
15. Defining a common API path class
16. Adding a generic setData method
17. Adding security rules
18. Handling Firestore permissions errors
19. Reading data from Firestore
20. Reading and parsing Firestore data streams
21. Adding a StreamBuilder to show a list of jobs
22. Debugging the StreamBuilder code
23. Firestore as a realtime database
24. Adding a factory constructor to our model class
25. Adding a generic method to read Firestore streams
26. Adding a FirestoreService class
27. Wrap-up on Cloud Firestore

### 18. Working with Forms and Cloud Firestore

1. Introduction to Forms with Cloud Firestore
2. Adding a new job page
3. The Placeholder widget
4. Introduction to Form and TextFormField
5. Validating and saving Form data
6. Accessing the Database object with the correct BuildContext
7. Saving jobs with a unique document ID
8. Handling errors
9. Enforcing unique job names
10. Fixing the integer-parsing code
11. Editing existing jobs: overview
12. Adding a custom JobListTile
13. Repurposing the AddJobPage for editing jobs
14. Reading the documentID from Firestore
15. Completing the code for editing jobs
16. Wrap up on working with Forms

### 19. Working with ListViews and multiple UI states

1. Intro and multiple states of UI
2. Adding an empty content widget
3. Adding a reusable list items builder
4. Using ListView.builder
5. Using ListView.separated
6. Deleting jobs from Firestore
7. Adding swipe to delete support

### 20. Working with Date & Time Pickers, more on Cloud Firestore

1. Working with entries: overview
2. Relational data & drawbacks of NoSQL databases
3. Getting ready to add new files
4. Adding the source files to the project
5. Connecting the new code and updating the Firestore rules
6. Fixing the EditJobPage navigation
7. Overview of the JobEntriesPage
8. Reading and writing entries with Firestore
9. The EntryListItem widget (using InkWell and Expanded)
10. Formatting dates and currencies with the Intl package
11. Dart as UI: Spreads and Collection-if
12. Using date pickers with stateful widgets
13. Date and time input with a custom UI and DateTimePicker
14. Updating the UI when a Job changes
15. Wrap up and CupertinoDatePicker

### 21. Bottom Navigation with the Cupertino widgets

1. Introduction to bottom navigation
2. Multiple navigation stacks
3. Creating a HomePage with a selected tab
4. Adding a CupertinoTabScaffold
5. Testing the bottom navigation
6. Adding the widget builders
7. Replacing the FloatingActionButtons
8. Moving the logout button to the AccountPage
9. Presenting modal routes with the root navigator
10. The CupertinoPageRoute
11. Handling the Android back button with WillPopScope and navigator keys
12. Adding pop-to-root navigation
13. Wrap up on multiple navigators

### 22. Advanced Stream Operations with RxDart

1. Introduction to advanced stream operations
2. Introduction to RxDart
3. Observable.combineLatest and data transformations in the time tracker app
4. Adding the source code for the new entries page
5. Reviewing the UI code for the entries page
6. Using combineLatest in practice
7. Data manipulation in the EntriesBloc
8. Wrap up on Observables
9. Single subscription vs broadcast streams
10. PublishSubject, ReplaySubject, BehaviorSubject
11. Adding a BehaviorSubject to the EmailSignInBloc
12. Wrap up and notes about local and remote state management

### 23. Completing the Time Tracker App

1. Completing the time tracker app: overview
2. Accessing the User object in the AccountPage
3. Adding an Avatar image
4. Finishing the Avatar code
5. Wrapping up the time tracker app

### 24. Unit & Widget Tests with Mockito

1. Introduction to writing tests
2. Testing Flutter Apps
3. Writing the first unit test
4. Running tests
5. Checking and fixing errors in tests
6. Testing edge cases by writing and fixing failing tests
7. Grouping tests together
8. The setUp method and testing date formatting with locales
9. The test lifecycle methods
10. Completing the formatting tests
11. Testing model classes
12. hashCode and the == operator
13. Adding a toString() method, wrap up on unit tests
14. Introduction to widget tests
15. Finding widgets and matcher arguments
16. Testing widget callbacks
17. Working with Acceptance Criteria
18. Introduction to test mocks and mockito
19. Injecting mock objects with Provider
20. Verifying mock methods
21. Working with keys, entering text and the pump() method
22. Testing widget updates on state changes
23. Completing the email sign-in tests
24. Replacing Navigator.pop with a callback when the user signs in
25. Updating the tests to handle the form callback
26. Stubbing mock objects
27. Recap on the email sign in forms and stubbing mocks
28. Using widget tests with StreamBuilder
29. Using StreamController inside tests
30. Adding a Database builder to the Landing Page
31. Test setup for the SignInPage
32. Adding keys to custom widget classes
33. Testing navigation
34. The great thing about widget tests
35. Testing ValueNotifier models
36. Testing ChangeNotifier models
37. Testing BloCs
38. Comparing EmailSignInModel objects
39. Testing streams in Blocs
40. Wrap up on unit & widget tests

### 25. Conclusion and Next Steps

1. Conclusion and Next Steps

---

## [License: MIT](LICENSE.md)

