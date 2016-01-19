//
//  RemoveEmojiSwift.swift
//  RemoveEmojiSwift
//
//  Created by Jack Dao on 1/19/16.
//  Copyright © 2016 Rubify. All rights reserved.
//

import Foundation

extension String {
    func stringByRemoveEmoji() -> String {
        var resultString:String = ""
        for char in self.characters {
            if !char.isEmoji() {
                resultString.append(char)
            }
        }
        return resultString
    }
}

extension Character {
    func isEmoji() -> Bool {
        // remove emoji
        return Character(UnicodeScalar(0x1D000)) <= self && self <= Character(UnicodeScalar(0x1D3FF))
            || Character(UnicodeScalar(0x1D800)) <= self && self <= Character(UnicodeScalar(0x1F9C0))
            // remove symboy
            || Character(UnicodeScalar(0x218A)) <= self && self <= Character(UnicodeScalar(0x26FF))
            || Character(UnicodeScalar(0x218A)) <= self && self <= Character(UnicodeScalar(0x2B59))
    }
}