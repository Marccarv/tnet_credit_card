/// #region Imports

import 'package:flutter/material.dart';
import 'package:tnet_credit_card/tnet_credit_card.dart';

/// #endregion

/// #region Main

void main() => runApp(const TNETCreditCardApp());

/// #endregion

/// #region Class [TNETCreditCardApp] extends [StatelessWidget]

class TNETCreditCardApp extends StatelessWidget {
  /// Constructor
  const TNETCreditCardApp({Key? key}) : super(key: key);

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Application title
      title: 'TNET Credit Card',

      /// Changing theme data properties
      theme: ThemeData(
        /// Primary swatch color
        primarySwatch: Colors.blue,
      ),

      /// Page route
      home: const TNETCreditCardDemo(title: 'TNET Credit Card Demo'),
    );
  }
}

/// #endregion

/// #region Class [TNETCreditCardDemo] extends [StatefulWidget]

class TNETCreditCardDemo extends StatefulWidget {
  /// Construtor
  const TNETCreditCardDemo({Key? key, required this.title}) : super(key: key);

  /// Variable [title] type [String] used to set a title to the page
  final String title;

  @override
  State<TNETCreditCardDemo> createState() => _TNETCreditCardDemoState();
}

class _TNETCreditCardDemoState extends State<TNETCreditCardDemo> {
  /// Declaration of first image asset
  final Image firstLogo = Image.asset(
    "../assets/images/bpi_logo.png",
    width: 150,
  );

  /// Declaration of second image asset
  final Image secondLogo = Image.asset(
    "../assets/images/visa_logo.png",
    color: Colors.white,
    width: 60,
  );

  /// Widget building
  @override
  Widget build(BuildContext context) {
    /// Returns a Scaffold to build the page
    return Scaffold(
      appBar: AppBar(
        /// App bar with setted title above
        title: Text(widget.title),
      ),

      /// Creates a widget that centers its child
      body: Center(
        /// Creates a vertical array of children
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TNETCreditCard(
                firstLogo: firstLogo,
                secondLogo: secondLogo,
                uniqueColor: Colors.blueAccent,
              ),
              TNETCreditCard(
                firstLogo: firstLogo,
                secondLogo: secondLogo,
                shadowGradient: Colors.white,
                firstGradientColor: Colors.blue,
                secondGradientColor: Colors.blueAccent,
                cardName: "Marco",
              ),
              TNETCreditCard(
                firstLogo: firstLogo,
                secondLogo: secondLogo,
                shadowGradient: Colors.white,
                firstGradientColor: Colors.orange,
                secondGradientColor: Colors.orangeAccent,
                cardExpirationText: "05/28",
              ),
              TNETCreditCard(
                firstLogo: firstLogo,
                secondLogo: secondLogo,
                shadowGradient: Colors.white,
                firstGradientColor: Colors.red,
                secondGradientColor: Colors.redAccent,
                cardNumber: "5634 3454 2432 2342",
              ),
              TNETCreditCard(
                firstLogo: firstLogo,
                secondLogo: secondLogo,
                shadowGradient: Colors.white,
                firstGradientColor: Colors.black,
                secondGradientColor: Colors.black54,
                textExpirationColor: Colors.white,
                textInputsColor: Colors.amber,
              ),
              TNETCreditCard(
                firstLogo: firstLogo,
                secondLogo: secondLogo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// #endregion
