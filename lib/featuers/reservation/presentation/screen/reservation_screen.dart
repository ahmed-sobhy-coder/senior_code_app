import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';

import '../widgets/reservation_screen_body_section.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            child: const ReservationScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
