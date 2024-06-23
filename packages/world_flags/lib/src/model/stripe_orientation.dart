/// An enum representing the orientation of stripes on a flag.
///
/// This enum is used to specify the direction in which stripes run on a flag.
/// It can be used for horizontal, vertical, or diagonal stripes.
enum StripeOrientation {
  /// Stripes go from left to right.
  /// Indicates whether the stripes on the flag are arranged horizontally.
  /// This is the orientation used by flags like Russia, Germany, Poland, etc.
  ///
  /// ```ascii
  /// |------------|
  /// |------------|
  /// |XXXXXXXXXXXX|
  /// |------------|
  /// |------------|
  /// ```
  horizontal,

  /// Stripes go from top to bottom.
  /// This is the orientation used by flags like Italy, France, Ireland, etc.
  ///
  /// ```ascii
  /// |   |XXX|   |
  /// |   |XXX|   |
  /// |   |XXX|   |
  /// |   |XXX|   |
  /// ```
  vertical,

  /// Stripes go diagonally from top left to bottom right.
  ///
  /// This is the orientation used by flags like Papua New Guinea
  /// and Trinidad and Tobago, etc.
  ///
  /// ```ascii
  /// \   \XXX\   \
  ///  \   \XXX\   \
  ///   \   \XXX\   \
  ///    \   \XXX\   \
  /// ```
  ///
  diagonalTopLeftToBottomRight,

  /// Stripes go diagonally from bottom left to top right.
  ///
  /// This is the orientation used by flags like Bhutan, Tanzania, etc.
  ///
  /// ```ascii
  ///     /   /XXX/   /
  ///    /   /XXX/   /
  ///   /   /XXX/   /
  ///  /   /XXX/   /
  /// ```
  ///
  diagonalBottomLeftToTopRight,
}
