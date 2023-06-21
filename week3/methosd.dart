import 'dart:ffi';

void main() {
  // benim bir müşterim var parsı var mı yok mu kontrol edermisin?

  final int userMoney = 10;

  controlUserMoney(userMoney, 0);
  /*
  if (userMoney > 0) {
    print('paran var ne rahat');
  } else {
    print('no money');
  }
  */

  // benim bir müşterim daha geldi onada bakarmısın?
  final int userMoney2 = 0;
  controlUserMoney(userMoney2, 5);
  /*
  if (userMoney2 > 0) {
    print('paran var ne rahat');
  } else {
    print('no money');
  }
  */

  // yeni müşteri gelir parsı 50 tl kaç dolar olduğunu merak eder

  final int userMoney3 = 50;
  int result = convertToDolar(userMoney3); // bu 20 doların bugünki değeri
  print(result);
  final result2 = convertToStandartDolar(200);
  final result3 =
      convertToStandartDolar(200, dolarIndex: 22); // meselenin özeti bu
  print(result2);
  print(result3);

  final result4 = convertToEuro(userMoney: 21);
  print(result4);
  // yukarfa aşağıda tanımladığımız required sayesinde userMoney i vermek farz oldu.

  final result5 = sayHello('hakan ');
  print(result5);

  // bana dolar hesaplamasını yap eğer ben sana bildirmezsem başka değer değeri 20 tl al
}

// basit bir method üretiyoruz
void controlUserMoney(int money, int minValue) {
  if (money > minValue) {
    print('para var');
  } else {
    print('para yoktur');
  }
}

int convertToDolar(int userMoney) {
  return userMoney ~/ 20;
}

int convertToStandartDolar(int userMoney, {int dolarIndex = 20}) {
  // burda optional (isteğe bağlı yaptık kullancı farklı bir değer girmeyene kadar değer 20)
  return userMoney ~/ dolarIndex;
}

int convertToEuro({required int userMoney, int dolarIndex = 22}) {
  return userMoney ~/ dolarIndex;
}

String sayHello(String name) {
  return 'hello $name';
}
