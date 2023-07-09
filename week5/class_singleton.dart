

void main(List<String> args) {
  final newProduct=Product.money;
}

void calculateMoney() {
  if((Product.money ?? 0) >5){
    print('5 tl daha ekledik');
    Product.incerementMoney(5);
    print(Product.money);

  }
  
}

class Product{
  static int? money=10; // static proje boyunca bu money i kullanıcaz anlamında

static void incerementMoney(int newMoney){
  if(money != null){
    money=money! + newMoney;

  }
  
}

}

// static kullanırken const eklersel daha doğru kullanım olur diğer türlü tehlikeli olabilir 