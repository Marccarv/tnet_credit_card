/// #region Imports

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// #endregion

/// #region Class [TNETCreditCard] extends [StatefulWidget]

/// [TNETCreditCard] is a clickable container for testing purpose
class TNETCreditCard extends StatefulWidget {
  /// Variable [cardName] type [String] user can declarate his card name
  final String cardName;

  /// Variable [cardNumber] type [String] user can declarate his card number
  final String cardNumber;

  /// Variable [cardExpirationDate] type [String] user can declarate his card expiration date
  final String cardExpirationDate;

  /// Variable [cardExpirationText] type [String] user can declarate his card expiration text
  final String cardExpirationText;

  /// Variable [firstLogo] type [Image] can accept an image and set it in first position
  final Image firstLogo;

  /// Variable [secondLogo] type [Image] can accept an image and set it in second position
  final Image secondLogo;

  /// Variable [height] type [double] you're able to customize container's height
  final double height;

  /// Variable [width] type [double] that permites user to change containers width
  final double width;

  /// Variable [textExpirationColor] type [Color] can be used to change expiration text
  final Color textExpirationColor;

  /// Variable [textInputsColor] type [Color] can be used to change user's inputs text color
  final Color textInputsColor;

  /// Variable [uniqueColor] type [Color] used to change the container's color in case it's not gradient
  final Color uniqueColor;

  /// Variable [firstGradientColor] type [Color] used to change first container's color in case it's gradient
  final Color firstGradientColor;

  /// Variable [secondGradientColor] type [Color] used to change second container's color in case it's gradient
  final Color secondGradientColor;

  /// Variable [shadowGradient] type [Color] used to change the container's shadows in right corner in case it's  gradient
  final Color shadowGradient;

  /// Constructor
  const TNETCreditCard({
    Key key,
    this.width,
    this.height,
    this.cardName,
    this.firstLogo,
    this.cardNumber,
    this.secondLogo,
    this.uniqueColor,
    this.shadowGradient,
    this.textInputsColor,
    this.cardExpirationDate,
    this.cardExpirationText,
    this.firstGradientColor,
    this.textExpirationColor,
    this.secondGradientColor,
  }) : super(key: key);

  @override
  _TNETCreditCardState createState() => _TNETCreditCardState();
}

class _TNETCreditCardState extends State<TNETCreditCard> {
  /// Local variables, declared to be easier to change
  final double _shadowBlur = 8.0;
  final double _shadowSpread = 5.0;
  final double _containerBorderRadius = 10.0;

  final String _cardName = "Marco Carvalho";
  final String _cardExpirationDate = "07/25";
  final String _cardNumber = "4151 XXXX 9207 4282";
  final String _cardExpirationText = "VÁLIDO ATÉ:\nGOOD THRU";

  final Offset _shadowPosition = const Offset(2, 5);

  final Color _textInputsColor = Colors.white;
  final Color _textExpirationColor = Colors.black;
  final Color _containerDefaultColor = Colors.blueAccent;
  final Color _shadowColor = Colors.grey.withOpacity(0.5);

  final Alignment _gradientStartPoint = Alignment.topLeft;
  final Alignment _gradientEndPoint = Alignment.centerRight;

  /// Widget construction
  @override
  Widget build(BuildContext context) {
    /// Variable size that uses width and height sizes from phones screen to dinamize sizes
    Size size = MediaQuery.of(context).size;

    /// Padding arround the contaienr
    return Padding(
      padding: EdgeInsets.symmetric(
        /// Padding in horizontal (left and right)
        horizontal: size.width * 0.08,

        /// Padding in vertical (top and down)
        vertical: size.height * 0.02,
      ),

      /// Construction of the widget using a container as main widget
      child: Container(
        /// Width size, in case no value given to widget.width bu default assumes "size.width * 1"
        width: widget.width ?? size.width * 1.0,

        /// Height size, in case no value given to widget.height bu default assumes "size.height * 0.235"
        height: widget.height ?? size.height * 0.235,

        /// Container's decoration box
        decoration: BoxDecoration(
          /// Container's border radius
          borderRadius: BorderRadius.circular(_containerBorderRadius),

          /// Container's main color, in case it's not setted it's return "Colors.blueAccent as default"
          color: widget.uniqueColor ?? _containerDefaultColor,

          /// Container's shadow
          boxShadow: [
            BoxShadow(
              /// Shadow's color
              color: _shadowColor,

              /// Shadow's size
              spreadRadius: _shadowSpread,

              /// Creates the box shadow
              blurRadius: _shadowBlur,

              /// Changes the shadow's position
              offset: _shadowPosition,
            ),
          ],

          /// In case any of the colors assumes to be null the container assumes the main color
          gradient: (widget.firstGradientColor == null ||
                  widget.secondGradientColor == null)
              ? null
              : LinearGradient(
                  colors: [
                    /// Gradient's first color as shadow
                    widget.shadowGradient ?? widget.firstGradientColor,

                    /// Gradient's first color
                    widget.firstGradientColor,

                    /// Gradient's second color
                    widget.secondGradientColor,
                  ],

                  /// Gradient's start point
                  begin: _gradientStartPoint,

                  /// Gradient's end point
                  end: _gradientEndPoint,
                ),
        ),

        /// Padding inside the container
        child: Padding(
          padding: EdgeInsets.symmetric(
            /// Padding in horizontal (left and right)
            horizontal: size.width * 0.02,

            /// Padding in vertical (top and down)
            vertical: size.height * 0.008,
          ),

          /// Column with all components to build the widget
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Logos widget
              _logosPlacement(widget.firstLogo, widget.secondLogo),

              Padding(
                /// Padding in horizontal (left and right symmetrical)
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Padding(
                  /// Padding at top
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: Text(
                    /// Card number
                    widget.cardNumber ?? _cardNumber,

                    /// Action when text overflows the width or height
                    overflow: TextOverflow.ellipsis,

                    /// Text font
                    style: GoogleFonts.poppins(
                      /// Text color
                      color: widget.textInputsColor ?? _textInputsColor,

                      /// Text size
                      fontSize: size.width * 0.05,
                    ),
                  ),
                ),
              ),

              /// Expiration date row
              _expirationPlacement(
                widget,
                size,
                _textInputsColor,
                _textExpirationColor,
                _cardExpirationText,
                _cardExpirationDate,
              ),

              Padding(
                /// Padding in horizontal (left and right symmetrical)
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: _namePlacement(
                  widget,
                  size,
                  _textInputsColor,
                  _cardName,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// #region [_expirationPlacement] returns a [Row] with [widget.cardExpiration]

Row _expirationPlacement(
  widget,
  size,
  _textInputsColor,
  _textExpirationColor,
  _cardExpirationText,
  _cardExpirationDate,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        /// Valid till
        widget.cardExpirationText ?? _cardExpirationText,

        /// Action when text overflows the width or height
        overflow: TextOverflow.ellipsis,

        /// Text font
        style: GoogleFonts.poppins(
          /// Text color
          color: widget.textExpirationColor ?? _textExpirationColor,

          /// Text size
          fontSize: size.width * 0.02,
        ),
      ),
      SizedBox(
        width: size.width * 0.02,
      ),
      Text(
        /// Expiration date
        widget.cardExpirationDate ?? _cardExpirationDate,

        /// Action when text overflows the width or height
        overflow: TextOverflow.ellipsis,

        /// Text font
        style: GoogleFonts.poppins(
          /// Text color
          color: widget.textInputsColor ?? _textInputsColor,

          /// Text size
          fontSize: size.width * 0.05,
        ),
      ),
    ],
  );
}

/// #endregion

/// #region [_namePlacement] returns a [Row] with [widget.cardName]

Row _namePlacement(widget, size, _textInputsColor, _cardName) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        /// Card name
        widget.cardName ?? _cardName,

        /// Action when text overflows the width or height
        overflow: TextOverflow.ellipsis,

        /// Text font
        style: GoogleFonts.poppins(
          /// Text color
          color: widget.textInputsColor ?? _textInputsColor,

          /// Text size
          fontSize: size.width * 0.05,
        ),
      )
    ],
  );
}

/// #endregion

/// #region [_logosPlacement] returns a [Row] with [firstLogo] and [secondLogo]

Row _logosPlacement(Image firstLogo, Image secondLogo) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      /// First logo returns the Image.asset by default
      firstLogo ??
          Image.asset(
            "asset/images/bpi_logo.png",
            width: 150,
          ),

      /// Second logo returns the Image.asset by default
      secondLogo ??
          Image.asset(
            "asset/images/visa_logo.png",
            color: Colors.white,
            width: 60,
          ),
    ],
  );
}

/// #endregion

// #endregion
