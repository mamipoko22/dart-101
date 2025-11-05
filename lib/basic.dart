void main() {
  // ข้อที่ 1
  print("ข้อที่ 1");
  print("Welcome to dart!");

  // ข้อที่ 2
  print("ข้อที่ 2");
  var planet = "Earth";
  print(planet);

  // ข้อที่ 3
  print("ข้อที่ 3");
  int myAge = 16;
  print(myAge);

  // ข้อที่ 4
  print("ข้อที่ 4");
  double piValue = 3.14159;
  print(piValue);

  // ข้อที่ 5
  print("ข้อที่ 5");
  bool isDartFun = true;
  print(isDartFun);

  // ข้อที่ 6
  print("ข้อที่ 6");
  var a = 15;
  var b = 4;
  var sum = a + b;
  print(sum);

  // ข้อที่ 7
  print("ข้อที่ 7");
  var sum1 = a * b;
  print(sum1);

  // ข้อที่ 8
  print("ข้อที่ 8");
  var name = "Alice";
  var age = 28;
  print("My name is $name and I am $age years old.");

  // ข้อที่ 9
  print("ข้อที่ 9");
  //var  myNumber = 100;
  // myNumber = "Hello";
  // print(myNumber);
  print(
    "ตัวแปร myNumber เก็บค่าเป็น int ไม่สามารถเปลี่ยนเป็น String เพราะภาษา Dart เป็นภาษาที่มีการกำหนดประเภทข้อมูลแบบเข้มงวด (strongly typed language",
  );

  // ข้อที่ 10
  print("ข้อที่ 10");
  //final city = "Bangkok";
  //final city = "Chiang Mai";
  //print(city);
  print(
    "เกิดข้อผิดพลาดเนื่องจาก city ถูกประกาศเป็น final แล้วไม่สามารถเปลี่ยนค่าได้",
  );

  // ข้อที่ 11
  print("ข้อที่ 11");
  const secondsInMinute = 60;
  print(secondsInMinute);

  // ข้อที่ 12
  print("ข้อที่ 12");
  //num flexibleNumber = 50;
  //num flexibleNumber = 75.5;
  //print(flexibleNumber);
  print(
    "ไม่ได้ เพราะ ตัวแปร flexibleNumber ถูกประกาศซ้ำในสโคปเดียวกัน ซึ่งไม่อนุญาตให้ประกาศตัวแปรซ้ำ",
  );

  // ข้อที่ 13
  print("ข้อที่ 13");
  var x = 10;
  var y = 4;
  print(x / y);
  print((x / y).runtimeType);

  // ข้อที่ 14
  print("ข้อที่ 14");
  print(x ~/ y);
  print((x ~/ y).runtimeType);

  // ข้อที่ 15
  print("ข้อที่ 15");
  print(x % y);
  print((x % y).runtimeType);

  // ข้อที่ 16
  print("ข้อที่ 16");
  int score = 85;
  if (score >= 80) {
    print("true");
  } else {
    print("false");
  }

  // ข้อที่ 17
  print("ข้อที่ 17");
  score = 85;
  if (score != 100) {
    print("true");
  } else {
    print("false");
  }

  // ข้อที่ 18
  print("ข้อที่ 18");
  var isMember = true;
  var hasDiscount = false;
  print(isMember && hasDiscount);

  //ข้อที่ 19
  var hasCoupon = false;
  isMember = true;
  hasCoupon = false;
  print(isMember || hasCoupon);

  //ข้อที่ 20
  isMember = true;
  hasCoupon = false;
  print(isMember && !hasCoupon);

  //ข้อที่ 21
  age = 25;
  if (age > 18) {
    print("You are an adult");
  }

  //ข้อที่ 22
  int number = -5;
  if (number > 0) {
    print("Positive");
  } else {
    print("Negative or Zero");
  }

  //ข้อที่ 23
  for (int i = 1; i <= 5; i++) {
    print("รอบที่ $i");
  }

  //ข้อที่ 24
  int count = 1;
  while (count <= 3) {
    print("Count: $count");
    count++;
  }

  //ข้อที่ 25
  score = 80;
  String messageTernary = (score >= 60) ? "Pass" : "Fail";
  print(messageTernary);

  //ข้อที่ 26
  int day = 3;
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuseday");
      break;
    case 3:
      print("Wednesday");
      break;
  }

  //ข้อที่ 27
  for (int i = 1; i <= 10; i++) {
    if (i == 4) {
      print("เจอเลข 4 หยุดทำงาน!");
      break;
    }
    print("i = $i");
  }

  //ข้อที่ 28
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      print("เจอเลข 3 หยุดทำงาน!");
      continue;
    }
    print("i = $i");
  }

  //ข้อที่ 29
  int temp = 28;
  if (temp > 30) {
    print("Its hot.");
  } else if (temp >= 20) {
    print("Its warm.");
  } else {
    print("Its cool.");
  }

  //ข้อที่ 30
  number = 5;
  do {
    print(number);
    number++;
  } while (number < 5);
}
