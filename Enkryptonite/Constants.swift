//
//  Constants.swift
//  Enkryptonite
//
//  Created by Katie Katz on 11/7/15.
//  Copyright (c) 2015 Katie Katz. All rights reserved.
//

import Foundation

let atbashAlphabet: [String] = ["Z", "Y", "X", "W", "V", "U", "T", "S", "R", "Q", "P", "O", "N", "M", "L", "K", "J", "I", "H", "G", "F", "E", "D", "C", "B", "A"]

func atbash(message : String) -> String {
    let messageArray = Array(message.lowercaseString.characters)
    var output = ""
    for char in messageArray {
        switch(char){
        case "a":
            output += atbashAlphabet[0]
        case "b":
            output += atbashAlphabet[1]
        case "c":
            output += atbashAlphabet[2]
        case "d":
            output += atbashAlphabet[3]
        case "e":
            output += atbashAlphabet[4]
        case "f":
            output += atbashAlphabet[5]
        case "g":
            output += atbashAlphabet[6]
        case "h":
            output += atbashAlphabet[7]
        case "i":
            output += atbashAlphabet[8]
        case "j":
            output += atbashAlphabet[9]
        case "k":
            output += atbashAlphabet[10]
        case "l":
            output += atbashAlphabet[11]
        case "m":
            output += atbashAlphabet[12]
        case "n":
            output += atbashAlphabet[13]
        case "o":
            output += atbashAlphabet[14]
        case "p":
            output += atbashAlphabet[15]
        case "q":
            output += atbashAlphabet[16]
        case "r":
            output += atbashAlphabet[17]
        case "s":
            output += atbashAlphabet[18]
        case "t":
            output += atbashAlphabet[19]
        case "u":
            output += atbashAlphabet[20]
        case "v":
            output += atbashAlphabet[21]
        case "w":
            output += atbashAlphabet[22]
        case "x":
            output += atbashAlphabet[23]
        case "y":
            output += atbashAlphabet[24]
        case "z":
            output += atbashAlphabet[25]
        default:
            output += "\(char)"
        }
    }
    return output
}

let bifidAlphabet: [[String]] = [
    ["1", "1"],
    ["1", "2"],
    ["1", "3"],
    ["1", "4"],
    ["1", "5"],
    ["2", "1"],
    ["2", "2"],
    ["2", "3"],
    ["2", "4"],
    ["2", "5"],
    ["3", "1"],
    ["3", "2"],
    ["3", "3"],
    ["3", "4"],
    ["3", "5"],
    ["4", "1"],
    ["4", "2"],
    ["4", "3"],
    ["4", "4"],
    ["4", "5"],
    ["5", "1"],
    ["5", "2"],
    ["5", "3"],
    ["5", "4"],
    ["5", "5"],
    ["4", "2"]
]

func bifid(message : String) -> String {
    let messageArray = Array(message.lowercaseString.characters)
    var row = ""
    var col = ""
    var output = ""
    for char in messageArray {
        switch(char){
        case "a":
            row += bifidAlphabet[0][0]
            col += bifidAlphabet[0][1]
        case "b":
            row += bifidAlphabet[1][0]
            col += bifidAlphabet[1][1]
        case "c":
            row += bifidAlphabet[2][0]
            col += bifidAlphabet[2][1]
        case "d":
            row += bifidAlphabet[3][0]
            col += bifidAlphabet[3][1]
        case "e":
            row += bifidAlphabet[4][0]
            col += bifidAlphabet[4][1]
        case "f":
            row += bifidAlphabet[5][0]
            col += bifidAlphabet[5][1]
        case "g":
            row += bifidAlphabet[6][0]
            col += bifidAlphabet[6][1]
        case "h":
            row += bifidAlphabet[7][0]
            col += bifidAlphabet[7][1]
        case "i":
            row += bifidAlphabet[8][0]
            col += bifidAlphabet[8][1]
        case "j":
            row += bifidAlphabet[9][0]
            col += bifidAlphabet[9][1]
        case "k":
            row += bifidAlphabet[10][0]
            col += bifidAlphabet[10][1]
        case "l":
            row += bifidAlphabet[11][0]
            col += bifidAlphabet[11][1]
        case "m":
            row += bifidAlphabet[12][0]
            col += bifidAlphabet[12][1]
        case "n":
            row += bifidAlphabet[13][0]
            col += bifidAlphabet[13][1]
        case "o":
            row += bifidAlphabet[14][0]
            col += bifidAlphabet[14][1]
        case "p":
            row += bifidAlphabet[15][0]
            col += bifidAlphabet[15][1]
        case "q":
            row += bifidAlphabet[16][0]
            col += bifidAlphabet[16][1]
        case "r":
            row += bifidAlphabet[17][0]
            col += bifidAlphabet[17][1]
        case "s":
            row += bifidAlphabet[18][0]
            col += bifidAlphabet[18][1]
        case "t":
            row += bifidAlphabet[19][0]
            col += bifidAlphabet[19][1]
        case "u":
            row += bifidAlphabet[20][0]
            col += bifidAlphabet[20][1]
        case "v":
            row += bifidAlphabet[21][0]
            col += bifidAlphabet[21][1]
        case "w":
            row += bifidAlphabet[22][0]
            col += bifidAlphabet[22][1]
        case "x":
            row += bifidAlphabet[23][0]
            col += bifidAlphabet[23][1]
        case "y":
            row += bifidAlphabet[24][0]
            col += bifidAlphabet[24][1]
        case "z":
            row += bifidAlphabet[25][0]
            col += bifidAlphabet[25][1]
        default:
            row += String(char)
            col += String(char)
        }
    }
    output = row + col
    return output
}

let caesarAlphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

func caesar(message : String, alphaKey: Int) -> String {
    let messageArray = Array(message.lowercaseString.characters)
    var output = ""
    for char in messageArray {
        switch(char){
        case "a":
            output += caesarAlphabet[alphaKey%25]
        case "b":
            output += caesarAlphabet[(1+alphaKey)%25]
        case "c":
            output += caesarAlphabet[(2+alphaKey)%25]
        case "d":
            output += caesarAlphabet[(3+alphaKey)%25]
        case "e":
            output += caesarAlphabet[(4+alphaKey)%25]
        case "f":
            output += caesarAlphabet[(5+alphaKey)%25]
        case "g":
            output += caesarAlphabet[(6+alphaKey)%25]
        case "h":
            output += caesarAlphabet[(7+alphaKey)%25]
        case "i":
            output += caesarAlphabet[(8+alphaKey)%25]
        case "j":
            output += caesarAlphabet[(9+alphaKey)%25]
        case "k":
            output += caesarAlphabet[(10+alphaKey)%25]
        case "l":
            output += caesarAlphabet[(11+alphaKey)%25]
        case "m":
            output += caesarAlphabet[(12+alphaKey)%25]
        case "n":
            output += caesarAlphabet[(13+alphaKey)%25]
        case "o":
            output += caesarAlphabet[(14+alphaKey)%25]
        case "p":
            output += caesarAlphabet[(15+alphaKey)%25]
        case "q":
            output += caesarAlphabet[(16+alphaKey)%25]
        case "r":
            output += caesarAlphabet[(17+alphaKey)%25]
        case "s":
            output += caesarAlphabet[(18+alphaKey)%25]
        case "t":
            output += caesarAlphabet[(19+alphaKey)%25]
        case "u":
            output += caesarAlphabet[(20+alphaKey)%25]
        case "v":
            output += caesarAlphabet[(21+alphaKey)%25]
        case "w":
            output += caesarAlphabet[(22+alphaKey)%25]
        case "x":
            output += caesarAlphabet[(23+alphaKey)%25]
        case "y":
            output += caesarAlphabet[(24+alphaKey)%25]
        case "z":
            output += caesarAlphabet[(25+alphaKey)%25]
        default:
            output += String(char)
        }
    }
    return output

}

func keyedCaesar(message : String, alphaKey: Int, passPhrase : String) -> String {
    let messageArray = Array(message.lowercaseString.characters)
    
    let passArray = Array(passPhrase.uppercaseString.characters)
    var newArray: [String] = []
    var i = 0
    for item in passArray{
        newArray.append("\(item)")
    }
    var keyedCaesarArray: [String] = newArray + caesarAlphabet
    keyedCaesarArray = uniq(keyedCaesarArray)
    
    var output = ""
    for char in messageArray {
        switch(char){
        case "a":
            output += keyedCaesarArray[alphaKey%25]
        case "b":
            output += keyedCaesarArray[(1+alphaKey)%25]
        case "c":
            output += keyedCaesarArray[(2+alphaKey)%25]
        case "d":
            output += keyedCaesarArray[(3+alphaKey)%25]
        case "e":
            output += keyedCaesarArray[(4+alphaKey)%25]
        case "f":
            output += keyedCaesarArray[(5+alphaKey)%25]
        case "g":
            output += keyedCaesarArray[(6+alphaKey)%25]
        case "h":
            output += keyedCaesarArray[(7+alphaKey)%25]
        case "i":
            output += keyedCaesarArray[(8+alphaKey)%25]
        case "j":
            output += keyedCaesarArray[(9+alphaKey)%25]
        case "k":
            output += keyedCaesarArray[(10+alphaKey)%25]
        case "l":
            output += keyedCaesarArray[(11+alphaKey)%25]
        case "m":
            output += keyedCaesarArray[(12+alphaKey)%25]
        case "n":
            output += keyedCaesarArray[(13+alphaKey)%25]
        case "o":
            output += keyedCaesarArray[(14+alphaKey)%25]
        case "p":
            output += keyedCaesarArray[(15+alphaKey)%25]
        case "q":
            output += keyedCaesarArray[(16+alphaKey)%25]
        case "r":
            output += keyedCaesarArray[(17+alphaKey)%25]
        case "s":
            output += keyedCaesarArray[(18+alphaKey)%25]
        case "t":
            output += keyedCaesarArray[(19+alphaKey)%25]
        case "u":
            output += keyedCaesarArray[(20+alphaKey)%25]
        case "v":
            output += keyedCaesarArray[(21+alphaKey)%25]
        case "w":
            output += keyedCaesarArray[(22+alphaKey)%25]
        case "x":
            output += keyedCaesarArray[(23+alphaKey)%25]
        case "y":
            output += keyedCaesarArray[(24+alphaKey)%25]
        case "z":
            output += keyedCaesarArray[(25+alphaKey)%25]
        default:
            output += String(char)
        }
    }
    return output

}

let morseAlphabet: [String] = [".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."]

func morse(message : String) -> String {
    let messageArray = Array(message.lowercaseString.characters)
    var output = ""
    for char in messageArray {
        switch(char){
        case "a":
            output += morseAlphabet[0] + " "
        case "b":
            output += morseAlphabet[1] + " "
        case "c":
            output += morseAlphabet[2] + " "
        case "d":
            output += morseAlphabet[3] + " "
        case "e":
            output += morseAlphabet[4] + " "
        case "f":
            output += morseAlphabet[5] + " "
        case "g":
            output += morseAlphabet[6] + " "
        case "h":
            output += morseAlphabet[7] + " "
        case "i":
            output += morseAlphabet[8] + " "
        case "j":
            output += morseAlphabet[9] + " "
        case "k":
            output += morseAlphabet[10] + " "
        case "l":
            output += morseAlphabet[11] + " "
        case "m":
            output += morseAlphabet[12] + " "
        case "n":
            output += morseAlphabet[13] + " "
        case "o":
            output += morseAlphabet[14] + " "
        case "p":
            output += morseAlphabet[15] + " "
        case "q":
            output += morseAlphabet[16] + " "
        case "r":
            output += morseAlphabet[17] + " "
        case "s":
            output += morseAlphabet[18] + " "
        case "t":
            output += morseAlphabet[19] + " "
        case "u":
            output += morseAlphabet[20] + " "
        case "v":
            output += morseAlphabet[21] + " "
        case "w":
            output += morseAlphabet[22] + " "
        case "x":
            output += morseAlphabet[23] + " "
        case "y":
            output += morseAlphabet[24] + " "
        case "z":
            output += morseAlphabet[25] + " "
        case " ":
            output += "/ "
        default:
            break
        }
    }
    return output
}

func letterNumber(message : String) -> String {
    let messageArray = Array(message.lowercaseString.characters)
    var output = ""
    for char in messageArray {
        switch(char){
        case "a":
            output += "01"
        case "b":
            output += "02"
        case "c":
            output += "03"
        case "d":
            output += "04"
        case "e":
            output += "05"
        case "f":
            output += "06"
        case "g":
            output += "07"
        case "h":
            output += "08"
        case "i":
            output += "09"
        case "j":
            output += "10"
        case "k":
            output += "11"
        case "l":
            output += "12"
        case "m":
            output += "13"
        case "n":
            output += "14"
        case "o":
            output += "15"
        case "p":
            output += "16"
        case "q":
            output += "17"
        case "r":
            output += "18"
        case "s":
            output += "19"
        case "t":
            output += "20"
        case "u":
            output += "21"
        case "v":
            output += "22"
        case "w":
            output += "23"
        case "x":
            output += "24"
        case "y":
            output += "25"
        case "z":
            output += "26"
        default:
            output += String(char)
        }
    }
    return output

}

let playfairAlphabet: [[Int]] = [
    [1, 1],
    [1, 2],
    [1, 3],
    [1, 4],
    [1, 5],
    [2, 1],
    [2, 2],
    [2, 3],
    [2, 4],
    [2, 5],
    [3, 1],
    [3, 2],
    [3, 3],
    [3, 4],
    [3, 5],
    [4, 1],
    [4, 2],
    [4, 3],
    [4, 4],
    [4, 5],
    [5, 1],
    [5, 2],
    [5, 3],
    [5, 4],
    [5, 5],
    [4, 2]
]

func playfair(message : String) -> String {
    let messageArray = Array(message.lowercaseString.characters)
    var output = ""
    
    var placementArray: [[Int]] = []
    
    for char in messageArray {
        switch(char){
        case "a":
            placementArray.append(playfairAlphabet[0])
        case "b":
            placementArray.append(playfairAlphabet[1])
        case "c":
            placementArray.append(playfairAlphabet[2])
        case "d":
            placementArray.append(playfairAlphabet[3])
        case "e":
            placementArray.append(playfairAlphabet[4])
        case "f":
            placementArray.append(playfairAlphabet[5])
        case "g":
            placementArray.append(playfairAlphabet[6])
        case "h":
            placementArray.append(playfairAlphabet[7])
        case "i":
            placementArray.append(playfairAlphabet[8])
        case "j":
            placementArray.append(playfairAlphabet[9])
        case "k":
            placementArray.append(playfairAlphabet[10])
        case "l":
            placementArray.append(playfairAlphabet[11])
        case "m":
            placementArray.append(playfairAlphabet[12])
        case "n":
            placementArray.append(playfairAlphabet[13])
        case "o":
            placementArray.append(playfairAlphabet[14])
        case "p":
            placementArray.append(playfairAlphabet[15])
        case "q":
            placementArray.append(playfairAlphabet[16])
        case "r":
            placementArray.append(playfairAlphabet[17])
        case "s":
            placementArray.append(playfairAlphabet[18])
        case "t":
            placementArray.append(playfairAlphabet[19])
        case "u":
            placementArray.append(playfairAlphabet[20])
        case "v":
            placementArray.append(playfairAlphabet[21])
        case "w":
            placementArray.append(playfairAlphabet[22])
        case "x":
            placementArray.append(playfairAlphabet[23])
        case "y":
            placementArray.append(playfairAlphabet[24])
        case "z":
            placementArray.append(playfairAlphabet[25])
        default:
            break
        }
    }
    
    if placementArray.count % 2 == 1{
        placementArray.append([5, 4])
    }
    
    var cipheredArray : [[Int]] = []
    
    for var i = 0; i < placementArray.count; i+=2 {
        
        if placementArray[i][0] == placementArray[i+1][0] && placementArray[i][1] == placementArray[i+1][1] {
            
            let x = (placementArray[i][0] + 1) % 5
            let y = (placementArray[i][1] + 1) % 5
            cipheredArray.append([x,y])
            cipheredArray.append([x, y])
            
        } else if placementArray[i][0] == placementArray[i+1][0] {
            
            let x = (placementArray[i][1] + 1) % 5
            let y = (placementArray[i+1][1] + 1) % 5
            let z = placementArray[i][0]
            
            cipheredArray.append([z, x])
            cipheredArray.append([z, y])
            
        } else if placementArray[i][1] == placementArray[i+1][1] {
            
            let x = (placementArray[i][0] + 1) % 5
            let y = (placementArray[i+1][0] + 1) % 5
            let z = placementArray[i][1]
            
            cipheredArray.append([x, z])
            cipheredArray.append([y, z])
            
        } else {
            
            let w = placementArray[i][0]
            let x = placementArray[i][1]
            let y = placementArray[i+1][0]
            let z = placementArray[i+1][1]
            
            cipheredArray.append([w, z])
            cipheredArray.append([y, x])
        }
        
    }
    
    for item in cipheredArray {
        
        if item[0] == playfairAlphabet[0][0] && item[1] == playfairAlphabet[0][1]{
            output += "A"
        } else if item[0] == playfairAlphabet[1][0] && item[1] == playfairAlphabet[1][1]{
            output += "B"
        } else if item[0] == playfairAlphabet[2][0] && item[1] == playfairAlphabet[2][1]{
            output += "C"
        } else if item[0] == playfairAlphabet[3][0] && item[1] == playfairAlphabet[3][1]{
            output += "D"
        } else if item[0] == playfairAlphabet[4][0] && item[1] == playfairAlphabet[4][1]{
            output += "E"
        } else if item[0] == playfairAlphabet[5][0] && item[1] == playfairAlphabet[5][1]{
            output += "F"
        } else if item[0] == playfairAlphabet[6][0] && item[1] == playfairAlphabet[6][1]{
            output += "G"
        } else if item[0] == playfairAlphabet[7][0] && item[1] == playfairAlphabet[7][1]{
            output += "H"
        } else if item[0] == playfairAlphabet[8][0] && item[1] == playfairAlphabet[8][1]{
            output += "I"
        } else if item[0] == playfairAlphabet[9][0] && item[1] == playfairAlphabet[9][1]{
            output += "J"
        } else if item[0] == playfairAlphabet[10][0] && item[1] == playfairAlphabet[10][1]{
            output += "K"
        } else if item[0] == playfairAlphabet[11][0] && item[1] == playfairAlphabet[11][1]{
            output += "L"
        } else if item[0] == playfairAlphabet[12][0] && item[1] == playfairAlphabet[12][1]{
            output += "M"
        } else if item[0] == playfairAlphabet[13][0] && item[1] == playfairAlphabet[13][1]{
            output += "N"
        } else if item[0] == playfairAlphabet[14][0] && item[1] == playfairAlphabet[14][1]{
            output += "O"
        } else if item[0] == playfairAlphabet[15][0] && item[1] == playfairAlphabet[15][1]{
            output += "P"
        } else if item[0] == playfairAlphabet[16][0] && item[1] == playfairAlphabet[16][1]{
            output += "Q"
        } else if item[0] == playfairAlphabet[17][0] && item[1] == playfairAlphabet[17][1]{
            output += "R"
        } else if item[0] == playfairAlphabet[18][0] && item[1] == playfairAlphabet[18][1]{
            output += "S"
        } else if item[0] == playfairAlphabet[19][0] && item[1] == playfairAlphabet[19][1]{
            output += "T"
        } else if item[0] == playfairAlphabet[20][0] && item[1] == playfairAlphabet[20][1]{
            output += "U"
        } else if item[0] == playfairAlphabet[21][0] && item[1] == playfairAlphabet[21][1]{
            output += "V"
        } else if item[0] == playfairAlphabet[22][0] && item[1] == playfairAlphabet[22][1]{
            output += "W"
        } else if item[0] == playfairAlphabet[23][0] && item[1] == playfairAlphabet[23][1]{
            output += "X"
        } else if item[0] == playfairAlphabet[24][0] && item[1] == playfairAlphabet[24][1]{
            output += "Y"
        } else if item[0] == playfairAlphabet[25][0] && item[1] == playfairAlphabet[25][1]{
            output += "Z"
        }
        
    }
    
    return output 
}

let vigenereAlphabet: [[Character]] = [
    ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"],
    ["B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A"],
    ["C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B"],
    ["D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C"],
    ["E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D"],
    ["F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E"],
    ["G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F"],
    ["H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G"],
    ["I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H"],
    ["J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I"],
    ["K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J"],
    ["L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"],
    ["M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"],
    ["N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"],
    ["O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N"],
    ["P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O"],
    ["Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P"],
    ["R", "S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q"],
    ["S", "T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R"],
    ["T", "U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S"],
    ["U", "V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T"],
    ["V", "W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U"],
    ["W", "X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V"],
    ["X", "Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W"],
    ["Y", "Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X"],
    ["Z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y"]
]


func vigenere(message : String, passPhrase : String) -> String {
    
    let x = message
    let y = passPhrase
    
    let keyCharArray = Array(y.characters)
    var keyArray = [Int]()
    
    for char in keyCharArray{
        if isInt(char){
            keyArray.append(convertInt(char))
        } else if(char != " "){
            keyArray.append(convertASCII(char))
        }
    }
    
    let inputCharArray = Array(x.characters)
    var inputArray = [Int]()
    var numIndexArray = [Int]()
    var j = 0
    var capitalArray = [Bool]()
    
    for char in inputCharArray{
        if isInt(char){
            numIndexArray.append(j)
            inputArray.append(convertInt(char))
            capitalArray.append(false)
        } else {
            inputArray.append(convertASCII(char))
            capitalArray.append(checkCapital(char))
        }
        j++
    }
    
    var output : String = ""
    var i = 0
    
    for (index, num) in inputArray.enumerate() {
        if numIndexArray.indexOf(index) == nil {
            if num == -1 {
                output.append(inputCharArray[index])
            }
            else {
                let a = keyArray[i]
                let b = num
                if capitalArray[index] == true{
                    output.append(vigenereAlphabet[a][b])
                } else {
                    output.append(returnLowercase(vigenereAlphabet[a][b]))
                }
                i++
                i = i % keyArray.count
            }
        } else {
            output.append(inputCharArray[index])
        }
    }
    
    return output
}

func uniq<S: SequenceType, E: Hashable where E==S.Generator.Element>(source: S) -> [E] {
    var seen: [E:Bool] = [:]
    return source.filter { seen.updateValue(true, forKey: $0) == nil }
}

func isInt(char: Character) -> Bool {
    if(char == "1" || char == "2" || char == "3" || char == "4" || char == "5" || char == "6" || char == "7" || char == "8" || char == "9" || char == "0"){
        return true
    }
    return false
}

func convertInt(char: Character) -> Int {
    switch(char){
    case("0"): return 0;
    case("1"): return 1;
    case("2"): return 2;
    case("3"): return 3;
    case("4"): return 4;
    case("5"): return 5;
    case("6"): return 6;
    case("7"): return 7;
    case("8"): return 8;
    case("9"): return 9;
    default: return 7000;
    }
}

func convertASCII(char : Character) -> Int {
    switch(char){
    case("a"): fallthrough
    case("A"): return 0;
    case("b"): fallthrough
    case("B"): return 1;
    case("c"): fallthrough
    case("C"): return 2;
    case("d"): fallthrough
    case("D"): return 3;
    case("e"): fallthrough
    case("E"): return 4;
    case("f"): fallthrough
    case("F"): return 5;
    case("g"): fallthrough
    case("G"): return 6;
    case("h"): fallthrough
    case("H"): return 7;
    case("i"): fallthrough
    case("I"): return 8;
    case("j"): fallthrough
    case("J"): return 9;
    case("k"): fallthrough
    case("K"): return 10;
    case("l"): fallthrough
    case("L"): return 11;
    case("m"): fallthrough
    case("M"): return 12;
    case("n"): fallthrough
    case("N"): return 13;
    case("o"): fallthrough
    case("O"): return 14;
    case("p"): fallthrough
    case("P"): return 15;
    case("q"): fallthrough
    case("Q"): return 16;
    case("r"): fallthrough
    case("R"): return 17;
    case("s"): fallthrough
    case("S"): return 18;
    case("t"): fallthrough
    case("T"): return 19;
    case("u"): fallthrough
    case("U"): return 20;
    case("v"): fallthrough
    case("V"): return 21;
    case("w"): fallthrough
    case("W"): return 22;
    case("x"): fallthrough
    case("X"): return 23;
    case("y"): fallthrough
    case("Y"): return 24;
    case("z"): fallthrough
    case("Z"): return 25;
    default: return -1;
        
    }
}

func checkCapital(char: Character) -> Bool{
    if(char == "A"||char == "B"||char == "C"||char == "D"||char == "E"||char == "F"||char == "G"||char == "H"||char == "I"||char == "J"||char == "K"||char == "L"||char == "M"||char == "N"||char == "O"||char == "P"||char == "Q"||char == "R"||char == "S"||char == "T"||char == "U"||char == "V"||char == "W"||char == "X"||char == "Y"||char == "Z"){
        return true
    }
    return false
}

func returnLowercase(char: Character) -> Character{
    switch(char){
    case("A"): return "a";
    case("B"): return "b";
    case("C"): return "c";
    case("D"): return "d";
    case("E"): return "e";
    case("F"): return "f";
    case("G"): return "g";
    case("H"): return "h";
    case("I"): return "i";
    case("J"): return "j";
    case("K"): return "k";
    case("L"): return "l";
    case("M"): return "m";
    case("N"): return "n";
    case("O"): return "o";
    case("P"): return "p";
    case("Q"): return "q";
    case("R"): return "r";
    case("S"): return "s";
    case("T"): return "t";
    case("U"): return "u";
    case("V"): return "v";
    case("W"): return "w";
    case("X"): return "x";
    case("Y"): return "y";
    case("Z"): return "z";
    default: return "0";
    }
}
