abstract class BaseAPIService<R> {
  
  Future<List<R>> getAll();

  Future<R> retrieve(id);

  Future<R> create(R model);
  
}