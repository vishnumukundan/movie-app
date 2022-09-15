import 'dart:developer';

class SortListBy {
  SortListBy(List movieVideoDummyData);

  static desc(List list, String sortKey) {
    List newList = list;
    newList.sort((a, b) => (a[sortKey]).compareTo(b[sortKey]));
    if (newList.isNotEmpty) {
      return newList.reversed.toList();
    } else {
      log(newList.toString());
    }
  }

  static asce(List list, String sortKey) {
    List newList = list;
    newList.sort((a, b) => (a[sortKey]).compareTo(b[sortKey]));
    if (newList.isNotEmpty) {
      return newList.toList();
    } else {
      log(newList.toString());
    }
  }
}
