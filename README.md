# SpeechManager

![](https://img.shields.io/badge/license-MIT-green) ![](https://img.shields.io/badge/maintained%3F-Yes-green) ![](https://img.shields.io/badge/swift-5.4-green) ![](https://img.shields.io/badge/iOS-17.0-red) ![](https://img.shields.io/badge/macOS-14.0-red) ![](https://img.shields.io/badge/tvOS-17.0-red) ![](https://img.shields.io/badge/watchOS-10.0-red) ![](https://img.shields.io/badge/dependency-LogManager-orange)

`SpeechManager` is a simple utility for adding text-to-speech to your app quickly and easily.

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