import 'package:flutter/material.dart';
import 'package:healife/feature/global/widgets/area/default_page_padding.dart';
import 'package:healife/feature/global/widgets/button/custom_rectangle_button.dart';
import 'package:healife/feature/global/widgets/textfield/custom_text_form_field.dart';
import 'package:healife/feature/global/widgets/wrap/custom_wrap.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultPagePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16.0),
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/36/36447.png",
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                color: Theme.of(context).textTheme.displayMedium?.color,
              ),
              Text(
                "Healife",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                "Kayıt Ol",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(),
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomTextFormField(
                hintText: "E-posta",
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomTextFormField(
                hintText: "Ad Soyad",
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomTextFormField(
                hintText: "Kullanıcı Adı",
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomTextFormField(
                hintText: "Şifre",
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomRectangleButton(
                text: "Giriş Yap",
                onTap: () {},
              ),
              SizedBox(
                height: 8.0,
              ),
              Text("Şifremi Unuttum"),
              Spacer(),
              CustomWrap(
                children: [
                  Text("Bir hesabın yok mu?"),
                  Text(
                    "Kayıt Ol",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
