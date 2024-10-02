import 'package:easy_localization/easy_localization.dart';
import 'package:test_beauty_city/app_ex.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView(
        children: List.generate(3, (index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                '${'txt_slider'.tr()} ${index + 1}',
                style:Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white,
                fontWeight: FontWeight.w900),
              ),
            ),
          );
        }),
      ),
    );
  }
}

