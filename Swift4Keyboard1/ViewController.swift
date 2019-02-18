//
//  ViewController.swift
//  Swift4Keyboard1
//
//  Created by Naoki Arakawa on 2019/02/18.
//  Copyright © 2019 Naoki Arakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
 
    @IBOutlet var mailTextField: UITextField!
    
    
    @IBOutlet var passwordTextField: UITextField!
    
    
    @IBOutlet var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        mailTextField.delegate = self
        passwordTextField.delegate = self
        
        
    }
//リターンキーがクリックされた時に呼び出されるデリゲートメソッド
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //キーボードを閉じる
        textField.resignFirstResponder()
        
        return true
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        mailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
        
    }
    
    
    @IBAction func signin(_ sender: Any) {
        
        //結果にメールテキストフィールドに入力された値とパスワードテキストフィールドに入力された値を足し算して表示する
        
        resultLabel.text = mailTextField.text! + " " + passwordTextField.text!
        
    }
    

}
