//adı olmak zorunda
// parsı olmak zorunda
// yasını vermeyebilir
// şehrini vermeyebilir
// city yoksa ist say
// id değişkenine sadece bu sınıf içinden erişebilsin

class User   {
  // özellikleri tanımmlayalım
  // late anlamı bu değişken sonrdan değerini bulacak

  late final String name;
  // hiçbir nesneyi başı boş tanımlanamaz dartta ne olduğunu belirtmemiz gererkir!!!!!
  late int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  late final String _id;

  User(String name, int money, {required String id, int? age, String? city}) {
    // yukarıda süslü parantez içine aldğımız int ve string şu anlama geliyır hiç gelmeyebilri
    // yani yukarıda tanımlarken null dememize gerek yoktur
    this.name = name;
    this.money = money;
    this.city = city;
    _id = id;
    userCode = (city ?? 'ist') + name;
  }
  bool isSpecialUser(String id) {
    return _id ==
        id; // isSpecial user in anlamı eşitse true değilse false döndürecek
  }

 // bool isEmptyId() {
   // return _id.isEmpty;
  //} aşaıdaki ile aynı

  bool get isEmptyId => _id.isEmpty; // değer çağrıldığında hesaplanır 
}
