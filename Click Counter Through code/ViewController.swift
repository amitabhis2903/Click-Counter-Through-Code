//
//  ViewController.swift
//  Click Counter Through code
//
//  Created by Ammy Pandey on 02/02/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Label
        let label = UILabel()
        label.frame = CGRect(x:150,y:150,width:60,height:60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        //Button
        
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "increment", for: .touchUpInside)
    }
    
    func increment(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
}

