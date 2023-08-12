## Getting started

[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

In order to use [Dart Frog](https://dartfrog.vgv.dev) you must have the [Dart SDK](https://dart.dev/get-dart) installed on your machine.

1. Install the dart_frog cli from [pub.dev](pub.dev):
   
    ``` sh
    dart pub global activate dart_frog_cli
    ```

    The output should be similar to:

    ```
    Building package executables... (1.5s)
    Built dart_frog_cli:dart_frog.
    Installed executable dart_frog.
    Activated dart_frog_cli 1.0.0.
    ```

2. Make sure the current directory is `flutter_networking_workshop/flutter_networking_api`:

    ```sh
    cd flutter_networking_workshop/flutter_networking_api
    ```

3. Start the dev server

    ```sh
    dart_frog dev
    ```

    The output should be similar to:

    ```
    ✓ Running on http://localhost:8080 (5.3s)
    The Dart VM service is listening on http://127.0.0.1:8181/QREPKLtYHxk=/
    The Dart DevTools debugger and profiler is available at: http://127.0.0.1:8181/QREPKLtYHxk=/devtools?uri=ws://127.0.0.1:8181/QREPKLtYHxk=/ws
    [hotreload] Hot reload is enabled.
    ```

    Open `http://127.0.0.1:8080/` in the browser. The webpage should display a `Welcome to the "Basic and advanced networking in Dart and Flutter" workshop!` message.

## Disclamer

This API is created as a complementary project for the [Basic and advanced networking in Dart and Flutter](../README.md) workshop by a developer with a strong focus on creating mobile applications and zero experience in backend development. The source code does not follow any best practices and should not be judged or used as an educational resource.
