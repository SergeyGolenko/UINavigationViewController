//
//  ViewController.swift
//  UINavigationViewController
//
//  Created by Sergey Golenko on 30/07/2019.
//  Copyright © 2019 Sergey Golenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var displaySecondButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "FirstVC "
        self.displaySecondButton = UIButton(type: .system)
        self.displaySecondButton.setTitle("SecondVC", for: .normal)
        self.displaySecondButton.sizeToFit()
        self.displaySecondButton.center = self.view.center
        self.view.addSubview(displaySecondButton)
        self.displaySecondButton.addTarget(self, action: #selector(showSecondDisplayVC(parametrSender:)), for: .touchUpInside)
    }

    @objc func showSecondDisplayVC (parametrSender:Any){
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

