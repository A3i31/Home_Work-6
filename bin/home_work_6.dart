import 'dart:math';

void main() {
//1
  Circle1 circle1 = Circle1('red', 100);
  print(circle1.getColor());

//2

  Student aziz = Student(age: 24, grade: [1, 4, 8, 2, 4], name: 'Aziz');
  print('Имя ${aziz.name}\nВозраст: ${aziz.age}');
  aziz.getAverage();
//3
  Automobile automobile =
      Automobile(brand: 'Camry', model: '55', yearOfIssue: 2016);
  print('${automobile.brand}, ${automobile.model}, ${automobile.yearOfIssue}');
//4
  Book book = Book(
      name: 'Гарри Поттер', author: 'Джоан Роулинг', yearOfPublishing: 2007);
  print('${book.name}, ${book.author}, ${book.yearOfPublishing}');
//5
  Rectangle rectangle = Rectangle(10, 12);
  print(rectangle.getS());
//6
  BankAccount bankAccount = BankAccount(
      accountNumber: 1015,
      balance: 1000,
      owner: 'Aziz',
      replenish: 500,
      withdraw: 500);
  bankAccount.withdrawBalance();
//7
  Product1 product1 = Product1(name: 'Лепешка', price: 10, quantity: 10);
  product1.totalCostProduct();
//8
  Employee1 employee1 =
      Employee1(dolzhnost: 'dolzhnost', name: 'name', sallary: 1000);
  employee1.printInfo();
  employee1.upSallary(30);
  print(employee1.sallary);
//9
  Triangle triangle = Triangle(sideA: 3, sideB: 4, sideC: 5);
  triangle.calculateArea();
 
//10
  Acar acar = Acar(model: 'Corola', yearOfIssue: 2018);
  acar.printInfoAuto();
//11
  Apple apple = Apple(name: 'Яблоко');

  print(apple.name);
  apple.taste();
//12
  Dog dog = Dog(name: 'Шарик', age: 5);
  print('Собака ${dog.name},\nвозраст собаки: ${dog.age}');
  dog.voice();
//13
  Produce produce = Produce(name: 'Молоко', price: 120);
  print('Продукт: ${produce.name}, цена: ${produce.price}');
  produce.description();
//14
  Circle circle = Circle(color: 'Красный', radius: 5);
  double circleArea = circle.calculateArea();
  print('Цвет ${circle.color}, площадь круга $circleArea');
//15
  Manager manager = Manager(name: 'Aziz', salary: 1000);
  manager.printInfo();
//16
  House house = House(address: 'Бейкер стрит 221б');
  print(house.address);
  house.typeBuilding();
//17
  Carrot carrot = Carrot(name: 'Морковь');
  print(carrot.name);
  carrot.colorVegetable();
//18
  Guitar guitar = Guitar(name: 'Гитара');
  print(guitar.name);
  guitar.soundInstrument();
//19
    Human human = Human(name: 'Aziz', age: 25);
  print('Имя:${human.name}\nВозраст:${human.age}');
  human.greetingsOrganism();
}

//1

class Circle1 {
  String color;
  double radius;
  Circle1(this.color, this.radius);

  String getColor() {
    return 'color is $color';
  }

  double getRadius() {
    return radius;
  }
}

//2

class Student {
  String name;
  int age;
  List<int> grade;
  Student({required this.age, required this.grade, required this.name});
  void getAverage() {
    int summ = 0;
    for (int i = 0; i < grade.length; i++) {
      summ += grade[i];
    }
    print(summ / grade.length);
  }
}

//3
class Automobile {
  String brand;
  String model;
  int yearOfIssue;
  Automobile(
      {required this.brand, required this.model, required this.yearOfIssue});
}

//4
class Book {
  String name;
  String author;
  int yearOfPublishing;
  Book(
      {required this.name,
      required this.author,
      required this.yearOfPublishing});
}

//5

class Rectangle {
  double width;
  double height;
  Rectangle(this.height, this.width);
  double getS() {
    return width * height;
  }
}

//6
class BankAccount {
  int accountNumber;
  double balance;
  String owner;
  double replenish;
  double withdraw;
  BankAccount(
      {required this.accountNumber,
      required this.balance,
      required this.owner,
      required this.replenish,
      required this.withdraw});

  void replenishBalance() {
    print(balance += replenish);
  }

  void withdrawBalance() {
    if (balance < replenish) {
      print('Не достаточно средств для снятия');
    } else {
      print(balance -= withdraw);
    }
  }
}

//7
class Product1 {
  String name;
  double price;
  int quantity;
  Product1({required this.name, required this.price, required this.quantity});
  void totalCostProduct() {
    print(price *= quantity);
  }
}

//8
class Employee1 {
  String dolzhnost;
  String name;
  double sallary;

  Employee1(
      {required this.dolzhnost, required this.name, required this.sallary});
  void printInfo() {
    print('$dolzhnost $name $sallary');
  }

  void upSallary(int procent) {
    sallary += sallary * (procent / 100);
  }
}

//9
class Triangle {
  double sideA;
  double sideB;
  double sideC;
  Triangle({required this.sideA, required this.sideB, required this.sideC});
  double semiPerimeter() {
    return (sideA + sideB + sideC) / 2;
  }

  void calculateArea() {
    double s = semiPerimeter();
    print(s * (s - sideA) * (s - sideB) * (s - sideC));
  }
}

//10
class Auto {
  String model;
  int yearOfIssue;
  Auto({required this.model, required this.yearOfIssue});
  void printInfoAuto() {
    print('object');
  }
}

class Acar extends Auto {
  Acar({required super.model, required super.yearOfIssue});
  @override
  void printInfoAuto() {
    print(
        'Легковой автомобиль более экономичен и удобен как городской личный авто');
  }
}

//11
class Fruit {
  String name;
  Fruit({required this.name});
  void taste() {
    print('Вкус');
  }
}

class Apple extends Fruit {
  Apple({required super.name});
  @override
  void taste() {
    print('Вкус яблока сладкий и кислый');
  }
}

//12
class Animal {
  String name;
  int age;
  Animal({required this.name, required this.age});
  void voice() {
    print('Голос');
  }
}

class Dog extends Animal {
  Dog({required super.name, required super.age});
  @override
  void voice() {
    print('Гав-Гав');
  }
}

//13
class Product {
  String name;
  int price;
  Product({required this.name, required this.price});
  void description() {
    print('Описание');
  }
}

class Produce extends Product {
  Produce({required super.name, required super.price});
  @override
  void description() {
    print(
        'Молоко хранится не более 10 суток, полезный продукт. Держать в холодильнике!');
  }
}

//14
class Figure {
  String color;
  double? area;
  Figure({required this.color, this.area});
  double? calculateArea() {
    print('Площадь круга');
  }
}

class Circle extends Figure {
  double radius;
  Circle({required super.color, super.area, required this.radius});
  @override
  double calculateArea() {
    return area = pi * radius * radius;
  }
}

//15
class Employee {
  String name;
  int salary;
  Employee({required this.name, required this.salary});
  void printInfo() {
    print('object');
  }
}

class Manager extends Employee {
  Manager({required super.name, required super.salary});
  @override
  void printInfo() {
    print('Имя: $name\nЗарплата: $salary');
  }
}

//16
class Building {
  String address;
  Building({required this.address});
  void typeBuilding() {
    print('тип');
  }
}

class House extends Building {
  House({required super.address});
  @override
  void typeBuilding() {
    print('Частный дом');
  }
}

//17
class Vegetable {
  String name;
  Vegetable({required this.name});
  void colorVegetable() {
    print('цвет');
  }
}

class Carrot extends Vegetable {
  Carrot({required super.name});
  @override
  void colorVegetable() {
    print('Желтый');
  }
}
//18

class MusicalInstrument {
  String name;
  MusicalInstrument({required this.name});
  void soundInstrument() {
    print('Звук');
  }
}

class Guitar extends MusicalInstrument {
  Guitar({required super.name});
  @override
  void soundInstrument() {
    print('Струны');
  }
}

//19
class Organism {
  String name;
  Organism({required this.name});
  void greetingsOrganism() {
    print('object');
  }
}

class Human extends Organism {
  int age;
  Human({required super.name, required this.age});
  @override
  void greetingsOrganism() {
    print('Рукопожатие');
  }
}