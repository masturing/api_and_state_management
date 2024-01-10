import '../../domain/models/cabang_model.dart';

abstract class AbstractCabang {
  Future<List<Cabang>> getAllCabang();
  Future<Cabang> getCabangById(int id);
}
