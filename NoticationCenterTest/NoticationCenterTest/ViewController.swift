//
//  ViewController.swift
//  NoticationCenterTest
//
//  Created by admin on 3/9/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var colorSwitch = 0
    
    lazy var myButton: UIButton = {
       let button = UIButton()
        button.setTitle("CHANGE COLOR", for: .normal)
        button.addTarget(self, action: #selector(handleMyButton(_:)), for: .touchUpInside)
        button.backgroundColor = UIColor.white
        button.setTitleColor(UIColor.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    @objc func handleMyButton(_ sender: UIButton){
        view.backgroundColor =  colorSwitch % 2 == 0 ? UIColor.red : UIColor.blue
        colorSwitch = colorSwitch + 1
    }
    
    
    func setupNavBar(){
        navigationItem.title = "FIRST"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(handleNext))
    }
    
    
    @objc func handleNext(){
        navigationController?.pushViewController(ViewController2(), animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        setupNavBar()
        view.addSubview(myButton)
        NSLayoutConstraint.activate([
        myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ])
    }
}

