import '../../../../core/widgets/home_and_related_screens_custom_app_bar.dart';
import '../../../../exports.dart';

class ReservationAppBarSection extends StatelessWidget {
  const ReservationAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  const HomeAndRelatedScreensCustomAppBar(
          homeCustomAppBarHorizontalPadding: 20,
          homeCustomAppBarTextData: 'Reservation',
        );
  }
}