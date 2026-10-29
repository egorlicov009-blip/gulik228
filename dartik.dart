import 'dart:io';

void main() {
  // Часть один
  // Задание 1
  List<String> cities = ['Бишкек', 'Ош', 'Джалал-Абад', 'Каракол', 'Нарын'];
  print('Общее колличество городов: ${cities.length}');
  print('Первый город: ${cities.first}');
  print('Последний город: ${cities.last}');

  // Задание 2
  List<String> names = [];

  for (int i = 0; i < 3; i++) {
    stdout.write('Введите имя ${i + 1}: ');
    String? name = stdin.readLineSync();
    if (name != null && name.isNotEmpty) {
      names.add(name);
    }
  }
  print('Введенные имена: ${names.join(', ')}');

  //   Задание 3
  List<int> grades = [4, 5, 3, 5, 4, 5, 2];
  int sum = 0;
  for (int grade in grades) {
    sum += grade;
  }
  double average = sum / grades.length;
  print('Сумма оценок: $sum');
  print('Средняя оценка: ${average.toStringAsFixed(2)}');

  //   Задание 4
  Map<String, int> products = {
    'Яблокo': 120,
    'Молоко': 80,
    'Хлеб': 50,
    'Сыр': 200,
    'Чай': 150,
  };

  stdout.write('Введите название продукта: (${products.keys.join(', ')}): ');
  String? searchProduct = stdin.readLineSync()?.trim().toLowerCase();

  if (searchProduct != null && products.containsKey(searchProduct)) {
    ;
    print('Цена продукта "$searchProduct": ${products[searchProduct]} сом');
  } else {
    print('Продукт "$searchProduct" не найден.');
  }


  //   Задание 5

 { List<String> tasks = [];

String? choice = stdin.readLineSync()?.trim();

switch (choice) {
  case '1':

    if (tasks.isEmpty) {
      print('\nСписок задач пуст.');
    } else {
      print('\nСписок ваших задач:');
      for (int i = 0; i < tasks.length; i++) {
        print('${i + 1}. ${tasks[i]}');
      }
    }
    break;

  case '2':

    stdout.write('\nВведите текст новой задачи: ');
    String? newTask = stdin.readLineSync();
    if (newTask != null && newTask.trim().isNotEmpty) {
      tasks.add(newTask.trim());
      print('Задача успешно добавлена!');
    } else {
      print('Ошибка: описание задачи не может быть пустым.');
    }
    break;

  case '3':

    if (tasks.isEmpty) {
      print('\nСписок задач пуст, удалять нечего.');
      break;
    }

    print('\nТекущие задачи:');
    for (int i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }

    stdout.write('Введите номер задачи для удаления: ');
    String? inputNumber = stdin.readLineSync();
    int? index = int.tryParse(inputNumber ?? '');

    if (index != null && index >= 1 && index <= tasks.length) {
      String removedTask = tasks.removeAt(index - 1);
      print('Задача "$removedTask" успешно удалена.');
    } else {
      print('Ошибка: неверный номер задачи.');
    }
    break;

  case '4':
    
    print('\nЗавершение работы программы. До свидания!');
    return; 

  default:
    print('\nНеверный выбор. Пожалуйста, введите число от 1 до 4.');
}
} }

