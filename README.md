# Flutter Web SEO

[![Pub][pub_badge]][pub]

A flutter web package - for SEO purposes.

[![BuyMeACoffee][buy_me_a_coffee_badge]][buy_me_a_coffee]

## Features

- Web User-Agent Runtime Detection for Search Engines

- Render HTML element tags from TEXT widget

## Getting started

To use this package, add `flutter_web_seo` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

```yaml
dependencies:
  flutter_web_seo: <latest_version>
```

## Using

```dart
import 'package:flutter_web_seo/flutter_web_seo.dart';
```

### Example

For a longer example see at `/example` folder.

#### MaterialApp

```dart
return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    ).seo();
```

#### Text

```dart
...
child: Text('You have pushed the button this many times:')
    .seo(style: WebSEOTextStyle.header1),
...
```

## Sponsoring

I'm working on my packages on my free-time, but I don't have as much time as I would. If this package or any other package I created is helping you, please consider to sponsor me so that I can take time to read the issues, fix bugs, merge pull requests and add features to these packages.

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue][issue].  
If you fixed a bug or implemented a feature, please send a [pull request][pr].

<!-- Links -->
[pub_badge]: https://img.shields.io/pub/v/flutter_web_seo.svg
[pub]: https://pub.dartlang.org/packages/flutter_web_seo

[buy_me_a_coffee]:buymeacoffee.com/dip.dev
[buy_me_a_coffee_badge]: https://img.buymeacoffee.com/button-api/?text=Donate&emoji=&slug=dip.dev&button_colour=29b6f6&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00

[issue]: https://github.com/dip-dev-team/flutter_web_seo/issues
[pr]: https://github.com/dip-dev-team/flutter_web_seo/pulls