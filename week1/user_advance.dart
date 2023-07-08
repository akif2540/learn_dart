void main() {
  String userName = "akif";
  var userName2 = 'akif 2 ';

  final int bankMoney = 100; //bu sayade sabitledik
  const String bankNmae = 'dadasoglu'; // bu da aynı şey değiştirilemez
  //arasındaki fark coonst değişkenlerin derlenme anında bellirlenip değiştirilemezsken
  //final değişkenlerin atanma anında belirlenir ve değiştirilemez

  //-----------
  //burada kkısaca bankaoluşturduk ve kullanıcı 1 in arası değiştirilemez yazptık
  //kullanıcı 2 nin parassını değiştirebilir yaptık const ı kullandık bir de double
  // ı toınt() ile integer yaptık

  const String bankNameSpecial = "VB BANK";

  const String user1 = " BANK 1 MÜŞTERİ";
  const double user1Money = 100.00;
  const String user2 = "bank 2 müşterisi";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("user 2 money $user2Money");
}
