//
//  SpeechManager.swift
//  SpeechManager
//
//  Created by Kevin Mullins on 7/19/21.
//

import Foundation
import AVFoundation
import SwiftUI

/// `SpeechManager` is a simple utility for adding text-to-speach to your app quickly and easily.
open class SpeechManager {
    
    // MARK: - Static Functions
    /// A common shared instance of the `SpeechManager`.
    static public var shared:SpeechManager = SpeechManager()
    
    // MARK: - Enumerations
    /// An`enum` containing a list of languages that `SpeechManager` can talk in.
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
    
    // MARK: - Properties
    /// If `true` the app will read text aloud, else it will not.
    @AppStorage("speakText") public var speakText: Bool = true
    
    /// An internal `AVSpeechSynthesizer` to actually read the text.
    private var speechSynthesizer:AVSpeechSynthesizer = AVSpeechSynthesizer()
    
    // MARK: - Functions
    /// Uses the default **Speech Synthesizer** to speak the given text aloud.
    /// - Parameter text: The text to read aloud to the user.
    public func sayPhrase(_ text:String) {
        guard speakText else {
            return
        }
        
        let speechUtterance = AVSpeechUtterance(string: text)
        speechSynthesizer.speak(speechUtterance)
    }
    
    /// Says the given phrase in the given language.
    /// - Parameters:
    ///   - text: The text to speak.
    ///   - inVoice: The language to speak in.
    public func sayPhrase(_ text:String, inVoice:VoiceLanguage) {
        guard speakText else {
            return
        }
        
        let speechSynthesisVoice = AVSpeechSynthesisVoice(language: inVoice.rawValue)
        let speechUtterance = AVSpeechUtterance(string: text)
        speechUtterance.voice = speechSynthesisVoice
        speechSynthesizer.speak(speechUtterance)
    }
    
    /// Stops any speech currently running.
    public func stopSpeaking() {
        guard speakText else {
            return
        }
        
        speechSynthesizer.stopSpeaking(at: .word)
    }
}
