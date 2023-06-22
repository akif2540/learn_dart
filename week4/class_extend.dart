void main() {}

// paralarini görmelerini istiyorum benim banka ismimle birlikte

abstract class IUser {
  void sayMoneyWithCompanyName() {}
}

class User {
  final String name;
  final String money;
  User(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('Ahmet- $money paranız vardır');
  }
}

class BankUser {
  final String name;
  final String money;
  final int bankingCode;

  BankUser(this.name, this.money, this.bankingCode);
}

class SpecialUser {
  final String name;
  final String money;
  final int bankingCode;
  final int disccount;

  SpecialUser(this.name, this.money, this.bankingCode, this.disccount);
}
