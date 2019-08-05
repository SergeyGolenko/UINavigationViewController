//
//  SecondViewController.swift
//  UINavigationViewController
//
//  Created by Sergey Golenko on 03/08/2019.
//  Copyright © 2019 Sergey Golenko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "SecondVC" 

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true )
        self.perform(#selector(goBack ), with: nil, afterDelay: 2.0)
        
    }
    
    @objc func goBack(){
        //self.navigationController?.popViewController(animated: true)
        // получаем текущий массив контроллеров
        var currentViewControllerArray = self.navigationController?.viewControllers
        
        // удаляем последний контроллер
        currentViewControllerArray?.removeLast()
        
        // Присваиваю новый контроллер
        if let newController = currentViewControllerArray{
            self.navigationController?.viewControllers = newController
        }
    }

}
