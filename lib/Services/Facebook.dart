import 'package:flutter/material.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:fluttertoast/fluttertoast.dart';


class FacebookAds extends StatefulWidget {
  @override
  _FacebookAdsState createState() => _FacebookAdsState();
}

class _FacebookAdsState extends State<FacebookAds> {
  bool _isInterstitialAdLoaded = false;
  Widget _currentAd = SizedBox(
    height: 0,
    width: 0,
  );

  @override
  void initState() {
    // implement initState
    super.initState();
    setState(() {
      _currentAd = FacebookBannerAd(
        bannerSize: BannerSize.STANDARD,
        listener: (result, value) {
          print("Banner Ad:$result--> $value");
        },
      );
    });
    FacebookAudienceNetwork.init(
      testingId: "37b1da9d-b48c-4103-a393-2e095e734bd6",
    );
    _loadIntersistialAd();
  }

  void _loadIntersistialAd() {
    FacebookInterstitialAd.loadInterstitialAd(
        placementId: "add placement id",
        listener: (result, value) {
          print("interstitialAd: $result-->$value");
          if (result == InterstitialAdResult.LOADED) {
            _isInterstitialAdLoaded = true;
          }
          if (result == InterstitialAdResult.DISMISSED &&
              value['inavalidated'] == true) {
            _isInterstitialAdLoaded = false;
            _loadIntersistialAd();
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
            child: Align(
          alignment: Alignment(0, -1),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 3,
            shrinkWrap: true,
            children: <Widget>[
              RaisedButton(
                onPressed: _showInterstitialAd,
                child: Text("Interstitial Ad"),
              ),
            ],
          ),
        )),
        Flexible(
          child: Align(
            alignment: Alignment(0, 1),
            child: _currentAd,
          ),
          fit: FlexFit.tight,
          flex: 2,
        ),
      ],
    );
  }

  _showInterstitialAd() {
    if (_isInterstitialAdLoaded == true) {
      FacebookInterstitialAd.showInterstitialAd();
    } else {
      Fluttertoast.showToast(msg: 'Interstitial As not loaded yet');
    }
  }
}
