import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlo_mobx/models/category.dart';
import 'package:xlo_mobx/reposttory/parse_errors.dart';
import 'package:xlo_mobx/reposttory/table_keys.dart';

class CategoryRepository {
  Future<List<Category>> getList() async{
    final queryBuilder = QueryBuilder(ParseObject(keyCategoriesTable))
      ..orderByAscending(keyCategoryDescription);
    final response = await queryBuilder.query();

    if(response.success){
      return response.results!.map((p) => Category.fromParse(p)).toList();
    }
    else{
      throw ParseErrors.getDescription(response.error!.code);
    }
  }
}