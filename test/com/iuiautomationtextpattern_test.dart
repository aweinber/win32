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

  final uiautomationtextpattern = IUIAutomationTextPattern(ptr);
  test('Can instantiate IUIAutomationTextPattern.rangeFromPoint', () {
    expect(uiautomationtextpattern.rangeFromPoint, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextPattern.rangeFromChild', () {
    expect(uiautomationtextpattern.rangeFromChild, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextPattern.getSelection', () {
    expect(uiautomationtextpattern.getSelection, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextPattern.getVisibleRanges', () {
    expect(uiautomationtextpattern.getVisibleRanges, isA<Function>());
  });

  free(ptr);
}
