import 'package:test_beauty_city/app_ex.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomSlider(),
          IconGrid(),
          BottomSlider(),
          SizedBox(height: Dimens.padding48),
        ],
      ),
    );
  }
}
