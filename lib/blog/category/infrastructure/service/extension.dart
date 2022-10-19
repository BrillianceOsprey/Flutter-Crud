import 'package:crud_flutter/blog/category/domain/category_model.dart';
import 'package:crud_flutter/blog/category/infrastructure/model/category_dto.dart';

extension ExtCategoryDtoList on List<CategoryDto> {
  List<CategoryModel> get domainList => toDomainList();
  List<CategoryModel> toDomainList() => map((e) => e.domainMedel).toList();
}
