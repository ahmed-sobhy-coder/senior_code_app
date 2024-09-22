import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/widgets/custome_svg_image.dart';
import 'package:senior_code_app/exports.dart';

import '../../../../../core/utils/app_styels.dart';
import 'protfolio_button.dart';

class PortfolioListViewItem extends StatelessWidget {
  const PortfolioListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Card(
        elevation: 4,
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: 14.w,
            top: 24.h,
            bottom: 21.h,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 27.w,
                ),
                child: SizedBox(
                  width: 89.w, // Using responsive width
                  height: 92.h, // Using responsive height
                  child: Image.asset(
                    AppAssets.khedmtyTestPortfolio,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Khedmetty",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: AppStyles.getSemiBoldStyle(
                          fontSize: 16,
                          color: AppColors.steelBlue,
                          fontFamily: FontFamilies.poppinsFamily,
                        ),
                      ),
                    ),
                    Text(
                      "Mobile App",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: AppStyles.getRegularStyle(
                        fontSize: 14,
                        color: AppColors.grayishBlue,
                        fontFamily: FontFamilies.poppinsFamily,
                      ),
                    ),
                    16.vs,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "3 weeks",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: AppStyles.getMediumStyle(
                            fontSize: 13,
                            color: AppColors.black,
                          ),
                        ),
                        33.vs,
                        Row(
                          children: [
                            CustomSVGImage(
                              asset: AppAssets.locationIcon,
                              height: 24.h,
                              width: 24.w,
                            ),
                            4.hs,
                            Text(
                              "Saudi Arabia",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: AppStyles.getMediumStyle(
                                fontSize: 13,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    16.vs, // Space before buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProtfolioButton(
                          text: 'UI Design',
                          onTap: () {},
                        ),
                        15.hs, // Space between buttons
                        ProtfolioButton(
                          text: 'Admin Panel',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
