
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:rexolut/pages/facialrecognition/index.dart';
import 'package:rexolut/pages/kycsuccess/index.dart';
import 'package:rexolut/pages/otpsent/index.dart';
import 'package:rexolut/pages/resetsuccess/index.dart';
import 'package:rexolut/pages/settings/bindings.dart';
import 'package:rexolut/pages/verificationscreen/bindings.dart';
import 'package:rexolut/pages/verifykyc/bindings.dart';

import '../../pages/authdashboard/bindings.dart';
import '../../pages/authdashboard/view.dart';
import '../../pages/cards/bindings.dart';
import '../../pages/cards/view.dart';
import '../../pages/createcards/bindings.dart';
import '../../pages/createcards/view.dart';
import '../../pages/emailrecovery/bindings.dart';
import '../../pages/emailrecovery/view.dart';
import '../../pages/forgotpasswordtile/bindings.dart';
import '../../pages/forgotpasswordtile/view.dart';
import '../../pages/homepage/bindings.dart';
import '../../pages/homepage/view.dart';
import '../../pages/login/bindings.dart';
import '../../pages/login/view.dart';
import '../../pages/newpassword/bindings.dart';
import '../../pages/newpassword/view.dart';
import '../../pages/otpverification/bindings.dart';
import '../../pages/otpverification/view.dart';
import '../../pages/register/bindings.dart';
import '../../pages/register/view.dart';
import '../../pages/settings/view.dart';
import '../../pages/smsrecovery/bindings.dart';
import '../../pages/smsrecovery/view.dart';
import '../../pages/splashfour/bindings.dart';
import '../../pages/splashfour/view.dart';
import '../../pages/splashscreen/bindings.dart';
import '../../pages/splashscreen/view.dart';
import '../../pages/splashthree/bindings.dart';
import '../../pages/splashthree/view.dart';
import '../../pages/splashtwo/bindings.dart';
import '../../pages/splashtwo/view.dart';
import '../../pages/termsandcondition/bindings.dart';
import '../../pages/termsandcondition/view.dart';
import '../../pages/userlocation/bindings.dart';
import '../../pages/userlocation/view.dart';

import '../../pages/verificationscreen/view.dart';
import '../../pages/verifykyc/view.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
        name: AppRoutes.INITIAL,
        page: () => const SplashScreen(),
        binding: SplashScreenBinding()),
    GetPage(
        name: AppRoutes.SplashTwoPage,
        page: () => const SplashTwo(),
        binding: SplashTwoBinding()),
    GetPage(
        name: AppRoutes.SlashThreePage,
        page: () => const SplashThree(),
        binding: SplashThreeBinding()),
    GetPage(
        name: AppRoutes.SplashFourPage,
        page: () => const SplashFour(),
        binding: SplashFourBinding()),
    GetPage(
        name: AppRoutes.AuthDashboardPage,
        page: () => const AuthDashBoard(),
        binding: AuthDashboardBindings()),
    GetPage(
        name: AppRoutes.LoginScreenPage,
        page: () => const LoginScreen(),
        binding: LoginScreenBindings()),
    GetPage(
        name: AppRoutes.registerScreenPage,
        page: () => const RegisterScreen(),
        binding: RegisterScreenBindings()),
    GetPage(
        name: AppRoutes.otpScreenPage,
        page: () =>   OtpScreen(),
        binding: OtpBindings()),
    GetPage(
        name: AppRoutes.userLocationPage,
        page: () => const UserLocationScreen(),
        binding: UserLocationBindings()),
    GetPage(
        name: AppRoutes.termsAndCPage,
        page: () => TermsAndConditions(),
        binding: TermsAndConditionsBinding()),
    GetPage(
        name: AppRoutes.forgotPasswordTilePage,
        page: () => const ForgotPasswordTile(),
        binding: ForgotPasswordTileBindings()),
    GetPage(
        name: AppRoutes.smsRecoveryPage,
        page: () => const SmsRecoveryScreen(),
        binding: SmsRecoveryScreenBindings()),
    GetPage(
        name: AppRoutes.emailRecoveryPage,
        page: () => const EmailRecoveryScreen(),
        binding: EmailRecoveryScreenBindings()),
    GetPage(
        name: AppRoutes.newPasswordPage,
        page: () => const NewPasswordScreen(),
        binding: NewPasswordScreenBindings()),
    GetPage(
        name: AppRoutes.otpSentScreenPage,
        page: () => const OtpSentScreen(),
        binding: OtpSentScreenBindings()),

    GetPage(
        name: AppRoutes.passwordResetSuccessPage,
        page: () => const PasswordResetSuccess(),
        binding: PasswordResetSuccessBindings()),
    GetPage(
        name: AppRoutes.homePage,
        page: () => HomeScreen(),
        binding: HomeScreenBindings()),
    GetPage(
        name: AppRoutes.settingsPage,
        page: () => const SettingScreen(),
        binding: SettingsScreenBindings()),
    GetPage(
        name: AppRoutes.cardPage,
        page: () => const Cards(),
        binding: CardBindings()),
    GetPage(
        name: AppRoutes.createCardPage,
        page: () =>  CreateCards(),
        binding: CreateCardBindings()),
    GetPage(
        name: AppRoutes.verifyKyc,
        page: () => VerifyKyc(),
        binding: VerifyKycBindings()),
    GetPage(
        name: AppRoutes.verificationScreen,
        page: () =>  const VerificationScreen(),
        binding: VerificationScreenBindings()),
    GetPage(
        name: AppRoutes.facialRecognition,
        page: () => const FacialRecognition(),
        binding: FacialRecognitionBindings()),
    GetPage(
        name: AppRoutes.kycSuccess,
        page: () => const CompletedKyc(),
        binding: KycCompletedBindings()),

  ];
}
