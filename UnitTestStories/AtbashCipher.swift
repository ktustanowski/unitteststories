//
//  AtbashCipher.swift
//  UnitTestStories
//
//  Created by Kamil Tustanowski on 16.11.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import Foundation

struct AtbashCipher {
    private static var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                                                "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                                                "u", "v", "w", "x", "y", "z"]
    
    static func encrypt(_ text: String) -> String {
        var output = [Character]()
        
        for character in text.characters {
            guard let index = alphabet.index(of: character) else { continue }

            output.append(alphabet[alphabet.count - index - 1])
        }
        
        return String(output)
    }
}

    //        let output = text.flatMap({ character -> Character? in
    //            guard let index = alphabet.index(of: character) else { return nil }
    //
    //            return alphabet[alphabet.count - index - 1]
    //
    //        })

//    static func decrypt(_ encryptedText: String) -> String {
//        var output = ""
//        for character in encryptedText.characters {
//
//            output += substitute(String(character))
//        }
//
//        return output
//    }
    
//    private static func substitute(_ string: String) -> String {
//        guard let index = alphabet.index(of: string) else { return string }
//
//        return alphabet[alphabet.count - index - 1]
//    }
