// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _ole32 = DynamicLibrary.open('ole32.dll');

/// Looks up a CLSID in the registry, given a ProgID.
///
/// ```c
/// HRESULT CLSIDFromProgID(
///   LPCOLESTR lpszProgID,
///   LPCLSID   lpclsid
/// );
/// ```
/// {@category ole32}
int CLSIDFromProgID(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid) =>
    _CLSIDFromProgID(lpszProgID, lpclsid);

late final _CLSIDFromProgID = _ole32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid),
    int Function(
        Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid)>('CLSIDFromProgID');

/// Triggers automatic installation if the COMClassStore policy is enabled.
///
/// ```c
/// HRESULT CLSIDFromProgIDEx(
///   LPCOLESTR lpszProgID,
///   LPCLSID   lpclsid
/// );
/// ```
/// {@category ole32}
int CLSIDFromProgIDEx(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid) =>
    _CLSIDFromProgIDEx(lpszProgID, lpclsid);

late final _CLSIDFromProgIDEx = _ole32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid),
    int Function(
        Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid)>('CLSIDFromProgIDEx');

/// Converts a string generated by the StringFromCLSID function back into
/// the original CLSID.
///
/// ```c
/// HRESULT CLSIDFromString(
///   LPCOLESTR lpsz,
///   LPCLSID   pclsid
/// );
/// ```
/// {@category ole32}
int CLSIDFromString(Pointer<Utf16> lpsz, Pointer<GUID> pclsid) =>
    _CLSIDFromString(lpsz, pclsid);

late final _CLSIDFromString = _ole32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpsz, Pointer<GUID> pclsid),
    int Function(Pointer<Utf16> lpsz, Pointer<GUID> pclsid)>('CLSIDFromString');

/// Increments a global per-process reference count.
///
/// ```c
/// ULONG CoAddRefServerProcess();
/// ```
/// {@category ole32}
int CoAddRefServerProcess() => _CoAddRefServerProcess();

late final _CoAddRefServerProcess = _ole32
    .lookupFunction<Uint32 Function(), int Function()>('CoAddRefServerProcess');

/// Creates a GUID, a unique 128-bit integer used for CLSIDs and interface
/// identifiers.
///
/// ```c
/// HRESULT CoCreateGuid(
///   GUID *pguid
/// );
/// ```
/// {@category ole32}
int CoCreateGuid(Pointer<GUID> pguid) => _CoCreateGuid(pguid);

late final _CoCreateGuid = _ole32.lookupFunction<
    Int32 Function(Pointer<GUID> pguid),
    int Function(Pointer<GUID> pguid)>('CoCreateGuid');

/// Creates a single uninitialized object of the class associated with a
/// specified CLSID. Call CoCreateInstance when you want to create only one
/// object on the local system. To create a single object on a remote
/// system, call the CoCreateInstanceEx function. To create multiple
/// objects based on a single CLSID, call the CoGetClassObject function.
///
/// ```c
/// HRESULT CoCreateInstance(
///   REFCLSID  rclsid,
///   LPUNKNOWN pUnkOuter,
///   DWORD     dwClsContext,
///   REFIID    riid,
///   LPVOID    *ppv
/// );
/// ```
/// {@category ole32}
int CoCreateInstance(Pointer<GUID> rclsid, Pointer<COMObject> pUnkOuter,
        int dwClsContext, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
    _CoCreateInstance(rclsid, pUnkOuter, dwClsContext, riid, ppv);

late final _CoCreateInstance = _ole32.lookupFunction<
    Int32 Function(Pointer<GUID> rclsid, Pointer<COMObject> pUnkOuter,
        Uint32 dwClsContext, Pointer<GUID> riid, Pointer<Pointer> ppv),
    int Function(
        Pointer<GUID> rclsid,
        Pointer<COMObject> pUnkOuter,
        int dwClsContext,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv)>('CoCreateInstance');

/// Provides a pointer to an interface on a class object associated with a
/// specified CLSID. CoGetClassObject locates, and if necessary,
/// dynamically loads the executable code required to do this.
///
/// ```c
/// HRESULT CoGetClassObject(
///   REFCLSID rclsid,
///   DWORD    dwClsContext,
///   LPVOID   pvReserved,
///   REFIID   riid,
///   LPVOID   *ppv
/// );
/// ```
/// {@category ole32}
int CoGetClassObject(Pointer<GUID> rclsid, int dwClsContext, Pointer pvReserved,
        Pointer<GUID> riid, Pointer<Pointer> ppv) =>
    _CoGetClassObject(rclsid, dwClsContext, pvReserved, riid, ppv);

late final _CoGetClassObject = _ole32.lookupFunction<
    Int32 Function(Pointer<GUID> rclsid, Uint32 dwClsContext,
        Pointer pvReserved, Pointer<GUID> riid, Pointer<Pointer> ppv),
    int Function(Pointer<GUID> rclsid, int dwClsContext, Pointer pvReserved,
        Pointer<GUID> riid, Pointer<Pointer> ppv)>('CoGetClassObject');

/// Returns a value that is unique to the current thread.
/// CoGetCurrentProcess can be used to avoid thread ID reuse problems.
///
/// ```c
/// DWORD CoGetCurrentProcess();
/// ```
/// {@category ole32}
int CoGetCurrentProcess() => _CoGetCurrentProcess();

late final _CoGetCurrentProcess = _ole32
    .lookupFunction<Uint32 Function(), int Function()>('CoGetCurrentProcess');

/// Initializes the COM library for use by the calling thread, sets the
/// thread's concurrency model, and creates a new apartment for the thread
/// if one is required.
///
/// ```c
/// HRESULT CoInitializeEx(
///   LPVOID pvReserved,
///   DWORD  dwCoInit
/// );
/// ```
/// {@category ole32}
int CoInitializeEx(Pointer pvReserved, int dwCoInit) =>
    _CoInitializeEx(pvReserved, dwCoInit);

late final _CoInitializeEx = _ole32.lookupFunction<
    Int32 Function(Pointer pvReserved, Uint32 dwCoInit),
    int Function(Pointer pvReserved, int dwCoInit)>('CoInitializeEx');

/// Registers security and sets the default security values for the
/// process.
///
/// ```c
/// HRESULT CoInitializeSecurity(
///   PSECURITY_DESCRIPTOR        pSecDesc,
///   LONG                        cAuthSvc,
///   SOLE_AUTHENTICATION_SERVICE *asAuthSvc,
///   void                        *pReserved1,
///   DWORD                       dwAuthnLevel,
///   DWORD                       dwImpLevel,
///   void                        *pAuthList,
///   DWORD                       dwCapabilities,
///   void                        *pReserved3
/// );
/// ```
/// {@category ole32}
int CoInitializeSecurity(
        Pointer<SECURITY_DESCRIPTOR> pSecDesc,
        int cAuthSvc,
        Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
        Pointer pReserved1,
        int dwAuthnLevel,
        int dwImpLevel,
        Pointer pAuthList,
        int dwCapabilities,
        Pointer pReserved3) =>
    _CoInitializeSecurity(pSecDesc, cAuthSvc, asAuthSvc, pReserved1,
        dwAuthnLevel, dwImpLevel, pAuthList, dwCapabilities, pReserved3);

late final _CoInitializeSecurity = _ole32.lookupFunction<
    Int32 Function(
        Pointer<SECURITY_DESCRIPTOR> pSecDesc,
        Int32 cAuthSvc,
        Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
        Pointer pReserved1,
        Uint32 dwAuthnLevel,
        Uint32 dwImpLevel,
        Pointer pAuthList,
        Int32 dwCapabilities,
        Pointer pReserved3),
    int Function(
        Pointer<SECURITY_DESCRIPTOR> pSecDesc,
        int cAuthSvc,
        Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
        Pointer pReserved1,
        int dwAuthnLevel,
        int dwImpLevel,
        Pointer pAuthList,
        int dwCapabilities,
        Pointer pReserved3)>('CoInitializeSecurity');

/// Sets the authentication information that will be used to make calls on
/// the specified proxy. This is a helper function for
/// IClientSecurity::SetBlanket.
///
/// ```c
/// HRESULT CoSetProxyBlanket(
///   IUnknown                 *pProxy,
///   DWORD                    dwAuthnSvc,
///   DWORD                    dwAuthzSvc,
///   OLECHAR                  *pServerPrincName,
///   DWORD                    dwAuthnLevel,
///   DWORD                    dwImpLevel,
///   RPC_AUTH_IDENTITY_HANDLE pAuthInfo,
///   DWORD                    dwCapabilities
/// );
/// ```
/// {@category ole32}
int CoSetProxyBlanket(
        Pointer<COMObject> pProxy,
        int dwAuthnSvc,
        int dwAuthzSvc,
        Pointer<Utf16> pServerPrincName,
        int dwAuthnLevel,
        int dwImpLevel,
        Pointer pAuthInfo,
        int dwCapabilities) =>
    _CoSetProxyBlanket(pProxy, dwAuthnSvc, dwAuthzSvc, pServerPrincName,
        dwAuthnLevel, dwImpLevel, pAuthInfo, dwCapabilities);

late final _CoSetProxyBlanket = _ole32.lookupFunction<
    Int32 Function(
        Pointer<COMObject> pProxy,
        Uint32 dwAuthnSvc,
        Uint32 dwAuthzSvc,
        Pointer<Utf16> pServerPrincName,
        Uint32 dwAuthnLevel,
        Uint32 dwImpLevel,
        Pointer pAuthInfo,
        Int32 dwCapabilities),
    int Function(
        Pointer<COMObject> pProxy,
        int dwAuthnSvc,
        int dwAuthzSvc,
        Pointer<Utf16> pServerPrincName,
        int dwAuthnLevel,
        int dwImpLevel,
        Pointer pAuthInfo,
        int dwCapabilities)>('CoSetProxyBlanket');

/// Allocates a block of task memory in the same way that IMalloc::Alloc
/// does.
///
/// ```c
/// LPVOID CoTaskMemAlloc(
///   SIZE_T cb
/// );
/// ```
/// {@category ole32}
Pointer CoTaskMemAlloc(int cb) => _CoTaskMemAlloc(cb);

late final _CoTaskMemAlloc = _ole32.lookupFunction<Pointer Function(IntPtr cb),
    Pointer Function(int cb)>('CoTaskMemAlloc');

/// Frees a block of task memory previously allocated through a call to the
/// CoTaskMemAlloc or CoTaskMemRealloc function.
///
/// ```c
/// void CoTaskMemFree(
///   _Frees_ptr_opt_ LPVOID pv
/// );
/// ```
/// {@category ole32}
void CoTaskMemFree(Pointer pv) => _CoTaskMemFree(pv);

late final _CoTaskMemFree =
    _ole32.lookupFunction<Void Function(Pointer pv), void Function(Pointer pv)>(
        'CoTaskMemFree');

/// Changes the size of a previously allocated block of task memory.
///
/// ```c
/// LPVOID CoTaskMemRealloc(
///   LPVOID pv,
///   SIZE_T cb
/// );
/// ```
/// {@category ole32}
Pointer CoTaskMemRealloc(Pointer pv, int cb) => _CoTaskMemRealloc(pv, cb);

late final _CoTaskMemRealloc = _ole32.lookupFunction<
    Pointer Function(Pointer pv, IntPtr cb),
    Pointer Function(Pointer pv, int cb)>('CoTaskMemRealloc');

/// Closes the COM library on the current thread, unloads all DLLs loaded
/// by the thread, frees any other resources that the thread maintains, and
/// forces all RPC connections on the thread to close.
///
/// ```c
/// void CoUninitialize();
/// ```
/// {@category ole32}
void CoUninitialize() => _CoUninitialize();

late final _CoUninitialize =
    _ole32.lookupFunction<Void Function(), void Function()>('CoUninitialize');

/// Waits for specified handles to be signaled or for a specified timeout
/// period to elapse.
///
/// ```c
/// HRESULT CoWaitForMultipleHandles(
///   DWORD    dwFlags,
///   DWORD    dwTimeout,
///   ULONG    cHandles,
///   LPHANDLE pHandles,
///   LPDWORD  lpdwindex
/// );
/// ```
/// {@category ole32}
int CoWaitForMultipleHandles(int dwFlags, int dwTimeout, int cHandles,
        Pointer<IntPtr> pHandles, Pointer<Uint32> lpdwindex) =>
    _CoWaitForMultipleHandles(
        dwFlags, dwTimeout, cHandles, pHandles, lpdwindex);

late final _CoWaitForMultipleHandles = _ole32.lookupFunction<
    Int32 Function(Uint32 dwFlags, Uint32 dwTimeout, Uint32 cHandles,
        Pointer<IntPtr> pHandles, Pointer<Uint32> lpdwindex),
    int Function(
        int dwFlags,
        int dwTimeout,
        int cHandles,
        Pointer<IntPtr> pHandles,
        Pointer<Uint32> lpdwindex)>('CoWaitForMultipleHandles');

/// A replacement for CoWaitForMultipleHandles. This replacement API hides
/// the options for CoWaitForMultipleHandles that are not supported in
/// ASTA.
///
/// ```c
/// HRESULT CoWaitForMultipleObjects(
///   DWORD        dwFlags,
///   DWORD        dwTimeout,
///   ULONG        cHandles,
///   const HANDLE *pHandles,
///   LPDWORD      lpdwindex
/// );
/// ```
/// {@category ole32}
int CoWaitForMultipleObjects(int dwFlags, int dwTimeout, int cHandles,
        Pointer<IntPtr> pHandles, Pointer<Uint32> lpdwindex) =>
    _CoWaitForMultipleObjects(
        dwFlags, dwTimeout, cHandles, pHandles, lpdwindex);

late final _CoWaitForMultipleObjects = _ole32.lookupFunction<
    Int32 Function(Uint32 dwFlags, Uint32 dwTimeout, Uint32 cHandles,
        Pointer<IntPtr> pHandles, Pointer<Uint32> lpdwindex),
    int Function(
        int dwFlags,
        int dwTimeout,
        int cHandles,
        Pointer<IntPtr> pHandles,
        Pointer<Uint32> lpdwindex)>('CoWaitForMultipleObjects');

/// Converts a string generated by the StringFromIID function back into the
/// original interface identifier (IID).
///
/// ```c
/// HRESULT IIDFromString(
///   LPCOLESTR lpsz,
///   LPIID     lpiid
/// );
/// ```
/// {@category ole32}
int IIDFromString(Pointer<Utf16> lpsz, Pointer<GUID> lpiid) =>
    _IIDFromString(lpsz, lpiid);

late final _IIDFromString = _ole32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpsz, Pointer<GUID> lpiid),
    int Function(Pointer<Utf16> lpsz, Pointer<GUID> lpiid)>('IIDFromString');

/// Initializes the COM library on the current apartment, and identifies
/// the concurrency model as single-thread apartment (STA). Applications
/// must initialize the COM library before they can call COM library
/// functions other than CoGetMalloc and memory allocation functions.
///
/// ```c
/// HRESULT OleInitialize(
///   LPVOID pvReserved
/// );
/// ```
/// {@category ole32}
int OleInitialize(Pointer pvReserved) => _OleInitialize(pvReserved);

late final _OleInitialize = _ole32.lookupFunction<
    Int32 Function(Pointer pvReserved),
    int Function(Pointer pvReserved)>('OleInitialize');

/// Closes the COM library on the apartment, releases any class factories,
/// other COM objects, or servers held by the apartment, disables RPC on
/// the apartment, and frees any resources the apartment maintains.
///
/// ```c
/// void OleUninitialize();
/// ```
/// {@category ole32}
void OleUninitialize() => _OleUninitialize();

late final _OleUninitialize =
    _ole32.lookupFunction<Void Function(), void Function()>('OleUninitialize');

/// Retrieves the ProgID for a given CLSID.
///
/// ```c
/// HRESULT ProgIDFromCLSID(
///   REFCLSID clsid,
///   LPOLESTR *lplpszProgID
/// );
/// ```
/// {@category ole32}
int ProgIDFromCLSID(
        Pointer<GUID> clsid, Pointer<Pointer<Utf16>> lplpszProgID) =>
    _ProgIDFromCLSID(clsid, lplpszProgID);

late final _ProgIDFromCLSID = _ole32.lookupFunction<
    Int32 Function(Pointer<GUID> clsid, Pointer<Pointer<Utf16>> lplpszProgID),
    int Function(Pointer<GUID> clsid,
        Pointer<Pointer<Utf16>> lplpszProgID)>('ProgIDFromCLSID');

/// Converts a CLSID into a string of printable characters. Different
/// CLSIDs always convert to different strings.
///
/// ```c
/// HRESULT StringFromCLSID(
///   REFCLSID rclsid,
///   LPOLESTR *lplpsz
/// );
/// ```
/// {@category ole32}
int StringFromCLSID(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz) =>
    _StringFromCLSID(rclsid, lplpsz);

late final _StringFromCLSID = _ole32.lookupFunction<
    Int32 Function(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz),
    int Function(Pointer<GUID> rclsid,
        Pointer<Pointer<Utf16>> lplpsz)>('StringFromCLSID');

/// Converts a globally unique identifier (GUID) into a string of printable
/// characters.
///
/// ```c
/// int StringFromGUID2(
///   REFGUID  rguid,
///   LPOLESTR lpsz,
/// int      cchMax
/// );
/// ```
/// {@category ole32}
int StringFromGUID2(Pointer<GUID> rguid, Pointer<Utf16> lpsz, int cchMax) =>
    _StringFromGUID2(rguid, lpsz, cchMax);

late final _StringFromGUID2 = _ole32.lookupFunction<
    Int32 Function(Pointer<GUID> rguid, Pointer<Utf16> lpsz, Int32 cchMax),
    int Function(Pointer<GUID> rguid, Pointer<Utf16> lpsz,
        int cchMax)>('StringFromGUID2');

/// Converts an interface identifier into a string of printable characters.
///
/// ```c
/// HRESULT StringFromIID(
///   REFIID   rclsid,
///   LPOLESTR *lplpsz
/// );
/// ```
/// {@category ole32}
int StringFromIID(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz) =>
    _StringFromIID(rclsid, lplpsz);

late final _StringFromIID = _ole32.lookupFunction<
    Int32 Function(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz),
    int Function(
        Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz)>('StringFromIID');
