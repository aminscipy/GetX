// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdController extends GetxController {
  InterstitialAd? interstitialAd;
  @override
  void onInit() {
    bannerAd.load();
    interstitialAdvert();
    super.onInit();
  }

  BannerAd bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          print('ad loaded');
        },
        onAdFailedToLoad: (ad, error) {
          print('ad loading failed');
        },
      ),
      request: const AdRequest());

  interstitialAdvert() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/1033173712',
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            interstitialAd = ad;
            print('interstitial ad loaded');
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error');
          },
        ));
  }
}
