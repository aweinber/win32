// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final audioclient3 = IAudioClient3(ptr);
  test('Can instantiate IAudioClient3.getSharedModeEnginePeriod', () {
    expect(audioclient3.getSharedModeEnginePeriod, isA<Function>());
  });
  test('Can instantiate IAudioClient3.getCurrentSharedModeEnginePeriod', () {
    expect(audioclient3.getCurrentSharedModeEnginePeriod, isA<Function>());
  });
  test('Can instantiate IAudioClient3.initializeSharedAudioStream', () {
    expect(audioclient3.initializeSharedAudioStream, isA<Function>());
  });

  free(ptr);
}
