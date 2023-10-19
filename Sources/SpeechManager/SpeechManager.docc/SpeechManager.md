# ``SpeechManager``

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
