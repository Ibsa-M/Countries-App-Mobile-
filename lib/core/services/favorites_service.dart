import 'package:hive_flutter/hive_flutter.dart';

class FavoritesService {
  final Box box = Hive.box('favorites');

  void toggleFavorite(String code) {
    if (box.containsKey(code)) {
      box.delete(code);
    } else {
      box.put(code, true);
    }
  }

  bool isFavorite(String code) {
    return box.containsKey(code);
  }

  List<String> getFavorites() {
    return box.keys.cast<String>().toList();
  }
}