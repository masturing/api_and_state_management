// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Color? color;

  const DefaultLayout({
    Key? key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// [*] Default layout untuk setiap page agar tidak perlu menulis ulang
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          width: width ?? MediaQuery.of(context).size.width,
          height: height ?? MediaQuery.of(context).size.height,
          padding: padding ?? const EdgeInsets.all(16),
          margin: margin ?? const EdgeInsets.all(0),
          color: color ?? Colors.white,
          child: child,
        ),
      )),
    );
  }
}
