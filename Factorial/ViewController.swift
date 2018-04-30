//
//  ViewController.swift
//  Factorial
//
//  Created by Have a Mission on 3/20/18.
//  Copyright © 2018 Have a Mission. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // here I define the global data members to be seen in my whole app
    var fact = Factorial()
    
    @IBOutlet weak var textFactorial: UITextField!

    @IBOutlet weak var TextPower: UITextField!
    @IBOutlet weak var textToPower: UITextField!
    @IBOutlet weak var labelShowFactorial: UILabel!
    /////////
    @IBAction func GetFactorialByRecurrsion(_ sender: Any) {
    // here impelmenation of the recurrion button
        let numFactorial  = textFactorial.text
        let numberCharacters = NSCharacterSet.decimalDigits.inverted
        if !(numFactorial?.isEmpty)! && numFactorial?.rangeOfCharacter(from: numberCharacters) == nil
        {
            let  transofermedNumFactorial :Int = (Int)(numFactorial!)!
            labelShowFactorial.text =  (String)(fact.getRecurrionFactorial(num: transofermedNumFactorial))
        }
        else
        {
            labelShowFactorial.text = "Please Enter a valid salary "
        }
        
        
    }
    @IBAction func getFactorialByRepeatLoop(_ sender: Any) {
        // here impelmenation of the repeat button
        let numFactorial  = textFactorial.text
        let numberCharacters = NSCharacterSet.decimalDigits.inverted
        if !(numFactorial?.isEmpty)! && numFactorial?.rangeOfCharacter(from: numberCharacters) == nil
        {
            let  transofermedNumFactorial :Int = (Int)(numFactorial!)!
            labelShowFactorial.text =  (String)(fact.getRepeatFactorial(num: transofermedNumFactorial))
        }
        else
        {
            labelShowFactorial.text = "Please Enter a valid salary "
        }
    }
    
    @IBAction func getPower(_ sender: Any) {
        // here impelmenation of the power button
        let number  = textToPower.text
        let power = TextPower.text
        let numberCharacters = NSCharacterSet.decimalDigits.inverted
        if !(number?.isEmpty)! && !(power?.isEmpty)! &&
            number?.rangeOfCharacter(from: numberCharacters) == nil
            && power?.rangeOfCharacter(from: numberCharacters) == nil
        {
            let  transofermedNum:Int = (Int)(number!)!
            let  transofermedPower:Int = (Int)(power!)!

            labelShowFactorial.text =  (String)(fact.pow(num: transofermedNum, pow: transofermedPower))
        }
        else
        {
            labelShowFactorial.text = "Please Enter a valid salary "
        }
        
    }
    // powerrrrrrrrrr
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

