import 'package:flutter/material.dart';

/// [*] CustomInputStyle untuk mengatur style input yang digunakan pada aplikasi
/// TODO: ubah style input sesuai dengan design yang diinginkan
class CustomInputStyle {
  static InputDecoration get inputDecoration => InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      );

  static InputDecoration inputDecorationWithIcon(IconData icon) =>
      InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        prefixIcon: Icon(icon),
      );
}
