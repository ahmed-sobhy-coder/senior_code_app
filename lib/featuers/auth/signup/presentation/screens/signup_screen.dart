import 'package:senior_code_app/core/extensions.dart';
import '../../../../../exports.dart';
import '../widgets/signup_screen_body_section.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.39.w),
            child: const Center(
              child: SignupScreenBodySection(),
            ),
          ),
        ),
      ),
    );
  }
}
