mixin PngAssets {
  static const String pngAssets = "assets/image/";
}

mixin SvgAssets {
  static const String svgAssets = "assets/svg/";
}

mixin VideoAssets {
  static const String videoAssets = "assets/videos/";
}

class AppAssets with PngAssets, SvgAssets, VideoAssets {
  // Image PNG
  static const String adsImage = "${PngAssets.pngAssets}ads.png";
  static const String dialogMapImage = "${PngAssets.pngAssets}dialog_map.png";
  static const String carPlateImage = "${PngAssets.pngAssets}car_plate.png";
  static const String locationImage = "${PngAssets.pngAssets}location.png";
  static const String searchImage = "${PngAssets.pngAssets}search.png";
  static const String userImage = "${PngAssets.pngAssets}userimage.png";
  static const String englishFlagImage = "${PngAssets.pngAssets}english.png";
  static const String arabicFlagImage = "${PngAssets.pngAssets}arabic.png";
  static const String tripiaAppIconImage =
      "${PngAssets.pngAssets}tripiaAppIcon.png";
  static const String bigCarImage = "${PngAssets.pngAssets}car.png";
  static const String onboardingImage = "${PngAssets.pngAssets}onBording.png";
  static const String firstProductImage =
      "${PngAssets.pngAssets}first_product.png";
  static const String secondProductImage =
      "${PngAssets.pngAssets}second_product.png";
  static const String userProductImage =
      "${PngAssets.pngAssets}user_product.png";
  static const String smallCarImage = "${PngAssets.pngAssets}small_car.png";
  static const String moneyImage = "${PngAssets.pngAssets}money.png";
  static const String appleImage = "${PngAssets.pngAssets}apple.png";
  static const String washingCloseImage =
      "${PngAssets.pngAssets}washing_close.png";
  static const String tireImage = "${PngAssets.pngAssets}tire.png";
  static const String offerUserImage = "${PngAssets.pngAssets}offer.png";
  static const String tireFillImage = "${PngAssets.pngAssets}tire_fill.png";
  static const String userGeneralImage = "${PngAssets.pngAssets}user.png";
  static const String seniorCodeLogoImage =
      "${PngAssets.pngAssets}signin_logo.png";
  static const String verificationCharacterImage =
      "${PngAssets.pngAssets}verification_character.png";
  static const String resetPasswordImage =
      "${PngAssets.pngAssets}rest_passworrd_floor.png";
  static const String womanHome = "${PngAssets.pngAssets}home_woman.png";
  static const String homeDarkBlueContainer =
      "${PngAssets.pngAssets}home_darkblue_container.png";
  static const String firstHomeCategory =
      "${PngAssets.pngAssets}first_home_category.png";
  static const String secondHomeCategory =
      "${PngAssets.pngAssets}second_home_category.png";
  static const String thirdHomeCategory =
      "${PngAssets.pngAssets}third_home_category.png";
  static const String khedmtyTestPortfolio =
      "${PngAssets.pngAssets}khedmty_test_portfolio.png";
  static const String realStateTestPortfolio =
      "${PngAssets.pngAssets}real_state_project.png";
  static const String graphicDesignImage =
      "${PngAssets.pngAssets}graphic_design_image.png";
  // Icons SVG
  static const String carSolidIcon = "${SvgAssets.svgAssets}car_solid.svg";
  static const String calenderIcon = "${SvgAssets.svgAssets}calendar.svg";

  static const String tripiaLogoIcon = "${SvgAssets.svgAssets}logo.svg";
  static const String cityIcon = "${SvgAssets.svgAssets}city.svg";
  static const String homeLocationIcon = "${SvgAssets.svgAssets}location.svg";
  static const String cameraIcon = "${SvgAssets.svgAssets}camera.svg";
  static const String successIcon = "${SvgAssets.svgAssets}success.svg";
  static const String failureIcon = "${SvgAssets.svgAssets}failure.svg";
  static const String onboarding1Icon = "${SvgAssets.svgAssets}onboard1.svg";
  static const String onboarding2Icon = "${SvgAssets.svgAssets}onboard2.svg";
  static const String onboarding3Icon = "${SvgAssets.svgAssets}onboard3.svg";
  static const String arrowNextIcon = "${SvgAssets.svgAssets}arrow_next.svg";
  static const String rectangleIcon = "${SvgAssets.svgAssets}rectangle.svg";
  static const String backIcon = "${SvgAssets.svgAssets}arrow-left.svg";
  static const String starIcon = "${SvgAssets.svgAssets}star.svg";
  static const String phoneIcon = "${SvgAssets.svgAssets}phone.svg";
  static const String carTripIcon = "${SvgAssets.svgAssets}car_trips.svg";
  static const String userIcon = "${SvgAssets.svgAssets}user.svg";
  static const String arrowDownIcon = "${SvgAssets.svgAssets}arrow-down.svg";
  static const String cameraDialogIcon =
      "${SvgAssets.svgAssets}camera_permission.svg";
  static const String locationDialogIcon =
      "${SvgAssets.svgAssets}location_permission.svg";
  static const String notificationDialogIcon =
      "${SvgAssets.svgAssets}notification_permission.svg";
  static const String eyeIcon = "${SvgAssets.svgAssets}eye.svg";
  static const String googleIcon = "${SvgAssets.svgAssets}google.svg";
  static const String facebookIcon = "${SvgAssets.svgAssets}facebook.svg";
  static const String locationTravelIcon =
      "${SvgAssets.svgAssets}location_travel.svg";
  static const String settingIcon = "${SvgAssets.svgAssets}setting.svg";
  static const String bookTripIcon = "${SvgAssets.svgAssets}book_trip.svg";
  static const String ovalIcon = "${SvgAssets.svgAssets}oval.svg";
  static const String trueIcon = "${SvgAssets.svgAssets}true.svg";
  static const String notificationIcon =
      "${SvgAssets.svgAssets}notification.svg";
  static const String reportIcon = "${SvgAssets.svgAssets}report.svg";
  static const String smallIcon = "${SvgAssets.svgAssets}smallIcon.svg";
  static const String emptyIcon = "${SvgAssets.svgAssets}empty.svg";
  static const String splashIcon = "${SvgAssets.svgAssets}splash.svg";
  static const String locaIcon = "${SvgAssets.svgAssets}loca.svg";
  static const String circleIcon = "${SvgAssets.svgAssets}circle.svg";
  static const String reverseIcon = "${SvgAssets.svgAssets}yellow_location.svg";
  static const String lineIcon = "${SvgAssets.svgAssets}line.svg";
  static const String exchangeIcon = "${SvgAssets.svgAssets}exchange.svg";
  static const String dateIcon = "${SvgAssets.svgAssets}time.svg";
  static const String doneDialogIcon = "${SvgAssets.svgAssets}done.svg";
  static const String smsIcon = "${SvgAssets.svgAssets}sms.svg";
  static const String carIcon = "${SvgAssets.svgAssets}car.svg";
  static const String settingButtonIcon =
      "${SvgAssets.svgAssets}backBuuton.svg";
  static const String profileLocationIcon =
      "${SvgAssets.svgAssets}profileLocation.svg";
  static const String profileNameIcon = "${SvgAssets.svgAssets}profileName.svg";
  static const String profilePhoneIcon =
      "${SvgAssets.svgAssets}profilePhone.svg";
  static const String profileMailIcon = "${SvgAssets.svgAssets}profileMail.svg";
  static const String profilePasswordIcon =
      "${SvgAssets.svgAssets}profilePassword.svg";
  static const String profileStatisticsIcon =
      "${SvgAssets.svgAssets}statistics.svg";
  static const String profileDividerIcon = "${SvgAssets.svgAssets}divider.svg";
  static const String markerIcon = "${SvgAssets.svgAssets}marker.svg";
  static const String arabicFlagIcon = "${SvgAssets.svgAssets}arabic.svg";
  static const String englishFlagIcon = "${SvgAssets.svgAssets}english.svg";
  static const String searchIcon = "${SvgAssets.svgAssets}search.svg";
  static const String fillLocationIcon =
      "${SvgAssets.svgAssets}fill_location.svg";
  static const String yellowLocationIcon =
      "${SvgAssets.svgAssets}yellow_locatiom.svg";
  static const String onBoardingBackgroundIcon =
      "${SvgAssets.svgAssets}onboarding_background.svg";
  static const String locationIcon = "${SvgAssets.svgAssets}location.svg";
  static const String personIcon = "${SvgAssets.svgAssets}person_icon.svg";
  static const String trendingUpIcon = "${SvgAssets.svgAssets}trending-up.svg";
  static const String pendingIcon = "${SvgAssets.svgAssets}pending_icon.svg";
  static const String projectIcon = "${SvgAssets.svgAssets}project_icon.svg";
  static const String salesIcon = "${SvgAssets.svgAssets}sales_icon.svg";
  static const String chatIcon = "${SvgAssets.svgAssets}chat.svg";
  static const String profileIcon = "${SvgAssets.svgAssets}profile.svg";
  static const String homeIcon = "${SvgAssets.svgAssets}home.svg";
  static const String reservationIcon = "${SvgAssets.svgAssets}reservation.svg";
  static const String reviewsIcon = "${SvgAssets.svgAssets}reviews.svg";
  static const String verticalLineIcon =
      "${SvgAssets.svgAssets}vertical_line.svg";

  // Video Assets
  static const String testOnBoardingVideo =
      "${VideoAssets.videoAssets}test.mp4";
}
