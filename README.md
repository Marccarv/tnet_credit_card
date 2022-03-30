This package consists in a credit card widget with editable properties.

## Features

This package is only for a testing purpose.
Credit card widget.

## Getting started

```yaml 

dependencies:
  tnet_credit_card: ^0.0.10

```

```dart

import 'package:tnet_credit_card/tnet_credit_card.dart';

```

## Usage

```dart

TNETCreditCard(
  uniqueColor: Colors.blueAccent,
),

TNETCreditCard(
  shadowGradient: Colors.white,
  firstGradientColor: Colors.blue,
  secondGradientColor: Colors.blueAccent,
  cardName: "Marco",
),

TNETCreditCard(
  shadowGradient: Colors.white,
  firstGradientColor: Colors.orange,
  secondGradientColor: Colors.orangeAccent,
  cardExpirationText: "05/28",
),

TNETCreditCard(
  shadowGradient: Colors.white,
  firstGradientColor: Colors.red,
  secondGradientColor: Colors.redAccent,
  cardNumber: "5634 3454 2432 2342",
),

TNETCreditCard(
  shadowGradient: Colors.white,
  firstGradientColor: Colors.black,
  secondGradientColor: Colors.black54,
  textExpirationColor: Colors.white,
  textInputsColor: Colors.amber,
),

```
