import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import 'reservation_app_bar_section.dart';
import 'reservation_form_section.dart';

import 'reservation_note_text_section.dart';
import 'reservation_services_section.dart';

class ReservationScreenBodySection extends StatelessWidget {
  const ReservationScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        28.vs,
        const ReservationAppBarSection(),
        42.vs,
        const ReservationServicesSection(),
        // 20.vs,
        const ReservationFormSection(),
        18.75.vs,
        const ReservationNoteTextSection(),
        56.25.vs,
      ],
    );
  }
}
