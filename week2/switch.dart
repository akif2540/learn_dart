void main(List<String> args) {
  final int classDegree = 2;
  bool isSucsess = false;
// 2 ise ekrana bravo
//1 ise olur
// 0 ise yeterli
// diğer durumlarda başarısız

  switch (classDegree) {
    case 2:
      print('bravo');
      isSucsess = true;
      break;
    case 1:
      print('olur');
      isSucsess = true;
      break;
    case 0:
      print('yeterli');
      isSucsess = true;
      break;
    default:
      print('başarısız');
      isSucsess = false;
  }
  print('çocuğunzun sonucu: $isSucsess');
}
