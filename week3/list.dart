void main() {
  //bir banakaya 10 müşteri gelir bunların 110 tl 50 tl si vardır
  final int money1 = 110;
  final int money2 = 110;

  if (money1 > 100) {
    print('beyfendi');
  }
  if (money2 > 100) {
    print('aa');
  }

  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300];
  print('müşteri 1 parası:${moneys[0]}');
  // parası büyükm olana göre al
  moneys.sort();
  moneys.add(15); // sona ekler
  moneys.insert(2, 300); // 3 . yere 300 ekler
  moneys.reversed.toList().add(5);
  print(moneys);

  newMoneys.add(5);
  newMoneys.reversed
      .toList(); // listeyi çeviriyor ve yeni liste oluşturuyor.ana listeyi etkilemedi

  // 100 tane müşteri yap bunların hepsine sıra numarsına göre 5 tl ekle

  List<double> customerMoney = List.generate(100, (index) {
    return index + 1;
  });
  print(customerMoney);

  List<int> moneyCustomerNews = [100, 30, 40, 60, 25, -100];
  for (int i = 0; i < moneyCustomerNews.length; i = i + 1) {
    print('müşteri parası: ${moneyCustomerNews[i]}');
    if (moneyCustomerNews[i] > 35) {
      print('kredi hazır');
    } else if (moneyCustomerNews[i] > 0) {
      print('kredi veremeyiz ama bir birbakaalım sen kimsin');
    } else {
      print('by');
    }
  }
  print('///// tersten deneyelim ');

  for (int i = moneyCustomerNews.length - 1; i >= 0; i = i - 1) {
    print('müşteri parası: ${moneyCustomerNews[i]}');
    if (moneyCustomerNews[i] > 35) {
      print('kredi hazır');
    } else if (moneyCustomerNews[i] > 0) {
      print('kredi veremeyiz ama bir birbakaalım sen kimsin');
    } else {
      print('by');
    }
  }

  print('aaaaaaaaaaaaaaaaaaaa');
  List<dynamic> users = [1, 'a', true]; // bunu kkullanmak önerilmiyor

  for (var item in users) {
    print(item);
  }

  List<String> userNames = ['ali', 'mehmet ', 'ayşe'];
  var birsey = userNames
      .contains('adem'); // bunun anlamı bu listenin içinde adem var mı demek
  print(birsey); // bool döndürüyor.
  // biz yukarıdaki metotodu bilmeseydik aşağıda for ile if verecektik

  for (var items in userNames) {
    if (items == 'adem') {
      print('adem var');
    } else {
      print('adem yoktur');
    }
  }
}
