void main(List<String> args) {
  task1();
  task2();
  task3();
  task4();
}

void task1() {
  print(
      "Country -  класс имеет поле название, климат (метод должен принтовать название места и климат)");
  Country country = Country(name: "Кыргызстан", climate: "Lorem ipsum amed");
  print("country\n\n");
}

void task2() {
  print(
      "Car -  имеет поле мощность, цвет, название, цена (метод должен принтовать характеристики машины)");
  Car car = Car(color: "Белый", engine: "999", name: "Москвич", price: "Цена");
  print(car);
  print("country\n\n");
}

void task3() {
  print(
      """Создайте класс Phone, который содержит переменные number, model и weight.\n\n

Создайте три экземпляра этого класса. \n\n

Выведите на консоль значения этих переменных. \n\n

Добавить в класс Phone методы: receiveCall, имеет один параметр – имя звонящего. Выводит на консоль сообщение “Звонит {name}”. Метод getNumber – возвращает номер телефона. Вызвать эти методы для каждого из объектов.\n\n

Добавить конструктор в класс Phone, который принимает на вход три параметра для инициализации переменных класса - number, model и weight. \n\n




Создать метод sendMessage. Данный метод принимает на вход номера телефонов, которым будет отправлено сообщение. Метод выводит на консоль номера этих телефонов.""");
  Phone phone1 =
      Phone(number: "+996555555555", model: "Motorolla", weight: "2kg");
  Phone phone2 =
      Phone(number: "+996555555556", model: "Motorolla2", weight: "3kg");
  Phone phone3 =
      Phone(number: "+996555555557", model: "Motorolla3", weight: "1kg");
  phone2.receiveCall(phone2.number);
  phone1.sendMessage([phone2.number, phone3.number]);
}

void task4() {
  print('\nTask 4');
  Book book1 = Book(name: "Приключения", author: "author1");
  Book book2 = Book(name: "Словарь", author: "author2");
  Book book3 = Book(name: "Энциклопедия", author: "author3");

  List<Reader> readers = [
    Reader(
        name: "Петров В. В",
        code: "code1",
        faculty: "faculty1",
        birth_date: "1990-12-12",
        phone: "555555555"),
    Reader(
        name: "ReaderName1",
        code: "code1",
        faculty: "faculty1",
        birth_date: "1990-12-12",
        phone: "555555555"),
    Reader(
        name: "ReaderName1",
        code: "code1",
        faculty: "faculty1",
        birth_date: "1990-12-12",
        phone: "555555555"),
  ];

  readers[0].takeBook([book1, book2, book3]);
  readers[0].returnBook([book1, book2, book3]);
}

class Book {
  String name;
  String author;

  Book({required this.name, required this.author});

  @override
  String toString() {
    return name;
  }
}

class Reader {
  String name;
  String code;
  String faculty;
  String birth_date;
  String phone;

  Reader(
      {required this.name,
      required this.code,
      required this.faculty,
      required this.birth_date,
      required this.phone});

  void takeBook(List<Book> books) {
    print("$name взял книги: ${books.join(', ')}");
  }

  void returnBook(List<Book> books) {
    print("$name вернул книги: ${books.join(', ')}");
  }
}

class Country {
  String name;
  String climate;

  Country({required this.name, required this.climate});

  @override
  String toString() {
    return "Страна: $name, Климат: $climate";
  }
}

class Phone {
  String number;
  String model;
  String weight;

  Phone({
    required this.number,
    required this.model,
    required this.weight,
  });

  void receiveCall(String name) {
    print("Звонит ${name}");
  }

  String getNumber() {
    return number;
  }

  void sendMessage(List<String> numbers) {
    print("Отправка сообщения ${numbers.join(", ")}");
  }
}

class Car {
  String engine;
  String color;
  String name;
  String price;

  Car(
      {required this.engine,
      required this.color,
      required this.name,
      required this.price});

  @override
  String toString() {
    return "мощность: $engine, цвет: $color, название: $name, цена: $price";
  }
}
