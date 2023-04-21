abstract class CRUD with Create, Read, Update, Delete {}

abstract class BRUD with Batch, Read, Update, Delete {}

abstract class Create<T> {
  Future create(T model);
}

abstract class Batch<T> {
  Future createBatch(List<T> models);
}

abstract class Read<T> {
  Future<T> read();
}

abstract class Update<T> {
  Future update(T model);
}

abstract class Delete {
  Future clear();
}
