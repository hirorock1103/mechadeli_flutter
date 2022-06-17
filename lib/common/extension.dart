import 'package:intl/intl.dart';

import 'constants.dart';

extension NullSafetyExtension<E> on Iterable<E> {
  E? elementAtOrNull(int index) {
    if (index < 0 || index >= length) {
      return null;
    }
    return elementAt(index);
  }
}

extension NullSafetyMapExtension<K, V> on Map<K, V> {
  V? getOrNull(K key) {
    if (containsKey(key)) {
      return this[key];
    }
    return null;
  }
}

String convertedDate(String birthday) {
  try {
    final formatDate = DateFormat('y-M-d').parseStrict(birthday);
    return DateFormat('y年M月d日').format(formatDate);
  } on FormatException catch (e) {
    // log.d('parse $birthday error: ${e.message}');
    return '';
  }
}

