class AddItemAction {
  String item;

  AddItemAction({this.item = ''});
}

class RemoveItemAction {
  String item;
}

class PerformSearchAction {
  String query;

  PerformSearchAction({this.query = ''});
}