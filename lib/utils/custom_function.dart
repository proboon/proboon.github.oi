import 'dart:async';

import 'dart:io';

bool hasConnection = false;
StreamController connectionChangeController = new StreamController.broadcast();

Future<bool> checkConnection() async {
  bool previousConnection = hasConnection;

  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      hasConnection = true;
    } else {
      hasConnection = false;
    }
  } on SocketException catch(_) {
    hasConnection = false;
  }
  //The connection status changed send out an update to all listeners
  if (previousConnection != hasConnection) {
    connectionChangeController.add(hasConnection);
  }
  return hasConnection;
}