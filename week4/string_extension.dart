void main(List<String> args) {
  if ('ali'.isAdmin()) {
    print('object');
  }

  String? name;
  name.isAdmin();
}

// gelmezse kabul et
extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
