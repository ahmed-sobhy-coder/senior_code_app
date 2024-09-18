import 'package:senior_code_app/core/extensions.dart';


import '../../exports.dart';

Future showCustomDialog({
  required BuildContext context,
  String? message,
  String? content,
  String? title,
  bool isAlert = true,
  Widget? widget,
  bool dismissible = false,
  double? space,
}) =>
    showDialog(
      barrierColor: AppColors.black.withOpacity(0.2),
      context: context,
      barrierDismissible: dismissible,
      builder: (context) {
        return Scaffold(
          backgroundColor: AppColors.transparent,
          body: Center(
            child: Container(
              height: 184,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
              alignment: Alignment.center,
              child: Column(
                children: [
                  20.vs,
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        title!,
                        style: AppStyle.getSemiboldTextStyle(
                          fontSize: 20,
                          color: AppColors.titleGray,
                        ),
                      )),
                  20.vs,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      space.isNotNull ? space!.vs : 4.vs,
                      Text(
                        content!,
                        style: AppStyle.getMediumTextStyle(
                          fontSize: 16,
                          color: AppColors.titleGray,
                        ),
                      ),
                      widget!
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
