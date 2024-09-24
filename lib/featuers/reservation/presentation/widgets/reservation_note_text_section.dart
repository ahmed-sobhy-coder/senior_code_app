import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class ReservationNoteTextSection extends StatelessWidget {
  const ReservationNoteTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '*Note: ',
              style: AppStyles.getBoldStyle(
                color: AppColors.white,
              ),
            ),
            TextSpan(
              text: 'Tap on the services you want to select.',
              style: AppStyles.getMediumStyle(
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
