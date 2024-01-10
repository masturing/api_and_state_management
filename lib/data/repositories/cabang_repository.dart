import 'package:api_and_state_management/data/repositories/cabang_abstract.dart';

import '../../domain/models/cabang_model.dart';
import 'api/client/dio_client.dart';
import 'api/models/response_model.dart';

class CabangRepository implements AbstractCabang {
  @override
  Future<List<Cabang>> getAllCabang() async {
    List<Cabang> listCabang = [];
    try {
      final res = await dio.get('/cabang/list');
      ResponseModel resData = ResponseModel.fromJson(res.data);
      if (resData.status!) {
        resData.data!['data'].forEach((v) {
          listCabang.add(Cabang.fromJson(v));
        });
      } else {
        throw Exception(resData.message);
      }
    } catch (e) {}

    return listCabang;
  }

  @override
  Future<Cabang> getCabangById(int id) async {
    Cabang cabang = Cabang();
    try {
      final res = await dio.get('/cabang/$id');
      ResponseModel resData = ResponseModel.fromJson(res.data);
      if (resData.status!) {
        cabang = Cabang.fromJson(resData.data!);
      } else {
        throw Exception(resData.message);
      }
    } catch (e) {
      throw Exception(e);
    }
    return cabang;
  }
}
