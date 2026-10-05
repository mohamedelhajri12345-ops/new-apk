import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdService {
  static const String rewardedAdUnitId = 'ca-app-pub-3940256099942544/5224354917';
  static RewardedAd? _rewardedAd;
  static bool _isLoaded = false;

  static void loadRewardedAd() {
    RewardedAd.load(
      adUnitId: rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) { _rewardedAd = ad; _isLoaded = true; },
        onAdFailedToLoad: (error) { _isLoaded = false; },
      ),
    );
  }

  static Future<bool> showRewardedAd({required Function onReward}) async {
    if (_rewardedAd == null || !_isLoaded) { loadRewardedAd(); return false; }
    _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) { ad.dispose(); loadRewardedAd(); },
    );
    _rewardedAd!.show(onUserEarnedReward: (ad, reward) => onReward());
    return true;
  }
}
