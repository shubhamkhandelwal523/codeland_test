import 'package:mobile_app_design/widgets/custom_text_form_field.dart';
import 'package:mobile_app_design/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_design/core/app_export.dart';
import 'provider/login_final_provider.dart';

class LoginFinalScreen extends StatefulWidget {
  const LoginFinalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginFinalScreenState createState() => LoginFinalScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginFinalProvider(),
      child: LoginFinalScreen(),
    );
  }
}

class LoginFinalScreenState extends State<LoginFinalScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 390.h,
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(bottom: 40.v),
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 248.v,
                        width: 202.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCodelandLogo1,
                              height: 104.v,
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCodelandLogo2,
                              height: 171.v,
                              alignment: Alignment.bottomCenter,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_biomedical".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                            TextSpan(
                              text: "  ".tr,
                            ),
                            TextSpan(
                              text: "lbl_kiosk".tr,
                              style: CustomTextStyles.titleLargeff201f1f,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 56.h),
                        child: Text(
                          "lbl_for_hce_s".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Selector<LoginFinalProvider, TextEditingController?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.userNameController,
                      builder: (context, userNameController, child) {
                        return CustomTextFormField(
                          controller: userNameController,
                          hintText: "lbl_username".tr,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "err_msg_please_enter_valid_text".tr;
                            }
                            return null;
                          },
                        );
                      },
                    ),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child:
                          Selector<LoginFinalProvider, TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.passwordController,
                        builder: (context, passwordController, child) {
                          return CustomTextFormField(
                            controller: passwordController,
                            hintText: "lbl_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              // Add additional password validation if needed
                              return null;
                            },
                            obscureText: true,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 27.v),
                    CustomElevatedButton(
                      height: 56.v,
                      text: "lbl_login".tr,
                      margin: EdgeInsets.only(left: 1.h),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          NavigatorService.pushNamed(
                            AppRoutes.imageUploadScreen,
                          );
                        }
                      },
                    ),
                    SizedBox(height: 58.v),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "msg_for_assistance".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Container(
                      height: 15.v,
                      width: 247.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_english_kannada2".tr,
                                    style: CustomTextStyles.bodySmallff000000,
                                  ),
                                  TextSpan(
                                    text: "lbl_7406333800".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: 74.h,
                              child: Divider(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      height: 15.v,
                      width: 243.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_english_kannada4".tr,
                                    style: CustomTextStyles.bodySmallff000000,
                                  ),
                                  TextSpan(
                                    text: "lbl_9071386515".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: 74.h,
                              child: Divider(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 60.v),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text(
                              "lbl_v1_7".tr,
                              style: CustomTextStyles.bodySmallInter,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_2023".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "msg_codeland_infosolutions".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
