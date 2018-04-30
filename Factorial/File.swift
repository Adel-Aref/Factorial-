//
//  File.swift
//  Factorial
//
//  Created by Have a Mission on 3/20/18.
//  Copyright © 2018 Have a Mission. All rights reserved.
//

import Foundation
class Factorial{
    func getRecurrionFactorial(num : Int) -> Int
    {
        if num == 1 || num == 0
        {
            return 1
        }
        else
        {
            return num*getRecurrionFactorial(num: num-1)
        }
    }
    // for loooooooop
    func getRepeatFactorial( num : Int) -> Int {
        var num = num
        var fact = 1
        if num == 0 || num == 1
        {fact = 1}
        else
        {
            for _ in 1 ... num
            {
                fact = fact*num
                num = num-1
            }
        }
        return fact
    }
// power function 
    func pow (num :Int , pow :Int ) ->  Int{
        var res = 1
        var pow = pow-1
        
        repeat
        {
        res *= num
        pow -= 1
        }
        while pow >= 0
        return res
    }
}
