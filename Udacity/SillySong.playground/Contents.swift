//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func shortNameFromName(_ name: String) -> String{
    
    var shortname = name.lowercased()
    
    let vowels: [Character] = ["a","e","i","o","u"]
    
    for character in shortname.characters{
        if !vowels.contains(character){
            shortname.remove(at: shortname.startIndex)
        }
        else{
            break
        }
    }
    return shortname
}


func lyricsForName(lyricsTemplate: String, fullName:String) -> String {
    let shortname = shortNameFromName(fullName)
    
    let sillySong = lyricsTemplate
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortname)
    
    return sillySong
}

let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")

print(lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "Nate"))