import 'dart:io';
import 'package:mobile_app_design/widgets/app_bar/custom_app_bar.dart';
import 'package:mobile_app_design/widgets/app_bar/appbar_title.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:mobile_app_design/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_design/core/app_export.dart';
import 'provider/image_upload_provider.dart';

class ImageUploadScreen extends StatefulWidget {
  const ImageUploadScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ImageUploadScreenState createState() => ImageUploadScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ImageUploadProvider(),
      child: ImageUploadScreen(),
    );
  }
}

class ImageUploadScreenState extends State<ImageUploadScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final imageUploadProvider = Provider.of<ImageUploadProvider>(context);
    return SafeArea(
      child: WillPopScope(
        onWillPop: () => exit(0),
        child: Scaffold(
          appBar: _buildAppBar(context),
          body: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 11.v,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: imageUploadProvider.image == null
                        ? DottedBorder(
                            color: theme.colorScheme.primaryContainer
                                .withOpacity(0.66),
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 1.v,
                              right: 1.h,
                              bottom: 1.v,
                            ),
                            strokeWidth: 1.h,
                            dashPattern: [
                              6,
                              6,
                            ],
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 97.h,
                                vertical: 203.v,
                              ),
                              decoration:
                                  AppDecoration.outlinePrimaryContainer1,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgImage,
                                height: 100.adaptSize,
                                width: 100.adaptSize,
                              ),
                            ),
                          )
                        : Container(
                            decoration: AppDecoration.outlinePrimaryContainer1,
                            child: Image.file(
                              imageUploadProvider.image!,
                              width: MediaQuery.of(context).size.width,
                              height: 510.adaptSize,
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                  SizedBox(height: 74.v),
                  _buildTwo(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_upload_a_image".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    final imageUploadProvider = Provider.of<ImageUploadProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedButton(
          onPressed: () async {
            await imageUploadProvider.pickImageFromGallery();
          },
          width: 119.h,
          text: "lbl_upload".tr,
          buttonTextStyle: CustomTextStyles.bodyMediumOnError,
        ),
        CustomElevatedButton(
          width: 112.h,
          text: "lbl_view".tr,
          buttonStyle: CustomButtonStyles.outlinePrimaryTL12,
          buttonTextStyle: theme.textTheme.bodyMedium!,
        ),
      ],
    );
  }
}
