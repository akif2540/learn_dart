void main() {
  //müşteri geldi parası 20
  Map<String, int> users = {'ahmet': 20, 'mehmet': 20};
  // müşteri ahmetin ne kadar parası var
  print('ahmetin parası ${users['ahmet']}');
  // müşteri kimler var senin elinde

  for (var item in users.keys) {
    print('{$item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)} ');
    // keys ve elementAt sayesinde ahmet ve mehmeti getirdi
  }

  // benim müşterilerim var müşterilerimin birden fazla hesabı olabilir
  // ahmet bey 3 hesabı var sırasıyla 100 ,300 ,200
  //mehmet bey 2 hesabı var 20 50
  //veli bey 1 hesabı 30
  // adamların hesaplarını kontrol et herhagi bir hesaptan 150 tl den fazla olan varsa krediniz hazır de

  print('-----------------------------------');
  final Map<String, List<int>> vbBank = {
    'ahmet': [100, 200, 300]
  };
  vbBank['mehmet'] = [30, 50];
  vbBank['veli'] = [30];

  for (var item in vbBank.keys) {
    // bankanın tüm elemanları
    for (var money in vbBank[item]!) {
      // user in hesaplarını
      if (money > 150) {
        print('kredin hazır');
        break;
      }
    }
  }

  // bankadaki müşterilerin hesapları toplamı
  for (var name in vbBank.keys) {
    int result = 0;
    for (var money in vbBank[name]!) {
      // ! koymamızın sebei içerisi boşta olabilir o yüzden
      result = result + money;
    }
    print('$name senin toplam paran $result');
  }
}
