import 'dart:developer';

class SortListBy {
  static desc(List list, String sortKey) {
    List newList = list.toList();
    if (list.isNotEmpty) {
      newList.sort((a, b) => (a[sortKey]).compareTo(b[sortKey]));
      if (newList.isNotEmpty) {
        return newList.reversed.toList();
      } else {
        log(newList.toString());
      }
    }
  }

  static asce(List list, sortKey) {
    List newList = list;
    if (list.isNotEmpty) {
      newList.sort((a, b) => (a.sortKey).compareTo(b.sortkey));
      if (newList.isNotEmpty) {
        return newList.toList();
      } else {
        log(newList.toString());
      }
    }
  }
}
