import 'package:easy_localization/easy_localization.dart';
import 'package:test_beauty_city/app_ex.dart';
import 'package:test_beauty_city/features/presentation/widgets/wave_circle_painter.dart';

class BottomSlider extends StatelessWidget {
  const BottomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: Dimens.padding18, left: Dimens.padding18),
      child: Container(
        padding: const EdgeInsets.all(Dimens.padding18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimens.highRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomPaint(
                painter: WaveCirclePainter(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: const Icon(Icons.people_outline,
                          size: 40, color: Colors.green)),
                )),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'create_network'.tr(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'text_bottom_slider'.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorPalette.light.secondBackground,
                borderRadius: BorderRadius.circular(Dimens.circleRadius),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward_ios_sharp,
                    size: 10, color: ColorPalette.light.surfaceColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
