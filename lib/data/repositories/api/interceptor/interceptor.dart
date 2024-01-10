import 'package:api_and_state_management/domain/enum/enum.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../presentation/widgets/toast.dart';

void interceptor({required dynamic e, required BuildContext context}) {
  if (e is DioError) {
    if (e.response != null && e.response!.data is Map<String, dynamic>) {
      final errorMessage = e.response!.data['messageError']['message'];
      showToast(context, errorMessage, state: States.error);
    } else {
      showToast(context, "Terjadi kesalahan");
    }
  }
}
