import 'package:flutter/material.dart';

import 'category_models.dart';

class CategoryList {
  final List<CategoryModels> categoryList = [
    CategoryModels(
      name: "Вакансии",
      color: Colors.amber,
    ),
    CategoryModels(
      name: 'Маркет',
      color: Colors.blue,
    ),
    CategoryModels(
      name: 'Цветы',
      color: Colors.green,
    ),
    CategoryModels(
      name: 'Медицина',
      color: Colors.pink,
    ),
    CategoryModels(
      name: 'Спорт',
      color: Colors.purple,
    ),
    CategoryModels(
      name: 'Машины',
      color: Colors.red,
    ),
    CategoryModels(
      name: 'Отдых',
      color: Colors.teal,
    ),
    CategoryModels(
      name: 'Другое',
      color: Colors.yellow,
    ),
  ];
}
