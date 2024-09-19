import 'package:senior_code_app/core/extensions.dart';
import '../../../../../exports.dart';
import '../widgets/signin_screen_body_section.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: const SigninScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
