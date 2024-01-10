import 'package:api_and_state_management/data/repositories/api/client/dio_client.dart';
import 'package:api_and_state_management/data/repositories/api/interceptor/interceptor.dart';
import 'package:api_and_state_management/data/repositories/api/models/response_model.dart';
import 'package:api_and_state_management/presentation/style/colors.dart';
import 'package:api_and_state_management/presentation/style/text_style.dart';
import 'package:api_and_state_management/presentation/widgets/default_layout.dart';
import 'package:api_and_state_management/presentation/widgets/toast.dart';
import 'package:flutter/material.dart';

import '../../domain/models/profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscure = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void authLogin() async {
    /// TODO: Buat auth login dengan menggunakan dio
    try {
      final res = await dio.post('/login', data: {
        'username': usernameController.text,
        'password': passwordController.text,
      });
      ResponseModel responseModel = ResponseModel.fromJson(res.data);
      if (responseModel.status!) {
        Profile profile = Profile.fromJson(responseModel.data);
        showToast(context, "Login berhasil, Halo ${profile.name}");
      } else {
        showToast(context, responseModel.messageError['message']);
      }
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
    return DefaultLayout(
      margin: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Login",
          style: CustomTextStyle.title,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          "Masuk ke akun anda",
          style: CustomTextStyle.subtitle,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size(double.infinity, 50),
                      backgroundColor: CustomColorScheme.primary,
                    ),
                    onPressed: () {
                      authLogin();
                    },
                    child: Text(
                      "Login",
                      style:
                          CustomTextStyle.button.copyWith(color: Colors.white),
                    ))
              ],
            ))
      ]),
    );
  }
}
