// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Capture a multiple display screenshots.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  for (final display in Displays.all()) {
    if (display.isTurnOn) {
      display.saveScreenshot("${display.name}.bmp");
    }
  }
}

class Displays {
  static Iterable<Display> all() sync* {
    final device = calloc<DISPLAY_DEVICE>()..ref.cb = sizeOf<DISPLAY_DEVICE>();
    var deviceIndex = 0;

    while (EnumDisplayDevices(nullptr, deviceIndex, device.cast(), 0) != 0) {
      final isTurnOn = device.ref.StateFlags != 0;
      yield Display(device.ref.DeviceName, isTurnOn);
      deviceIndex++;
    }
  }
}

class Display {
  final String rawName;
  final bool isTurnOn;

  Display(this.rawName, this.isTurnOn);

  void saveScreenshot(String fileName) {
    final hdcScreen = _createDC();
    try {
      final hbmScreen = _createScreenshot(hdcScreen);
      _saveToFile(fileName, hdcScreen, hbmScreen);
    } finally {
      ReleaseDC(NULL, hdcScreen);
    }
  }

  int _createDC() {
    return CreateDC(nullptr, rawName.toNativeUtf16(), nullptr, nullptr);
  }

  int _createScreenshot(int hdcScreen) {
    final hdcMemDC = CreateCompatibleDC(hdcScreen);

    final width = GetDeviceCaps(hdcScreen, HORZRES);
    final height = GetDeviceCaps(hdcScreen, VERTRES);

    try {
      final hbmScreen = CreateCompatibleBitmap(hdcScreen, width, height);
      SelectObject(hdcMemDC, hbmScreen);
      BitBlt(hdcMemDC, 0, 0, width, height, hdcScreen, 0, 0, SRCCOPY);
      return hbmScreen;
    } finally {
      DeleteObject(hdcMemDC);
    }
  }

  void _saveToFile(String fileName, int hdcScreen, int hbmScreen) {
    final bmpScreen = calloc<BITMAP>();
    GetObject(hbmScreen, sizeOf<BITMAP>(), bmpScreen);

    final bitmapFileHeader = calloc<BITMAPFILEHEADER>();
    final bitmapInfoHeader = calloc<BITMAPINFOHEADER>()
      ..ref.biSize = sizeOf<BITMAPINFOHEADER>()
      ..ref.biWidth = bmpScreen.ref.bmWidth
      ..ref.biHeight = bmpScreen.ref.bmHeight
      ..ref.biPlanes = 1
      ..ref.biBitCount = 32
      ..ref.biCompression = BI_RGB;

    final dwBmpSize =
        ((bmpScreen.ref.bmWidth * bitmapInfoHeader.ref.biBitCount + 31) /
                32 *
                4 *
                bmpScreen.ref.bmHeight)
            .toInt();

    final lpBitmap = calloc<Uint8>(dwBmpSize);

    GetDIBits(hdcScreen, hbmScreen, 0, bmpScreen.ref.bmHeight, lpBitmap,
        bitmapInfoHeader.cast(), DIB_RGB_COLORS);

    final hFile = CreateFile(TEXT(fileName), GENERIC_WRITE, 0, nullptr,
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);

    final dwSizeOfDIB =
        dwBmpSize + sizeOf<BITMAPFILEHEADER>() + sizeOf<BITMAPINFOHEADER>();
    bitmapFileHeader.ref.bfOffBits =
        sizeOf<BITMAPFILEHEADER>() + sizeOf<BITMAPINFOHEADER>();

    bitmapFileHeader.ref.bfSize = dwSizeOfDIB;
    bitmapFileHeader.ref.bfType = 0x4D42; // BM

    final dwBytesWritten = calloc<DWORD>();
    WriteFile(hFile, bitmapFileHeader.cast(), sizeOf<BITMAPFILEHEADER>(),
        dwBytesWritten, nullptr);
    WriteFile(hFile, bitmapInfoHeader.cast(), sizeOf<BITMAPINFOHEADER>(),
        dwBytesWritten, nullptr);
    WriteFile(hFile, lpBitmap, dwBmpSize, dwBytesWritten, nullptr);

    CloseHandle(hFile);
  }

  String get name => rawName.replaceAll(RegExp(r'[^a-zA-Z\d]'), "");
}
