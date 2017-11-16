import Foundation

struct Atbash {
    private static var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                                   "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                                   "u", "v", "w", "x", "y", "z"]

    static func encrypt(_ text: String) -> String {
        var output = ""
        for character in text.characters {
            output += substitute(String(character))
        }
        
        return output
    }

    static func decrypt(_ encryptedText: String) -> String {
        var output = ""
        for character in encryptedText.characters {
            
            output += substitute(String(character).lowercased())
        }

        return output
    }

    private static func substitute(_ string: String) -> String {
        guard let index = alphabet.index(of: string) else { return string }

        return alphabet[alphabet.count - index - 1]
    }

}

print(Atbash.encrypt("biblia"))
print(Atbash.decrypt("yryorz"))
