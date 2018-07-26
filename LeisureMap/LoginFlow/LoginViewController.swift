//
//  LoginViewController.swift
//  LeisureMap
//
//  Created by stu1 on 2018/7/25.
//  Copyright © 2018年 tripim. All rights reserved.
//

import UIKit

class LoginViewController: UIAlertController ,UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

        // Dispose of any resources that can be recreated.
    

//
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
let accept = "abcdeABCDE"
let cs = NSCharacterSet(charactersIn: accept).inverted
        //['a','b','c']
            //       a
        let filtered = string.components(separatedBy: cs).joined(separator: "")
             //['a','b','c']
        if( string != filtered){
            return false
        }
        var maxlength : Int = 0
        if textField.tag == 1 {
            let accountMax = 12
            
        }
        
        if  textField.tag == 2 {
            let passwordMax = 8
        }
        let  currentString : NSString = textField.text! as NSString
        let newString : NSString = currentString.replacingCharacters(in: range, with: <#T##String#>) as NSString
        return newString.length <= maxlength
    }
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

