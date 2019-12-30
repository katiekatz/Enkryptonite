//
//  FirstViewController.swift
//  Enkryptonite
//
//  Created by Katie Katz on 11/7/15.
//  Copyright (c) 2015 Katie Katz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var cipherPicker: UIPickerView!
    @IBOutlet weak var alphabetKey: UITextField!
    @IBOutlet weak var passphrase: UITextField!
    @IBOutlet weak var plainText: UITextView!
    @IBOutlet weak var cipherText: UITextView!
    
    var cipherPickerData: [String] = [String]()
    var cipherChoice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Connect data:
        self.cipherPicker.delegate = self
        self.cipherPicker.dataSource = self
        
        // Input data into the Array:
        cipherPickerData = ["Atbash", "Bifid", "Caesar", "Keyed Caesar", "Morse", "Letter Number", "Playfair", "Vigenère" ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cipherPickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cipherPickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        self.cipherChoice = row
        
        switch(self.cipherChoice){
        case 0:
            self.alphabetKey.userInteractionEnabled = false
            self.passphrase.userInteractionEnabled = false
        case 1:
            self.alphabetKey.userInteractionEnabled = false
            self.passphrase.userInteractionEnabled = false
        case 2:
            self.alphabetKey.userInteractionEnabled = true
            self.passphrase.userInteractionEnabled = false
        case 3:
            self.alphabetKey.userInteractionEnabled = true
            self.passphrase.userInteractionEnabled = true
        case 4:
            self.alphabetKey.userInteractionEnabled = false
            self.passphrase.userInteractionEnabled = false
        case 5:
            self.alphabetKey.userInteractionEnabled = false
            self.passphrase.userInteractionEnabled = false
        case 6:
            self.alphabetKey.userInteractionEnabled = false
            self.passphrase.userInteractionEnabled = false
        default:
            self.alphabetKey.userInteractionEnabled = false
            self.passphrase.userInteractionEnabled = true
        }
        
    }
    
    
    @IBAction func encryptButtonPress(sender: AnyObject) {
        
        let message = self.plainText.text
        let alphaKey = self.alphabetKey.text
        let pass = self.passphrase.text
        
        print(message, terminator: "")
        print(alphaKey, terminator: "")
        print(pass, terminator: "")
        
        switch(self.cipherChoice){
            
        case 0:
            self.cipherText.text = atbash(message)
        case 1:
            self.cipherText.text = bifid(message)
        case 2:
            switch(alphaKey){
            case "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25":
                self.cipherText.text = caesar(message, alphaKey: Int(alphaKey)!)
            default:
                self.cipherText.text = "error: the alphabet key must be a number from 1-25"
            }
        case 3:
            switch(alphaKey){
            case "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25":
                self.cipherText.text = keyedCaesar(message, alphaKey: Int(alphaKey)!, passPhrase: pass)
            default:
                self.cipherText.text = "error: the alphabet key must be a number from 1-25"
            }
        case 4:
            self.cipherText.text = morse(message)
        case 5:
            self.cipherText.text = letterNumber(message)
        case 6:
            self.cipherText.text = playfair(message)
        default:
            self.cipherText.text = vigenere(message, passPhrase: pass)
            
        }
        
        
        
    }


}

