abstract class IListView<T> {
  void append(T record, int pageKey, bool isLastPage);
  
  void refreshList();

  void pagedListError(dynamic error);
}