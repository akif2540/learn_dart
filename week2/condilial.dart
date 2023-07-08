void main() {
  int money = 15;
  String userName = "veli";
  print('$money' + userName);

  bool isCustomerRich = false;

  // if else

  if (money > 10) {
    print("sen zenginsin canim");
  } else {
    print("pis fakir seni");
  }
  money = money - 10;
  if (money > 10) {
    print("sen  yine zenginsin canim");
  } else {
    print("pis fakir seni derhal burayı terk et");
  }

  //

  // müşteri bankaya gelir ve 10 tl si vardır ve sorgu yapar sorgu soucu 20 tl alınır
  // eğer kalan parası sıfırdan küçükse bankadan kovulur

  int newCustomerMoney = 10;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print("hoşgeldiniz canlar ");
  } else if (newCustomerMoney > 0) {
    print("lütfen sıra alın");
  } else {
    print("derhal burayı terk et");
  }

  // bir mağazaya isim verilecek örnek isimler toplanır
  // örnek isimler: ahmet mehmet celi kx x
  //karekter uzunluğu iki veya daha altı olanları göster

  final String ahmetCompany = 'Ahmet';
  final String mehmetCompany = 'mehmet';
  final String veliCompany = 'veli';
  final String kxCompany = 'kx';
  final String xCompany = 'x';
  const int companyLenght = 2;
  String result = "";

  if (ahmetCompany.length > companyLenght) {
    result += ahmetCompany;
  }
  if (mehmetCompany.length > companyLenght) {
    result += mehmetCompany;
  }
  if (veliCompany.length > companyLenght) {
    result += veliCompany;
  }
  if (kxCompany.length > companyLenght) {
    result += kxCompany;
  }
  if (xCompany.length > companyLenght) {
    result += xCompany;
  }

  if (result.isEmpty) {
    print("hiçbirşey bulamak is empty nu işe yarıyor boş ise çalışıyor");
  } else {
    print(result);
  }
}
