import 'dart:math';

void main() {
//1
  Apple apple = Apple(name: 'Яблоко');

  print(apple.name);
  apple.taste();

//2
  Dog dog = Dog(name: 'Шарик', age: 5);
  print('Собака ${dog.name}, возраст собаки: ${dog.age}');
  dog.voice();
//3
  Produce produce = Produce(name: 'Молоко', price: 120);
  print('Продукт: ${produce.name}, цена: ${produce.price}');
  produce.description();
//4
  Circle circle = Circle(color: 'Красный', radius: 5);
  double circleArea = circle.calculateArea();
  print('Цвет ${circle.color}, площадь круга $circleArea');

//5
  Manager manager = Manager(name: 'Aziz', salary: 1000);
  manager.printInfo();

//6
  House house = House(address: 'Бейкер стрит 221б');
  print(house.address);
  house.typeBuilding();
//7
  Carrot carrot = Carrot(name: 'Морковь');
  print(carrot.name);
  carrot.colorVegetable();
//8
  Guitar guitar = Guitar(name: 'Гитара');
  print(guitar.name);
  guitar.soundInstrument();
//9
  Human human = Human(name: 'Aziz', age: 25);
  print('Имя:${human.name}\nВозраст:${human.age}');
  human.greetingsOrganism();
}

//1
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

//2
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

//3
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

//4
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

//5
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

//6

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

//7
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
//8

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

//9
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
