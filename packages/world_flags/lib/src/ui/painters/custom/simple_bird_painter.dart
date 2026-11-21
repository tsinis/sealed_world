part of "../multi_element_painter.dart";

/// The flags whose eagles the [SimpleBirdPainter] paints.
enum _Bird { egy, mda, vir }

/// Painter for the simple bird: the shield eagle of the flags of Egypt, Moldova
/// and the U.S. Virgin Islands, each in the colors of its flag.
///
/// The artwork is adapted from Twemoji graphics, Copyright 2019 Twitter, Inc
/// and other contributors, licensed under CC-BY 4.0 (see the README of this
/// package). It is converted to badge layers, cropped to the bird and colored
/// by the flag palette.
final class SimpleBirdPainter extends MultiElementPainter
    with BadgeArtworkPainter {
  /// Creates a new instance of [SimpleBirdPainter] for Egypt flag: the eagle of
  /// Moldova, without the aurochs on its shield.
  const new egy(super._properties, super.aspectRatio) : _bird = _Bird.egy;

  /// Creates a new instance of [SimpleBirdPainter] for Moldova flag.
  const new mda(super._properties, super.aspectRatio) : _bird = _Bird.mda;

  /// Creates a new instance of [SimpleBirdPainter] for the flag of the U.S.
  /// Virgin Islands: the eagle of Moldova, without the aurochs on its shield.
  const new vir(super._properties, super.aspectRatio) : _bird = _Bird.vir;

  final _Bird _bird;

  /// Width over height of the shield eagle artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _eagleRatio = 0.7143;

  /// The shield eagle with the aurochs on its shield, built into paths on
  /// first paint and reused after.
  static final _mdaArtwork = BadgeArtwork(const [
    ..._eagleLayers,
    ..._aurochsLayers,
  ]);

  /// The shield eagle alone, built into paths on first paint and reused after.
  static final _eagleArtwork = BadgeArtwork(_eagleLayers);

  /// Commands as an opcode then its coordinates, relative to the badge
  /// box: 1 moves, 2 draws a line, 0 closes the sub-path.
  ///
  /// Palette: the eagle (`0`), the top of its shield and its talons (`1`), the
  /// bottom of its shield (`2`), the sceptre (`3`) and the olive branch (`4`).
  // dart format off
  static const _eagleLayers = <BadgeLayer>[
    (color: 1, geometry: [
      1, 0.3, 0.2857, 2, 0.7, 0.2857, 2, 0.7, 0.5, 2, 0.3, 0.5, 0,
    ]),
    (color: 2, geometry: [
      1, 0.3, 0.5, 2, 0.3, 0.6429, 2, 0.5, 0.7143, 2, 0.7, 0.6429, 2, 0.7, 0.5,
      0,
    ]),
    (color: 0, geometry: [
      1, 0.3, 0, 2, 0.3, 0.0714, 2, 0.4, 0.0714, 2, 0.4, 0.2143, 2, 0.6, 0.2143,
      2, 0.6, 0, 0, 1, 0.6, 0.7143, 2, 0.5, 0.7589, 2, 0.4, 0.7143, 2, 0.3,
      0.9286, 2, 0.5, 1, 2, 0.7, 0.9286, 0, 1, 0.2, 0.1429, 2, 0.1, 0.0714, 2,
      0, 0.1429, 2, 0, 0.8571, 2, 0.2, 0.7143, 2, 0.2, 0.2143, 2, 0.3, 0.2143,
      0, 1, 0.9, 0.0714, 2, 0.8, 0.1429, 2, 0.7, 0.2143, 2, 0.8, 0.2143, 2, 0.8,
      0.7143, 2, 1, 0.8571, 2, 1, 0.1429, 0,
    ]),
    (color: 4, geometry: [
      1, 0.2637, 0.8388, 2, 0.255, 0.8404, 2, 0.2455, 0.8388, 2, 0.2363, 0.8343,
      2, 0.2287, 0.8274, 2, 0.0055, 0.5513, 2, 0.0009, 0.5431, 2, 0.0001,
      0.5353, 2, 0.0029, 0.5286, 2, 0.0092, 0.5239, 2, 0.0228, 0.5184, 2,
      0.0315, 0.5168, 2, 0.041, 0.5184, 2, 0.0501, 0.5228, 2, 0.0577, 0.5297, 2,
      0.2809, 0.8059, 2, 0.2855, 0.8141, 2, 0.2863, 0.8219, 2, 0.2836, 0.8286,
      2, 0.2773, 0.8332, 0,
    ]),
    (color: 3, geometry: [
      1, 0.9817, 0.5281, 2, 0.988, 0.5326, 2, 0.9909, 0.5392, 2, 0.9901, 0.547,
      2, 0.9856, 0.555, 2, 0.7665, 0.8263, 2, 0.759, 0.8331, 2, 0.7499, 0.8374,
      2, 0.7405, 0.8389, 2, 0.7317, 0.8374, 2, 0.7182, 0.8318, 2, 0.7119,
      0.8272, 2, 0.7091, 0.8206, 2, 0.7098, 0.8128, 2, 0.7143, 0.8048, 2,
      0.9335, 0.5335, 2, 0.941, 0.5267, 2, 0.95, 0.5224, 2, 0.9595, 0.5209, 2,
      0.9682, 0.5225, 0,
    ]),
    (color: 1, geometry: [
      1, 0.3, 0.7143, 2, 0.2, 0.7857, 2, 0.2, 0.8571, 2, 0.3, 0.7857, 0, 1, 0.7,
      0.7143, 2, 0.7, 0.7857, 2, 0.8, 0.8571, 2, 0.8, 0.7857, 0,
    ]),
  ];

  /// The aurochs head on the shield of the [_eagleLayers] (palette `3`).
  static const _aurochsLayers = <BadgeLayer>[
    (color: 3, geometry: [
      1, 0.3234, 0.471, 2, 0.3765, 0.471, 2, 0.3765, 0.5, 2, 0.3234, 0.5, 0, 1,
      0.6234, 0.471, 2, 0.6765, 0.471, 2, 0.6765, 0.5, 2, 0.6234, 0.5, 0,
    ]),
    (color: 3, geometry: [
      1, 0.5, 0.4286, 2, 0.4, 0.3571, 2, 0.4, 0.5684, 2, 0.5, 0.6429, 2, 0.6,
      0.5684, 2, 0.6, 0.3571, 0,
    ]),
  ];
  // dart format on

  @override
  Record get variant => (super.variant, _bird);

  @override
  BadgeArtwork get artwork => switch (_bird) {
    _Bird.mda => _mdaArtwork,
    _Bird.egy || _Bird.vir => _eagleArtwork,
  };

  @override
  double get artworkRatio => _eagleRatio;
}
