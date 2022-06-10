main() {
  var list = [
    {"name": 'sdfasdf', 'id': 12}
  ];
  print(list);
  list.removeWhere(
    (element) => element["id"] == 12,
  );
  print(list);
}
