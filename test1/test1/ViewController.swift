//
//  ViewController.swift
//  test1
//
//  Created by DCS on 09/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Even / Odd", for : .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 6
        button.addTarget(self, action: #selector(handleEvent), for: .touchUpInside)
        return button
        
    }()
    
    @objc private func handleEvent(){
        print("Click...")
        let vc = CheckOddEven()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myButton)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.frame = CGRect(x: 40, y: (view.height / 2) - 30, width: view.width - 80,height: 60)
    }

}

