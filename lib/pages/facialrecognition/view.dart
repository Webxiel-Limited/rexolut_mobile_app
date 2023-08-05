import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../common/constants/colors/colors.dart';
import '../../common/routes/names.dart';
import '../../utils/widgets/appbar.dart';
import 'dart:io';

import 'controller.dart';

class FacialRecognition extends GetView<FacialRecognitionController> {
  const FacialRecognition({super.key});


  void _navigateToNextPage() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.toNamed(AppRoutes.kycSuccess);
    });
  }

  // void _navigateBack() {
  //   controller.clearState();
  // }

  Widget _takeAPhotoButton() {
    return Column(
      children: [
        Container(
          width: 250.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: AppColor.highlightColor,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: AppColor.highlightColor,
            ),
          ),
          child: TextButton(
            onPressed: () {
              // Call the pickImage method from the controller
              controller.pickImage();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.camera_alt_outlined, color: AppColor.surfaceColor,),
                SizedBox(width: 5.w,), // Adjust the spacing between icon and text
                Text(
                  'Take a Photo',
                  style: TextStyle(
                    color: AppColor.surfaceColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.h), // Add some spacing

        Container(
          width: 250.w,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: AppColor.surfaceTextColor,
            ),
          ),
          child: TextButton(
            onPressed: () async {
              try {
                final XFile? pickedFile =
                await ImagePicker().pickImage(source: ImageSource.gallery);
                if (pickedFile == null) return;
                controller.image.value = pickedFile;
                _navigateToNextPage();
              } catch (e) {
                print('Failed to pick image from gallery: $e');
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(FontAwesomeIcons.images, color: AppColor.surfaceTextColor,),
                SizedBox(width: 15.w,), // Adjust the spacing between icon and text
                Text(
                  'Gallery',
                  style: TextStyle(
                    color: AppColor.surfaceTextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _selectedImageWidget() {
    return Obx(() {
      if (controller.image.value != null) {
        return Container(
          margin: EdgeInsets.only(top: 80.h, bottom: 30.h),
          width: 250.w,
          height: 250.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            image: DecorationImage(
              image: FileImage(File(controller.image.value!.path)),
              fit: BoxFit.cover,
            ),
          ),
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Container(
                margin: EdgeInsets.only(top: 70.h),
                width: 250.w,
                height: 100.h,
                child: Icon(
                  FontAwesomeIcons.solidFaceSmile,
                  color: AppColor.highlightColor,
                  size: 150.r,
            ),
              ),
            SizedBox(height: 90.0.h),
            Padding(
              padding: EdgeInsets.only(bottom: 100.0.h),
              child: Text(
                'Facial Recognition',
                style: TextStyle(
                  color: AppColor.surfaceTextColor,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -1.5,
                ),
              ),
            ),
          ],
        );
      }
    });
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.surfaceColor,
      appBar: (PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child:  const VerifyAppBar(
          text: 'Let\'s Verify your Identity',
        ),
      )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              _selectedImageWidget(),
              _takeAPhotoButton(),
            ],
          ),
        ),
      ),
    );
  }
}
