void countdownFor(int n) {
  if (n < 0) return;
  for (int i = n; i >= 0; i--) {
    print(i);
  }
}

void countdownWhile(int n) {
  if (n < 0) return;
  int i = n;
  while (i >= 0) {
    print(i);
    i--;
  }
}




void skipMultiples(int n) {
  int i = 1;
  while (i <= n) {
    if (i % 3 == 0) {
      i++;
      continue;
    }
    print(i);
    i++;
  }
}




int sumBeforeZero(List<int> numbers) {
  int sum = 0;
  for (int num in numbers) {
    if (num == 0) {
      break;
    }
    if (num < 0) {
      continue;
    }
    sum += num;
  }
  return sum;
}





void countAndSumDigits(int n) {
  if (n == 0) {
    print('1 цифра, сумма 0');
    return;
  }
  int temp = n < 0 ? -n : n;
  int count = 0;
  int sum = 0;
  do {
    int digit = temp % 10;
    count++;
    sum += digit;
    temp ~/= 10;
  } while (temp > 0);
  print('$count цифры(-ы), сумма $sum');
}




void removeEvens(List<int> list) {
  int i = 0;
  while (i < list.length) {
    if (list[i] % 2 == 0) {
      list.removeAt(i);
    } else {
      i++;
    }
  }
}




void findSeven(List<List<int>> matrix) {
  int rowIdx = -1;
  int colIdx = -1;
  
  outerLoop:
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == 7) {
        rowIdx = i;
        colIdx = j;
        break outerLoop;
      }
    }
  }

  if (rowIdx != -1) {
    print('$rowIdx $colIdx');
  } else {
    print('не найдено');
  }
}





bool isPrime(int n) {
  if (n <= 1) return false;
  int i = 2;
  while (i * i <= n) {
    if (n % i == 0) {
      return false;
    }
    i++;
  }
  return true;
}





void delayedOutput() {
  List<void Function()> functions = [];
  int i = 0;
  while (i < 3) {
    int current = i; // Создаем локальную копию для замыкания
    functions.add(() => print(current));
    i++;
  }
  
  for (var f in functions) {
    f();
  }
}





void secondMax(List<int> list) {
  if (list.length < 2) {
    print('нет результата');
    return;
  }

  int? max1;
  int? max2;

  for (int num in list) {
    if (max1 == null || num > max1) {
      max2 = max1;
      max1 = num;
    } else if (num < max1 && (max2 == null || num > max2)) {
      max2 = num;
    }
  }

  if (max2 == null) {
    print('нет результата');
  } else {
    print(max2);
  }
}






void longestSeries(List<int> list) {
  if (list.isEmpty) {
    print('нет серии');
    return;
  }

  int bestVal = list[0];
  int bestLen = 1;

  int currVal = list[0];
  int currLen = 1;

  for (int i = 1; i < list.length; i++) {
    if (list[i] == currVal) {
      currLen++;
    } else {
      if (currLen > bestLen) {
        bestLen = currLen;
        bestVal = currVal;
      }
      currVal = list[i];
      currLen = 1;
    }
  }

  if (currLen > bestLen) {
    bestLen = currLen;
    bestVal = currVal;
  }

  print('$bestVal, длина $bestLen');
}
