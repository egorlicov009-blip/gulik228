import 'dart:io';

void main() {
  //   String name = 'Егор';
  //   int age = 15;
  //   String skills = 'музыка';

  //   String text = '''
  // Первая
  // вторая
  // третья
  // четвертая
  // пятая
  // ''';

  //   print('Имя: $name\n Возраст: $age\n Умения: $skills\n');
  //   print('текст: $text\n');

  //   name = 'Егор Лицов';
  //   age = 15;
  //   skills = 'Музыка';

  //   print('Новые данные: \nИмя : $name\n Возраст: $age\n Навык: $skills\n');

  //   final String country = 'Кыргызстан';
  //   final int birthYear = 2011;
  //   const double pi = 3.14;
  //   const String language = 'Русский';

  //   print(
  //     'Остальные данные: \nСтрана: $country\n Год рождения: $birthYear\n Число пи: $pi\n Язык общения: $language',
  //   );
  // List<String> developer = ['Ноутбук', 'Наушники', 'Телефоны'];
  // developer.add('Часы');
  // developer.insert(0, 'принтеры');
  // developer.remove('Ноутбук');
  // print('Содержимое магазина: $developer');
  // print('Количество предметов в магазине: ${developer.length}');

  // String favoriteItem = 'Наушники';
  // print(
  //   'Предмет "$favoriteItem" находится на месте: ${developer.indexOf(favoriteItem)}',
  // );
  // Map<String, dynamic> product = {
  //   'tittle': 'Наушники',
  //   'price': 1600,
  //   'inStock': true,
  //   'tags': <dynamic>['Электроника', 'Новое'],
  // };

  // product.containsKey('discount')
  //     ? print('Скидка: ${product['discount']}')
  //     : product['discount'] = '15%';

  // product['tags'].add('акция');

  // print('Название: ${product['tittle']}');
  // print('Все теги: ${product['tags']}');
  // print('Первый тег: ${product['tags'][0]}');

  // Map<String, dynamic> channelProfile = {
  //   'channelName': 'Мой Канал',
  //   'subscribersCount': 10500,
  //   'rating': 4.8,
  //   'isVerified': true,
  //   'socialLinks': <String>['Telegram', 'YouTube', 'GitHub'],
  // };

  // channelProfile['socialLinks'].add('Discord');

  // channelProfile['socialLinks'].removeAt(1);

  // channelProfile.addAll({'videoCount': 120});

  // bool hasBanner = channelProfile.containsKey('bannerUrl');
  // print(hasBanner);

  // String mainSocial = channelProfile['socialLinks'][0];
  // print(mainSocial);

  // int socialCount = channelProfile['socialLinks'].length;
  // print('Количество соцсетей: $socialCount');

  // print(channelProfile['channelName']);
  // print(channelProfile['subscribersCount']);
  // print(channelProfile['rating']);
  // print(channelProfile['isVerified']);
  // print(channelProfile['socialLinks'])

  print('Сколько вам лет?');

  String? input = stdin.readLineSync();
  int userAge = int.parse(input!);

  if (userAge >= 18) {
    print("Проходите");
  } else {
    print("Вход запрещен");
  }

  const String correctLogin = "admin";
  const String correctPassword = "12345";

  stdout.write("Введите логин: ");
  String? inputLogin = stdin.readLineSync();

  stdout.write("Введите пароль: ");
  String? inputPassword = stdin.readLineSync();

  if (inputLogin == correctLogin && inputPassword == correctPassword) {
    print("Авторизация успешна! Добро пожаловать, $correctLogin.");
  } else {
    print("Ошибка авторизации: неверный логин или пароль.");
  }
  int balance = 5000;

  print("=== ТЕРМИНАЛ БАНКОМАТА ===");
  print("1. Показать баланс");
  print("2. Снять наличные");
  print("3. Пополнить счет");
  stdout.write("Выберите пункт меню (1-3): ");

  String? menuChoiceInput = stdin.readLineSync();
  int? choice = int.tryParse(menuChoiceInput ?? '');

  switch (choice) {
    case 1:
      print("\n[Результат]: Ваш текущий баланс: $balance руб.");
      break;

    case 2:
      stdout.write("Введите сумму для снятия: ");
      String? withdrawInput = stdin.readLineSync();
      int? amount = int.tryParse(withdrawInput ?? '');

      if (amount != null && amount > 0) {
        if (amount <= balance) {
          balance -= amount;
          print("\n[Успешно]: Вы сняли $amount руб.");
          print("Остаток на балансе: $balance руб.");
        } else {
          print("\n[Ошибка]: Недостаточно средств! Ваш баланс: $balance руб.");
        }
      } else {
        print("\n[Ошибка]: Введена некорректная сумма.");
      }
      break;

    case 3:
      stdout.write("Введите сумму для пополнения: ");
      String? depositInput = stdin.readLineSync();
      int? deposit = int.tryParse(depositInput ?? '');

      if (deposit != null && deposit > 0) {
        balance += deposit;
        print("\n[Успешно]: Счет пополнен на $deposit руб.");
        print("Новый баланс: $balance руб.");
      } else {
        print("\n[Ошибка]: Введена некорректная сумма.");
      }
      break;

    default:
      print("\n[Ошибка]: Выбран несуществующий пункт меню.");
      break;
  }
  int health = 100;
  bool hasKey = false;

  stdout.write("1 - В пещеру, 2 - К двери: ");
  String? c1 = stdin.readLineSync();

  if (c1 == "1") {
    stdout.write("1 - Открыть сундук, 2 - Мимо: ");
    String? c2 = stdin.readLineSync();

    if (c2 == "1") {
      stdout.write("1 - Взять ключ, 2 - Убежать: ");
      String? c3 = stdin.readLineSync();

      if (c3 == "1") {
        hasKey = true;
        health -= 20;
        print("Ключ взят, урон -20 HP.");
      } else if (c3 == "2") {
        print("Вы сбежали без ключа.");
      } else {
        health -= 40;
        print("Ошибка ввода! Урон -40 HP.");
      }
    } else if (c2 == "2") {
      print("Вы прошли мимо.");
    } else {
      health -= 20;
      print("Ошибка ввода! Урон -20 HP.");
    }
  } else if (c1 == "2") {
    print("Вы у двери.");
  } else {
    health -= 50;
    print("Ошибка ввода! Урон -50 HP.");
  }

  // Финал с составным условием
  if (hasKey && health > 0) {
    print("Победа! Вы открыли дверь (HP: $health).");
  } else {
    print("Поражение! Вы не вышли (HP: $health, Ключ: $hasKey).");
  }
}
