import 'model/user_model.dart';
import 'model/user_model2.dart';

void main() {
  // müşteri adı,parası,yaşı, ,,...

  final int ahmetCustomerMoney = 50;
  final String customerName = 'veli';
  final int customerAge = 13;
  final String customerCity = 'erzurum';

  //bu müşterinin yaşı 10 dan büyükse bir işlem yapalım

  if (customerAge > 10) {
    print('alışveriş yapabilirsiniz');
  } else {
    print('alışveriş yapamazsınız');
  }

  // yeni bir müşteri geliyor

  final int ahmetCustomerMoney2 = 300;
  final String customerName2 = 'akif';
  final int customerAge2 = 9;
  final String customerCity2 = 'kocaeli';

  controlCustomerAge(customerAge2);

  // müşterilerin şehirlerini unutmuşuz tek tek eklemek zorunda kaldık
  // müşterileri gruplasak aynı özellikleri aynı şeklide göstersek buna class denir.

  // nottt!!!!!!!!
  print('denemek başladı');
  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 10);
  } else {
    print(10 + 10);
  }
  print('denemek bitti');
  // not bittiiiiiiiiiiiiii

  // bankaya 3 tane müşteri gelir birinin 100 tlsi var diğerinin hesabında hiç parası yok
  // diğerinin 0 tl si var sırasıyla hoşgeldin, yeni hesap aç ,kov
  // yeni bir method olsun bu methodda hesabı olmayanların parası da 0 tl olsun
  // + para verdiklerimize ekranda true yazalım

  List<int?> customermMoneys = [100, null, 0];
  for (var item in customermMoneys) {
    if (item != null) {
      if (item > 0) {
        print('hoş geldinizzz efendimiz');
      } else {
        print('derhal burayı terk et ');
      }
    } else {
      print('gelin size biz hesap açalım');
    }
    // yeni önemli nott!!!!!!!!!!!!!!!!!!!!!!
    bool result = controlMoney(item) == null
        ? false
        : true; //bunun anlamı null ise false değilse true
    print(result);
  }

  print('-------------------------' * 10);
  int customermoney = 15;
  User user1 = User('vb', 14, age: 21, city: 'erzurum', id: '1');
  User user2 = User('vb2', 18, id: '2');
  final user3 = User('aa', 159, age: 13, id: '12');
  print(user1.name);

  // müşteri son gelen kişini city sine göre kampanya yapacak

  if (user3.city == null) {
    print('müşteri şehir bilgisini vememiş');
    print(user3.userCode);
  } else {
    if (user3.city!.isEmpty) {
      print('okokok');
    }

    if (user3.city == 'istanbul') {
      print('tebrikler kampanya kaznadınız');
    }
  }

  // müşteri id 1 ,2  olana indirim yap

  if (user3.isSpecialUser('12')) {
    user3.money += 5;
    print('para eklendi');
  }

  User2 newUser2 = User2('vb', 15);
  newUser2.money +=
      5; // burda money  nin final ını kaldırık burada hata almadık
  newUser2.money = null;

  print(newUser2.toString());
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  } /* else {              return null;
    }*/ //burda bir daha return null dememize gerek yoktur zaten olmadığında bize null verir
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print('alışveriş yapabilirsin');
  } else {
    print('alışveriş yapamazsın');
  }
}
