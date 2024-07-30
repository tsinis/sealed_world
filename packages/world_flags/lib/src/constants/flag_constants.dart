/// A class containing constants related to flag aspect ratios.
///
/// This class provides default, minimum, and maximum aspect ratios for flags.
/// Aspect ratio is the ratio of the width to the height of the flag. Different
/// countries have different aspect ratios for their flags. For example, the
/// aspect ratio of the flag of Nepal is 41:50, and the aspect ratio of the flag
/// of Qatar is 28:11.
///
/// Example usage:
/// ```dart
/// import 'package:flutter/material.dart';
///
/// class FlagAspectRatioSlider extends StatefulWidget {
///   @override
///  _FlagAspectRatioSliderState createState() => _FlagAspectRatioSliderState();
/// }
///
/// class _FlagAspectRatioSliderState extends State<FlagAspectRatioSlider> {
///   double _currentAspectRatio = FlagConstants.defaultAspectRatio;
///
///   @override
///   Widget build(BuildContext context) {
///     return Column(
///       mainAxisAlignment: MainAxisAlignment.center,
///       children: [
///         Text('Aspect Ratio: ${_currentAspectRatio.toStringAsFixed(2)}'),
///         Slider(
///           value: _currentAspectRatio,
///           min: FlagConstants.minAspectRatio,
///           max: FlagConstants.maxAspectRatio,
///           divisions: 100,
///           label: _currentAspectRatio.toStringAsFixed(2),
///           onChanged: (double value) {
///             setState(() {
///               _currentAspectRatio = value;
///             });
///           },
///         ),
///       ],
///     );
///   }
/// }
/// ```
sealed class FlagConstants {
  /// The default aspect ratio for flags.
  ///
  /// This value is used as the standard aspect ratio for most flags. The
  /// default aspect ratio is 3:2, meaning the width is 1.5 times the height.
  static const defaultAspectRatio = 3 / 2;

  /// The minimum aspect ratio for flags.
  ///
  /// This value represents the smallest aspect ratio used by any country's
  /// flag. The minimum aspect ratio is 41:50, which is the aspect ratio of the
  /// flag of Nepal.
  static const minAspectRatio = 41 / 50; // Nepal.

  /// The maximum aspect ratio for flags.
  ///
  /// This value represents the largest aspect ratio used by any country's flag.
  /// The maximum aspect ratio is 28:11, which is the aspect ratio of the flag
  /// of Qatar.
  static const maxAspectRatio = 28 / 11; // Qatar.
}
