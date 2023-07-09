

void main(List<String> args) {
  final user =_User('veli',age:21);



// if ((user.age ?? 10) <18){}
  

if (user.age is int) {  //is! de int değil mi tersi true false oluyor.
  if (user.age! <18) {
    print('evet küçük');
    user.updateMoneyWithString("TR");
  }else{
    user.updateMoneyWithNumber(15);
  }
  
}
// müşterinin yiı 18 den kuçuk kontrolu  yapar mısın?
// parası olan adamın parametrisi bir isim de olabilir bir değer de olabilir
// tr yazacak ya da orda 15 yazabilir
// ekrana yazdır

final _newType =user.moneyType is String ? (user.moneyType as String) : " ";
print(_newType + "A");

//-------------------------------------
int money1=50;
int money2=50;

if (money1==money2){
  print("evet eşit");
}

final moneyBank1=Bank(30,"12");
final moneyBank2=Bank(40,"12");

print(moneyBank1==money2); // false gelir çünkü referanslar farklı

 // müşteri banka sınıfından iki kişinin parasını toplayıp söyler misin?

    print(moneyBank1 + moneyBank2);

  // benim bankama gelen müşterilerin id si aynı olanlar aynı müşteri olmalı

  print(moneyBank1.toString());
  print(moneyBank1==moneyBank2);

  // diğer bankadan bir modül aldık bunu ekleyip müşterinin parasının sorgular mısın
  // burda mixin kullandık 

  // müşteri adamın bankasına 10 tl ekle  ekranı dondur, adamın id sini 1 artır , ismini de akif yap


  moneyBank1.money +=10;
  print(moneyBank1.money);

  moneyBank1..money+=10
  ..updateName("akif");
  print(moneyBank1);


}

class _User {
  final  name;
  int? age;

  dynamic moneyType;

  _User(this.name,{this.age});

  void updateMoneyWithString(String data){
    moneyType=data;
  }
  void updateMoneyWithNumber(int number){
    moneyType=number;
  }

}

class Bank with BankMixin{
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  int operator + (Bank newBank){  // bu yapmış olduğumuz operator sayesinde moneyBank1 ve moneyBank2 toplayabildik

    return money + newBank.money;
  }

  void updateName(String name) {
    this.name=name;
  }

  @override
  String toString() {
    return super.toString() + 'akif';  // bu sayede her toStrink Akif oldu
  }

  @override
  bool operator ==(Object Object){
    return Object is Bank && Object.id==id;  //bank1 ve 2 nin id leri eşitse bunları eşit olmasını sağladık

  }
  
  @override
  void sayBankHello() {
    calculateMoney( money);
  }
}

mixin BankMixin{
  void sayBankHello();

  void calculateMoney(int money){
    print('money');
  }
}