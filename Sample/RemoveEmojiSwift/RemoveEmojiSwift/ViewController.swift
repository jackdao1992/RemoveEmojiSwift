//
//  ViewController.swift
//  RemoveEmojiSwift
//
//  Created by Jack Dao on 1/18/16.
//  Copyright © 2016 Rubify. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // you can see emoji with this code and filter with your custom
//        let emojiRanges = [
//            0x1D000...0x1F9C0
////            0x2100...0x3299
//        ]
//        var stringemoji = ""
//        for range in emojiRanges {
//            for i in range {
//                let c = Character(UnicodeScalar(i))
//                stringemoji.append(c)
//                stringemoji += "\(i)"
//                stringemoji += String(format: "%2X  ",i)
//            }
//        }
//        print(stringemoji)
        
        let stringText = "🇦🆆 ㊙️ ㊗️ 〽️ 🅢 🄗 🄄 🀖 𝌺 𝄡 𝄞 𝂩 𝀭 QWERTYUIOP{}|\":LKJHYGTFRDESAZXCVB NM<>?   🌄  🌅  🌆  🌇  🌈  🌉  🌊  🌋  🌌  🌍  🌎  🌏  🌐  🌑  🌒  🌓  🌔  🌕  🌖  🌗  🌘  🌙  🌚  🌛  🌜  🌝  🌞  🌟  🌠  🌡  🌢  🌣  🌤  🌥  🌦  🌧  🌨  🌩  🌪  🌫  🌬  🌭  🌮  🌯  🌰  🌱  🌲  🌳  🌴  🌵  🌶  🌷  🌸  🌹  🌺  🌻  🌼  🌽  🌾  🌿  🍀  🍁  🍂  🍃  🍄  🍅  🍆  🍇  🍈  🍉  🍊  🍋  🍌  🍍  🍎  qtyuiop[]\\asdfghjkl;'zxcvbnm,./ 🅷 `1234567890-=~!@#$%^&*()_+ CHINE-有一天，我们开发什么 FRENCH-un jour, nous développons rien   😇  😈  😉  😊  😋  😌  😍  😎  😏  😐  😑  😒  😓  😔  😕  😖  😗  😘  😙 🚊 🚎 JAPANESE-ある日、私たちは何を開発 🔕 📡 💘 🐾  KOREAN-일일 우리는 아무것도 개발  🄧 🎬 🄨 arabic-يوم واحد ونحن نطور شيئا "// + stringemoji
        
        label.text = stringText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var removeEmojiButton: UIButton!

    @IBAction func removeEmojiButtonTouched(sender: AnyObject) {
        
        label.text?.stringByRemoveEmoji()
        labelTwo.text = label.text?.stringByRemoveEmoji() //removeEmojiString(label.text!)
        
    }
    
    func removeEmojiString(value:String) -> String {
        var resultString:String = ""
        for char in value.characters {
            if !char.isEmoji() {
                resultString.append(char)
            }
        }
        return resultString
    }
    
    
}


