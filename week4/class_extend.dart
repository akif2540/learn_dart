void main() {
  final userNormal = User('vb', 15);
  final usersBank = BankUser('name', 155, 123);
  final userSpecial = SpecialUser('asdas', 12312, 1231231, 30);

  userNormal.sayMoneyWithCompanyName();
  usersBank.sayMoneyWithCompanyName();
  userSpecial.sayMoneyWithCompanyName();

  print(userSpecial.calculateMoney);
  print(userSpecial.money);
}




// paralarini görmelerini istiyorum benim banka ismimle birlikte

abstract class IUser {
  final String name;
  final int money;
  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('ahmet- $money paranız vardır');
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final int _disccount;

  SpecialUser(this.name, this.money, this.bankingCode, int disccount)
      : super(name, money) {
    _disccount = _disccount;
  }

  // indirimli fiyatın ne kadar

  int get calculateMoney => money - (money ~/ _disccount);
}
