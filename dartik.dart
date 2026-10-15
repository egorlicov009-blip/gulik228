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
