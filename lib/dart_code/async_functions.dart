import 'dart:async';

void main(List<String> args) {
  asyncTask().then((value) {
    print(value);
  });

  completerTask().then((value) {
    print(value);
  });

  print('Code execution finished.');
}

Future<String> asyncTask() async {
  final result = await Future<String>.delayed(
    const Duration(seconds: 5),
    () {
      return 'Hello!';
    },
  );

  print('Async task finished.');

  return result;
}

Future<String> completerTask() {
  final completer = Completer<String>();

  Future<String>.delayed(
    const Duration(seconds: 5),
    () {
      return 'Hello world!';
    },
  ).then((value) {
    completer.complete(value);
  }).catchError((e) {
    completer.completeError(e);
  });

  print('Completer task finished.');

  return completer.future;
}
