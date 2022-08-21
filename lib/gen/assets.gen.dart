/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_left.svg
  String get arrowLeft => 'assets/icons/arrow_left.svg';

  /// File path: assets/icons/arrow_right.svg
  String get arrowRight => 'assets/icons/arrow_right.svg';

  /// File path: assets/icons/chat.svg
  String get chat => 'assets/icons/chat.svg';

  /// File path: assets/icons/chevron_left.svg
  String get chevronLeft => 'assets/icons/chevron_left.svg';

  /// File path: assets/icons/chevron_right.svg
  String get chevronRight => 'assets/icons/chevron_right.svg';

  /// File path: assets/icons/close.svg
  String get close => 'assets/icons/close.svg';

  /// File path: assets/icons/column_2.svg
  String get column2 => 'assets/icons/column_2.svg';

  /// File path: assets/icons/column_3.svg
  String get column3 => 'assets/icons/column_3.svg';

  /// File path: assets/icons/discover.svg
  String get discover => 'assets/icons/discover.svg';

  /// File path: assets/icons/download.svg
  String get download => 'assets/icons/download.svg';

  /// File path: assets/icons/edit.svg
  String get edit => 'assets/icons/edit.svg';

  /// File path: assets/icons/email.svg
  String get email => 'assets/icons/email.svg';

  /// File path: assets/icons/film.svg
  String get film => 'assets/icons/film.svg';

  /// File path: assets/icons/heart_fill.svg
  String get heartFill => 'assets/icons/heart_fill.svg';

  /// File path: assets/icons/heart_outline.svg
  String get heartOutline => 'assets/icons/heart_outline.svg';

  /// File path: assets/icons/help.svg
  String get help => 'assets/icons/help.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/logout.svg
  String get logout => 'assets/icons/logout.svg';

  /// File path: assets/icons/manage_accounts.svg
  String get manageAccounts => 'assets/icons/manage_accounts.svg';

  /// File path: assets/icons/mic.svg
  String get mic => 'assets/icons/mic.svg';

  /// File path: assets/icons/password.svg
  String get password => 'assets/icons/password.svg';

  /// File path: assets/icons/play.svg
  String get play => 'assets/icons/play.svg';

  /// File path: assets/icons/search.svg
  String get search => 'assets/icons/search.svg';

  /// File path: assets/icons/share.svg
  String get share => 'assets/icons/share.svg';

  /// File path: assets/icons/time.svg
  String get time => 'assets/icons/time.svg';

  /// File path: assets/icons/tune.svg
  String get tune => 'assets/icons/tune.svg';

  /// File path: assets/icons/user.svg
  String get user => 'assets/icons/user.svg';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg_image.jpg
  AssetGenImage get bgImage =>
      const AssetGenImage('assets/images/bg_image.jpg');

  /// File path: assets/images/logo1.svg
  String get logo1 => 'assets/images/logo1.svg';

  /// File path: assets/images/logo2.svg
  String get logo2 => 'assets/images/logo2.svg';
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
