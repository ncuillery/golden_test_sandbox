# golden_test_sandbox

## Description

This repo shows an issue with golden tests not rendering Japanese characters.

See [golden_test.dart](https://github.com/ncuillery/golden_test_sandbox/blob/master/test/golden_test.dart):

Both MaterialIcons and Roboto fonts are loaded and the characters are correctly rendering in the golden image. Unfortunately japanese characters aren't (they are in the app):

![](https://raw.githubusercontent.com/ncuillery/golden_test_sandbox/master/test/home_page.png)

As an attempt, I tried to load Noto Sans (font used to render japanese characters on Android) but it has no effect.

## Usage

To run the golden test locally:

- Clone the repo
- Run `flutter pub get`
- Run `flutter test --update-goldens test/golden_test.dart`
