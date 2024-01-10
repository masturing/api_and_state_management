import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// [*] CustomTextStyle untuk mengatur style text yang digunakan pada aplikasi
/// TODO: ubah style text sesuai dengan design yang diinginkan
class CustomTextStyle {
  static TextStyle get title => GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get subtitle => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get body => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodyBold => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get bodyLight => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get caption => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get captionBold => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get captionLight => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get button => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get buttonBold => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get buttonLight => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get buttonText => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get buttonTextLight => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get buttonTextBold => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );
}
