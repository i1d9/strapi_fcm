

import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';




class Auth extends ChangeNotifier {
  /// Internal, private state of the cart.

  Map _auth = {};

  /// The current total price of all items (assuming all items cost $42).
  Map get auth => _auth;

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void save(Map detail) {
    auth = detail;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void saveFcm(fcm) {
    notifyListeners();
  }

  /// Removes all items from the cart.
  void delete() {
    _auth.clear();

    notifyListeners();
  }
}
