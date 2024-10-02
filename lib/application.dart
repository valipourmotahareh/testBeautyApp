import 'package:easy_localization/easy_localization.dart';

import 'app_ex.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: AppConfig.supportedLocales,
      path: AppConfig.langPath,
      startLocale: AppConfig.startLocale,
      useOnlyLangCode: true,
      child: ScreenUtilInit(
          designSize: AppConfig.designSize,
          builder: (context, child) {
            return MaterialApp.router(
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              routerConfig: locator.get<GoRouter>(),
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              theme: AppTheme.lightTheme,
            );
          }),
    );
  }
}
