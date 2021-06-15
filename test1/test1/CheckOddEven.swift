//
//  CheckOddEven.swift
//  test1
//
//  Created by DCS on 14/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class CheckOddEven: UIViewController {
    
    private let myTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Number"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .black
        textField.textColor = .white
        
        return textField
    }()
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Check", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 6
        button.addTarget(self,action: #selector(OddEven), for: .touchUpInside)
        return button
    }()
    
    @objc private func OddEven() {
        print("Processing..")
        
        guard let number = Int(myTextField.text!) else {
            let alert = UIAlertController(title: "Warning Message!!!", message: "Please Enter a Number" ,preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            DispatchQueue.main.async {
                self.present(alert,animated: true,completion: nil)
            }
            return
        }
        
        let vc = OddEvenResult()
        if number % 2 == 0{
            vc.result = "Number is Even"
        }else{
            vc.result = "Number is Odd"
        }
        navigationController?.pushViewController(vc, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(myTextField)
        view.addSubview(myButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myTextField.frame = CGRect(x: 40,y: (view.height / 2) - 50, width: view.width - 80, height: 60)
        myButton.frame = CGRect(x: 40,y: myTextField.bottom + 30,width:view.width - 80,height: 60)
    }
    
}
