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
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  } /* else {
      return null;
    }*/ //burda bir daha return null dememize gerek yoktur zaten olmadığında bize null verir
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print('alışveriş yapabilirsin');
  } else {
    print('alışveriş yapamazsın');
  }
}

class User {
  // özellikleri tanımmlayalım

  String?
      name; // hiçbir nesneyi başı boş tanımlanamaz dartta ne olduğunu belirtmemiz gererkir!!!!!
  int? money;
  int? age;
  String? city;
}

// 3.23.22 class a daha yeni geçti 
