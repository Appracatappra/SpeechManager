# SpeechManager

![](https://img.shields.io/badge/license-MIT-green) ![](https://img.shields.io/badge/maintained%3F-Yes-green) ![](https://img.shields.io/badge/swift-5.4-green) ![](https://img.shields.io/badge/iOS-17.0-red) ![](https://img.shields.io/badge/macOS-14.0-red) ![](https://img.shields.io/badge/tvOS-17.0-red) ![](https://img.shields.io/badge/watchOS-10.0-red) ![](https://img.shields.io/badge/dependency-LogManager-orange)

`SpeechManager` is a simple utility for adding text-to-speech to your app quickly and easily.

## Support

If you find `SpeechManager` useful and would like to help support its continued development and maintenance, please consider making a small donation, especially if you are using it in a commercial product:

<a href="https://www.buymeacoffee.com/KevinAtAppra" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

It's through the support of contributors like yourself, I can continue to build, release and maintain high-quality, well documented Swift Packages like `SpeechManager` for free.

<a name="Installation"></a>
## Installation

**Swift Package Manager** (Xcode 11 and above)

1. In Xcode, select the **File** > **Add Package Dependency…** menu item.
2. Paste `https://github.com/Appracatappra/SpeechManager.git` in the dialog box.
3. Follow the Xcode's instruction to complete the installation.

> Why not CocoaPods, or Carthage, or blank?

Supporting multiple dependency managers makes maintaining a library exponentially more complicated and time consuming.

Since, the **Swift Package Manager** is integrated with Xcode 11 (and greater), it's the easiest choice to support going further.

## Overview

`SpeechManager` provides a simply way to have your App read text out loud.

### User Preference Options

`SpeechManager` has a build in User Preference property to control speaking:

```
/// If `true` the app will read text aloud, else it will not.
@AppStorage("speakText") public var speakText: Bool = true
```

You can provide a UI in your App to allow the end user to control their speech preferences.

### How To Use

`SpeechManager` provides several functions for controlling speech in your app. The most commonly user are:

* **sayPhrase** - `public func sayPhrase(_ text:String)` Reads the given text aloud.
* **sayPhrase** - `public func sayPhrase(_ text:String, inVoice:VoiceLanguage)` Reads the given text aloud in the given language.
* **stopSpeaking** - `public func stopSpeaking()` Stops the current text from being read aloud.

#### Languages

The `VoiceLanguage` enumeration defines the language specific voices that you can use to say a phrase:

```
public enum VoiceLanguage: String {
    case arabicSaudiArabia = "ar-SA"
    case czechCzechRepublic = "cs-CZ"
    case danishDenmark = "da-DK"
    case germanGermany = "de-DE"
    case greekModernGreece = "el-GR"
    case englishAustralia = "en-AU"
    case englishUnitedKingdom = "en-GB"
    case englishIreland = "en-IE"
    case englishIndia = "en-IN"
    case englishUnitedStates = "en-US"
    case englishSouthAfrica = "en-ZA"
    case spanishMexico = "es-MX"
    case spanishSpain = "es-ES"
    case finnishFinland = "fi-FI"
    case frenchCanada = "fr-CA"
    case frenchFrance = "fr-FR"
    case hebrewIsrael = "he-IL"
    case hindiIndia = "hi-IN"
    case indonesianIndonesia = "id-ID"
    case italianItaly = "it-IT"
    case japaneseJapan = "ja-JP"
    case koreanKorea = "ko-KR"
    case dutchBelgium = "nl-BE"
    case dutchNetherlands = "nl-NL"
    case norwegianNorway = "no-NO"
    case polishPoland = "pl-PL"
    case portugueseBrazil = "pt-BR"
    case portuguesePortugal = "pt-PT"
    case romanianRomania = "ro-RO"
    case russianRussianFederation = "ru-RU"
    case slovakSlovakia = "sk-SK"
    case swedishSweden = "sv-SE"
    case thaiThailand = "th-TH"
    case turkishTurkey = "tr-TR"
    case chineseShina = "zh-CN"
    case chineseHongKong = "zh-HK"
    case chineseTaiwan = "zh-TW"
}
```

> Not all voices are available on all platforms.


# Documentation

The **Package** includes full **DocC Documentation** for all features.