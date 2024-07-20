// Struct sizes are a mapping of name to 64-bit struct sizes. The easiest way to
// generate the map is by compiling and running struct_sizes.cpp on a 64-bit
// machine architecture, and copying the resultant output directly into this
// file.

const structSizeMap = <String, int>{
  'GUID': 16,
  'PROPERTYKEY': 20,
  'PROPVARIANT': 24,
  'VARIANT': 24,
  'ACCEL': 6,
  'ACL': 8,
  'ACTCTX': 56,
  'ADDJOB_INFO_1': 16,
  'ADDRINFO': 48,
  'ALTTABINFO': 40,
  'APPX_PACKAGE_SETTINGS': 16,
  'ARRAYDESC': 32,
  'ASSEMBLYMETADATA': 56,
  'AudioClientProperties': 16,
  'BIND_OPTS': 16,
  'BITMAP': 32,
  'BITMAPFILEHEADER': 14,
  'BITMAPINFO': 44,
  'BITMAPINFOHEADER': 40,
  'BLENDFUNCTION': 4,
  'BLUETOOTH_ADDRESS': 8,
  'BLUETOOTH_AUTHENTICATE_RESPONSE': 48,
  'BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS': 576,
  'BLUETOOTH_COD_PAIRS': 16,
  'BLUETOOTH_DEVICE_INFO': 560,
  'BLUETOOTH_DEVICE_SEARCH_PARAMS': 40,
  'BLUETOOTH_FIND_RADIO_PARAMS': 4,
  'BLUETOOTH_GATT_VALUE_CHANGED_EVENT': 24,
  'BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION': 40,
  'BLUETOOTH_NUMERIC_COMPARISON_INFO': 4,
  'BLUETOOTH_OOB_DATA_INFO': 32,
  'BLUETOOTH_PASSKEY_INFO': 4,
  'BLUETOOTH_PIN_INFO': 17,
  'BLUETOOTH_RADIO_INFO': 520,
  'BLUETOOTH_SELECT_DEVICE_PARAMS': 88,
  'BSMINFO': 32,
  'BTH_DEVICE_INFO': 272,
  'BTH_HCI_EVENT_INFO': 16,
  'BTH_L2CAP_EVENT_INFO': 16,
  'BTH_LE_GATT_CHARACTERISTIC': 36,
  'BTH_LE_GATT_CHARACTERISTIC_VALUE': 8,
  'BTH_LE_GATT_DESCRIPTOR': 32,
  'BTH_LE_GATT_DESCRIPTOR_VALUE': 80,
  'BTH_LE_GATT_SERVICE': 24,
  'BTH_LE_UUID': 20,
  'BTH_QUERY_DEVICE': 5,
  'BTH_QUERY_SERVICE': 256,
  'BTH_RADIO_IN_RANGE': 280,
  'BTH_SET_SERVICE': 45,
  'BY_HANDLE_FILE_INFORMATION': 52,
  'CACHE_DESCRIPTOR': 12,
  'CBTACTIVATESTRUCT': 16,
  'CBT_CREATEWND': 16,
  'CERT_CONTEXT': 40,
  'CERT_EXTENSION': 32,
  'CERT_INFO': 208,
  'CERT_PUBLIC_KEY_INFO': 48,
  'CHANGEFILTERSTRUCT': 8,
  'CHAR_INFO': 4,
  'CHOOSECOLOR': 72,
  'CHOOSEFONT': 104,
  'CLIENT_ID': 16,
  'COLORADJUSTMENT': 24,
  'COMDLG_FILTERSPEC': 16,
  'COMMCONFIG': 52,
  'COMMPROP': 64,
  'COMMTIMEOUTS': 20,
  'COMSTAT': 12,
  'CONSOLE_CURSOR_INFO': 8,
  'CONSOLE_READCONSOLE_CONTROL': 16,
  'CONSOLE_SCREEN_BUFFER_INFO': 22,
  'CONSOLE_SELECTION_INFO': 16,
  'COORD': 4,
  'COR_FIELD_OFFSET': 8,
  'CREATEFILE2_EXTENDED_PARAMETERS': 32,
  'CREATESTRUCT': 80,
  'CREDENTIAL': 80,
  'CREDENTIAL_ATTRIBUTE': 24,
  'CRYPTPROTECT_PROMPTSTRUCT': 24,
  'CRYPT_ALGORITHM_IDENTIFIER': 24,
  'CRYPT_BIT_BLOB': 24,
  'CRYPT_INTEGER_BLOB': 16,
  'CURSORINFO': 24,
  'CWPRETSTRUCT': 40,
  'CWPSTRUCT': 32,
  'CY': 8,
  'DCB': 28,
  'DEBUGHOOKINFO': 32,
  'DECIMAL': 16,
  'DESIGNVECTOR': 72,
  'DEVMODE': 220,
  'DIBSECTION': 104,
  'DISK_EXTENT': 24,
  'DISK_GEOMETRY': 24,
  'DISK_GEOMETRY_EX': 40,
  'DISPLAYCONFIG_2DREGION': 8,
  'DISPLAYCONFIG_DESKTOP_IMAGE_INFO': 40,
  'DISPLAYCONFIG_DEVICE_INFO_HEADER': 20,
  'DISPLAYCONFIG_MODE_INFO': 64,
  'DISPLAYCONFIG_PATH_INFO': 72,
  'DISPLAYCONFIG_PATH_SOURCE_INFO': 20,
  'DISPLAYCONFIG_PATH_TARGET_INFO': 48,
  'DISPLAYCONFIG_RATIONAL': 8,
  'DISPLAYCONFIG_SOURCE_MODE': 20,
  'DISPLAYCONFIG_TARGET_MODE': 48,
  'DISPLAYCONFIG_VIDEO_SIGNAL_INFO': 48,
  'DISPLAY_DEVICE': 840,
  'DISPPARAMS': 24,
  'DLGITEMTEMPLATE': 18,
  'DLGTEMPLATE': 18,
  'DLLVERSIONINFO': 20,
  'DOC_INFO_1': 24,
  'DOT11_AUTH_CIPHER_PAIR': 8,
  'DOT11_BSSID_LIST': 20,
  'DOT11_NETWORK': 40,
  'DOT11_NETWORK_LIST': 48,
  'DOT11_SSID': 36,
  'DRAWTEXTPARAMS': 20,
  'DSREG_JOIN_INFO': 96,
  'DSREG_USER_INFO': 24,
  'DTBGOPTS': 24,
  'DTTOPTS': 72,
  'DWM_BLURBEHIND': 20,
  'EAP_METHOD_TYPE': 16,
  'EAP_TYPE': 12,
  'ELEMDESC': 32,
  'ENUMLOGFONTEX': 348,
  'ENUM_PAGE_FILE_INFORMATION': 32,
  'ENUM_SERVICE_STATUS': 48,
  'ENUM_SERVICE_STATUS_PROCESS': 56,
  'EVENTMSG': 24,
  'EXCEPINFO': 64,
  'ExtendedProperty': 16,
  'FD_SET': 520,
  'FILETIME': 8,
  'FILE_SEGMENT_ELEMENT': 8,
  'FINDREPLACE': 80,
  'FOCUS_EVENT_RECORD': 4,
  'FUNCDESC': 88,
  'GESTURECONFIG': 12,
  'GESTUREINFO': 56,
  'GESTURENOTIFYSTRUCT': 24,
  'GUITHREADINFO': 72,
  'HARDWAREINPUT': 8,
  'HOSTENT': 32,
  'HWAVEIN': 8,
  'ICONINFO': 32,
  'ICONINFOEX': 1080,
  'IDLDESC': 16,
  'INITCOMMONCONTROLSEX': 8,
  'INPUT': 40,
  'INPUT_RECORD': 20,
  'INPUT_TRANSFORM': 64,
  'IN_ADDR': 4,
  'IP_ADAPTER_ADDRESSES_LH': 448,
  'IP_ADAPTER_ANYCAST_ADDRESS_XP': 32,
  'IP_ADAPTER_DNS_SERVER_ADDRESS_XP': 32,
  'IP_ADAPTER_DNS_SUFFIX': 520,
  'IP_ADAPTER_GATEWAY_ADDRESS_LH': 32,
  'IP_ADAPTER_INDEX_MAP': 260,
  'IP_ADAPTER_MULTICAST_ADDRESS_XP': 32,
  'IP_ADAPTER_PREFIX_XP': 40,
  'IP_ADAPTER_UNICAST_ADDRESS_LH': 64,
  'IP_ADAPTER_WINS_SERVER_ADDRESS_LH': 32,
  'IP_ADDRESS_STRING': 16,
  'IP_ADDR_STRING': 48,
  'IP_INTERFACE_INFO': 264,
  'IP_PER_ADAPTER_INFO_W2KSP1': 64,
  'ITEMIDLIST': 3,
  'JOBOBJECT_IO_RATE_CONTROL_INFORMATION': 40,
  'JOB_INFO_1': 96,
  'KBDLLHOOKSTRUCT': 24,
  'KEYBDINPUT': 24,
  'KEY_EVENT_RECORD': 16,
  'KNOWNFOLDER_DEFINITION': 112,
  'L2_NOTIFICATION_DATA': 40,
  'LASTINPUTINFO': 8,
  'LOGBRUSH': 16,
  'LOGFONT': 92,
  'LOGPALETTE': 8,
  'LUID': 8,
  'MAGCOLOREFFECT': 100,
  'MAGIMAGEHEADER': 40,
  'MAGTRANSFORM': 36,
  'MARGINS': 16,
  'MCI_OPEN_PARMS': 36,
  'MCI_PLAY_PARMS': 16,
  'MCI_SEEK_PARMS': 12,
  'MCI_STATUS_PARMS': 24,
  'MEMORYSTATUSEX': 64,
  'MEMORY_BASIC_INFORMATION': 48,
  'MENUBARINFO': 48,
  'MENUINFO': 40,
  'MENUITEMINFO': 80,
  'MENUITEMTEMPLATE': 6,
  'MENUITEMTEMPLATEHEADER': 4,
  'MENU_EVENT_RECORD': 4,
  'METAFILEPICT': 24,
  'MIDIEVENT': 16,
  'MIDIHDR': 112,
  'MIDIINCAPS': 76,
  'MIDIOUTCAPS': 84,
  'MIDIPROPTEMPO': 8,
  'MIDIPROPTIMEDIV': 8,
  'MIDISTRMBUFFVER': 12,
  'MINMAXINFO': 40,
  'MMTIME': 12,
  'MODEMDEVCAPS': 80,
  'MODEMSETTINGS': 48,
  'MODLOAD_DATA': 24,
  'MODULEINFO': 24,
  'MONITORINFO': 40,
  'MONITORINFOEX': 104,
  'MOUSEHOOKSTRUCT': 32,
  'MOUSEHOOKSTRUCTEX': 40,
  'MOUSEINPUT': 32,
  'MOUSEMOVEPOINT': 24,
  'MOUSE_EVENT_RECORD': 16,
  'MSG': 48,
  'MSLLHOOKSTRUCT': 32,
  'NCCALCSIZE_PARAMS': 56,
  'NDIS_OBJECT_HEADER': 4,
  'NET_LUID_LH': 8,
  'NEWTEXTMETRIC': 76,
  'NLM_SIMULATED_PROFILE_INFO': 524,
  'NONCLIENTMETRICS': 504,
  'NOTIFYICONDATA': 976,
  'OPENCARDNAME': 176,
  'OPENCARDNAME_EX': 128,
  'OPENCARD_SEARCH_CRITERIA': 96,
  'OPENFILENAME': 152,
  'OSINFO': 12,
  'OSVERSIONINFOEX': 284,
  'OSVERSIONINFO': 276,
  'OVERLAPPED': 32,
  'OVERLAPPED_ENTRY': 32,
  'PAINTSTRUCT': 72,
  'PALETTEENTRY': 4,
  'PARAMDESC': 16,
  'PARAMDESCEX': 32,
  'PERFORMANCE_INFORMATION': 104,
  'PHYSICAL_MONITOR': 264,
  'POINT': 8,
  'POINTER_INFO': 96,
  'POINTER_PEN_INFO': 120,
  'POINTER_TOUCH_INFO': 144,
  'POINTL': 8,
  'POINTS': 4,
  'POLYTEXT': 56,
  'PORT_INFO_1': 8,
  'PORT_INFO_2': 32,
  'POWERBROADCAST_SETTING': 24,
  'PRINTER_DEFAULTS': 24,
  'PRINTER_INFO_1': 32,
  'PRINTER_INFO_2': 136,
  'PRINTER_INFO_3': 8,
  'PRINTER_INFO_4': 24,
  'PRINTER_INFO_5': 32,
  'PRINTER_INFO_6': 4,
  'PRINTER_NOTIFY_INFO': 48,
  'PRINTER_NOTIFY_INFO_DATA': 32,
  'PRINTER_OPTIONS': 8,
  'PRINT_EXECUTION_DATA': 8,
  'PROCESS_HEAP_ENTRY': 40,
  'PROCESS_INFORMATION': 24,
  'PROPSPEC': 16,
  'PROTOENT': 24,
  'QUERY_SERVICE_CONFIG': 64,
  'QUERY_SERVICE_LOCK_STATUS': 24,
  'RAWHID': 12,
  'RAWINPUT': 48,
  'RAWINPUTDEVICE': 16,
  'RAWINPUTDEVICELIST': 16,
  'RAWINPUTHEADER': 24,
  'RAWKEYBOARD': 16,
  'RAWMOUSE': 24,
  'RECT': 16,
  'RECTL': 16,
  'RGBQUAD': 4,
  'SAFEARRAY': 32,
  'SAFEARRAYBOUND': 8,
  'SCARD_ATRMASK': 76,
  'SCARD_IO_REQUEST': 8,
  'SCARD_READERSTATE': 64,
  'SCROLLBARINFO': 60,
  'SCROLLINFO': 28,
  'SC_ACTION': 8,
  'SDP_ELEMENT_DATA': 24,
  'SDP_LARGE_INTEGER_16': 16,
  'SDP_STRING_TYPE_DATA': 6,
  'SDP_ULARGE_INTEGER_16': 16,
  'SECURITY_ATTRIBUTES': 24,
  'SECURITY_DESCRIPTOR': 40,
  'SERVENT': 32,
  'SERVICE_CONTROL_STATUS_REASON_PARAMS': 56,
  'SERVICE_DELAYED_AUTO_START_INFO': 4,
  'SERVICE_DESCRIPTION': 8,
  'SERVICE_FAILURE_ACTIONS': 40,
  'SERVICE_FAILURE_ACTIONS_FLAG': 4,
  'SERVICE_LAUNCH_PROTECTED_INFO': 4,
  'SERVICE_NOTIFY_2': 80,
  'SERVICE_PREFERRED_NODE_INFO': 4,
  'SERVICE_PRESHUTDOWN_INFO': 4,
  'SERVICE_REQUIRED_PRIVILEGES_INFO': 8,
  'SERVICE_SID_INFO': 4,
  'SERVICE_STATUS': 28,
  'SERVICE_STATUS_PROCESS': 36,
  'SERVICE_TABLE_ENTRY': 16,
  'SERVICE_TIMECHANGE_INFO': 16,
  'SERVICE_TRIGGER': 32,
  'SERVICE_TRIGGER_INFO': 24,
  'SERVICE_TRIGGER_SPECIFIC_DATA_ITEM': 16,
  'SHELLEXECUTEINFO': 112,
  'SHELL_ITEM_RESOURCE': 536,
  'SHFILEINFO': 696,
  'SHFILEOPSTRUCT': 56,
  'SHITEMID': 3,
  'SHQUERYRBINFO': 24,
  'SIZE': 8,
  'SMALL_RECT': 8,
  'SOCKADDR': 16,
  'SOCKADDR_BTH': 30,
  'SOCKET_ADDRESS': 16,
  'SOLE_AUTHENTICATION_SERVICE': 24,
  'SPEVENT': 32,
  'SPEVENTSOURCEINFO': 24,
  'SPVOICESTATUS': 52,
  'SP_DEVICE_INTERFACE_DATA': 32,
  'SP_DEVICE_INTERFACE_DETAIL_DATA_': 8,
  'SP_DEVINFO_DATA': 32,
  'STARTUPINFOEX': 112,
  'STARTUPINFO': 104,
  'STATPROPSETSTG': 64,
  'STATPROPSTG': 16,
  'STATSTG': 80,
  'STORAGE_DEVICE_NUMBER': 12,
  'STRRET': 272,
  'STYLESTRUCT': 8,
  'SYMBOL_INFO': 88,
  'SYSTEMTIME': 16,
  'SYSTEM_BASIC_INFORMATION': 64,
  'SYSTEM_BATTERY_STATE': 32,
  'SYSTEM_CODEINTEGRITY_INFORMATION': 8,
  'SYSTEM_EXCEPTION_INFORMATION': 16,
  'SYSTEM_INFO': 48,
  'SYSTEM_INTERRUPT_INFORMATION': 24,
  'SYSTEM_LOGICAL_PROCESSOR_INFORMATION': 32,
  'SYSTEM_LOOKASIDE_INFORMATION': 32,
  'SYSTEM_PERFORMANCE_INFORMATION': 312,
  'SYSTEM_POLICY_INFORMATION': 32,
  'SYSTEM_POWER_STATUS': 12,
  'SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION': 48,
  'SYSTEM_PROCESS_INFORMATION': 256,
  'SYSTEM_REGISTRY_QUOTA_INFORMATION': 16,
  'SYSTEM_THREAD_INFORMATION': 80,
  'SYSTEM_TIMEOFDAY_INFORMATION': 48,
  'SdpAttributeRange': 4,
  'SdpQueryUuid': 20,
  'SdpQueryUuidUnion': 16,
  'TASKDIALOGCONFIG': 160,
  'TASKDIALOG_BUTTON': 12,
  'TEXTMETRIC': 60,
  'TIMEVAL': 8,
  'TITLEBARINFO': 44,
  'TITLEBARINFOEX': 140,
  'TOKEN_APPCONTAINER_INFORMATION': 8,
  'TOUCHINPUT': 48,
  'TOUCHPREDICTIONPARAMETERS': 16,
  'TPMPARAMS': 20,
  'TYPEATTR': 96,
  'TYPEDESC': 16,
  'UNICODE_STRING': 16,
  'UNSIGNED_RATIO': 8,
  'UPDATELAYEREDWINDOWINFO': 80,
  'VALENT': 32,
  'VARDESC': 64,
  'VOLUME_DISK_EXTENTS': 32,
  'VS_FIXEDFILEINFO': 52,
  'WAVEFORMATEX': 18,
  'WAVEFORMATEXTENSIBLE': 40,
  'WAVEHDR': 48,
  'WAVEINCAPS': 80,
  'WAVEOUTCAPS': 84,
  'WIN32_FIND_DATA': 592,
  'WINDOWINFO': 60,
  'WINDOWPLACEMENT': 44,
  'WINDOWPOS': 40,
  'WINDOW_BUFFER_SIZE_RECORD': 4,
  'WLAN_ASSOCIATION_ATTRIBUTES': 68,
  'WLAN_AUTH_CIPHER_PAIR_LIST': 12,
  'WLAN_AVAILABLE_NETWORK': 628,
  'WLAN_AVAILABLE_NETWORK_LIST': 636,
  'WLAN_BSS_ENTRY': 360,
  'WLAN_BSS_LIST': 368,
  'WLAN_CONNECTION_ATTRIBUTES': 604,
  'WLAN_CONNECTION_NOTIFICATION_DATA': 572,
  'WLAN_CONNECTION_PARAMETERS': 40,
  'WLAN_COUNTRY_OR_REGION_STRING_LIST': 8,
  'WLAN_DEVICE_SERVICE_GUID_LIST': 24,
  'WLAN_DEVICE_SERVICE_NOTIFICATION_DATA': 28,
  'WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS': 40,
  'WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE': 28,
  'WLAN_HOSTED_NETWORK_PEER_STATE': 12,
  'WLAN_HOSTED_NETWORK_RADIO_STATE': 8,
  'WLAN_HOSTED_NETWORK_SECURITY_SETTINGS': 8,
  'WLAN_HOSTED_NETWORK_STATE_CHANGE': 12,
  'WLAN_HOSTED_NETWORK_STATUS': 52,
  'WLAN_INTERFACE_CAPABILITY': 276,
  'WLAN_INTERFACE_INFO': 532,
  'WLAN_INTERFACE_INFO_LIST': 540,
  'WLAN_MAC_FRAME_STATISTICS': 96,
  'WLAN_MSM_NOTIFICATION_DATA': 580,
  'WLAN_PHY_FRAME_STATISTICS': 144,
  'WLAN_PHY_RADIO_STATE': 12,
  'WLAN_PROFILE_INFO': 516,
  'WLAN_PROFILE_INFO_LIST': 524,
  'WLAN_RADIO_STATE': 772,
  'WLAN_RATE_SET': 256,
  'WLAN_RAW_DATA': 8,
  'WLAN_RAW_DATA_LIST': 16,
  'WLAN_SECURITY_ATTRIBUTES': 16,
  'WLAN_STATISTICS': 368,
  'WNDCLASSEX': 80,
  'WNDCLASS': 72,
  'WTA_OPTIONS': 8,
  'XFORM': 24,
  'XINPUT_BATTERY_INFORMATION': 2,
  'XINPUT_CAPABILITIES': 20,
  'XINPUT_GAMEPAD': 12,
  'XINPUT_KEYSTROKE': 8,
  'XINPUT_STATE': 16,
  'XINPUT_VIBRATION': 4,
};
