import 'package:api_and_state_management/data/repositories/api/client/dio_client.dart';
import 'package:api_and_state_management/data/repositories/api/interceptor/interceptor.dart';
import 'package:api_and_state_management/presentation/widgets/default_layout.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    authLogin();

    super.initState();
  }

  void authLogin() async {
    /// TODO: Buat auth login dengan menggunakan dio
    try {
      final res = await dio.post('/login', data: {
        'username': 'admisn',
        'password': 'admin',
      });
    } catch (e) {
      interceptor(e: e, context: context);
    }
  }

  @override
  Widget build(BuildContext context) {
    /// TODO: Ubah dan gunakan widget default layout
    /// TODO: Isi dengan text judul
    /// TODO: Isi dengan textfield untuk username
    /// TODO: Isi dengan textfield untuk password
    /// TODO: Isi dengan button untuk login
    return const DefaultLayout();
  }
}
