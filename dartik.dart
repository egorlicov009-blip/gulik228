void main() {
  // 15 oct
// тема: if else
  String name = 'Алексей';
  String role = 'Студент';
  if (name.isNotEmpty && role == "студент") {
    print("Пользователь $name является студентом.");
  } else if (role == "рабочий" || role == "клерк") {
    print("Пользователь $name работает.");
  } else {
    print("Данные пользователя $name: статус — $role.");
  }

  double totalAmount = 3000.0;
  double discountPercent = 0.0;

  if (totalAmount >= 5000) {
    discountPercent = 30.0;
  } else if (totalAmount >= 2500) {
    discountPercent = 25.0;
  } else if (totalAmount >= 1000) {
    discountPercent = 10.0;
  }

  double discountSum = totalAmount * (discountPercent / 100);
  double finalAmount = totalAmount - discountSum;

  print("Сумма покупки: $totalAmount сом.");
  print(
    "Вам предоставляется скидка $discountPercent% (экономия $discountSum сом).",
  );
  print("Итого к оплате: $finalAmount сом.");

  int age = 20;
  bool hasTicket = true;
  bool isVIP = false;

  bool enterRegulator = age >= 18 && hasTicket;

  if (enterRegulator) {
    print("Пользователь $name может войти на мероприятие.");
  } else {
    print("Пользователь $name не может войти на мероприятие.");
  }
  if (enterRegulator || isVIP) {
    print("Пользователь $name может войти на мероприятие.");
  } else {
    print("Пользователь $name не может войти на мероприятие.");
  }

//задание switch

  void main() {
  // 15 oct
  String token = "капучино";

  switch (token.toLowerCase()) {
    case "эсспрессо":
      print("Жетон принят! Готовится крепкий Эспрессо.");
      break;

    case "американо":
      print("Жетон принят! Готовится горячий Американо.");
      break;

    case "капучино":
      print("Жетон принят! Готовится ароматный Капучино с пенкой.");
      break;

    case "латте":
      print("Жетон принят! Готовится нежный Латте.");
      break;
  }


  
  String dayOfWeek = "Суббота";

  switch (dayOfWeek.toLowerCase()) {
    case "понедельник":
    case "вторник":
    case "среда":
    case "четверг":
    case "пятница":
      print("$dayOfWeek — это рабочий день. Пора за работу!");
      break;

    case "суббота":
    case "воскресенье":
      print("$dayOfWeek — это выходной день. Время отдыхать!");
      break;

    default:
      print("Ошибка: '$dayOfWeek' не является корректным днем недели.");
      break;
  }
}

//задание с кассой и расчеты по секкундам


  import 'dart:io';

void main() {
  stdout.write("Введите ваше имя: ");
  String name = stdin.readLineSync()!;

  stdout.write("Введите ваш город: ");
  String city = stdin.readLineSync()!;

  stdout.write("Введите ваш любимый язык программирования: ");
  String language = stdin.readLineSync()!;

  print("$name из города $city, уважает $language — отличный выбор!");

  stdout.write("Введите текущий год: ");
  String currentYearInput = stdin.readLineSync()!;

  stdout.write("Введите год вашего рождения: ");
  String birthYearInput = stdin.readLineSync()!;

  int currentYear = int.parse(currentYearInput);
  int birthYear = int.parse(birthYearInput);

  int age = currentYear - birthYear;

  print("Ваш точный возраст: $age");



  stdout.write("Введите первое число: ");
  String firstInput = stdin.readLineSync()!;

  stdout.write("Введите второе число: ");
  String secondInput = stdin.readLineSync()!;


  double num1 = double.parse(firstInput);
  double num2 = double.parse(secondInput);

  double sum = num1 + num2;
  double difference = num1 - num2;
  double product = num1 * num2;

  print("\nРезультаты вычислений:");
  print("Сложение ($num1 + $num2): $sum");
  print("Вычитание ($num1 - $num2): $difference");
  print("Умножение ($num1 * $num2): $product");

  
    for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print("Кто не спрятался — я не виноват!");

  for (int i = 5; i >= 1; i--) {
    print(i);
  }
  print("Поехали!");

  int totalSlices = 8;

  for (int i = 1; i <= totalSlices; i++) {
    int remaining = totalSlices - i;
    print("Я съел кусочек номер $i. Осталось кусочков: $remaining");
  }
}
