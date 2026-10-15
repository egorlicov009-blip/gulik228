void main() {
  // 15 oct

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

