import "dart:math" as math;

class NullableInstance {
  void nullExample1(String? myString) {
    String? y = myString;
    String z = 'default';

    // 代入する変数がnullでないならばその値を使い、nullなら右辺値を使う。
    var x = y ?? z;
    print(x);
  }

  void nullExample2(String? myString) {
    String? y = myString;
    String z = 'default';

    // 変数がnullでないならば値を変えず、nullなら右辺値を使う
    print(y ??= z);
  }

  //ランダムでnullか1を返すメソッド
  getNullable() {
    var rand = math.Random();
    if (rand.nextInt(2) == 0) {
      return null;
    }
    return 1;
  }
}
