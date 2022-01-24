import 'package:getx_stack/core/base/record_query.dart';

abstract class BaseListAPIService<R> {
  
  Future<R> page(RecordQuery query);
  
}