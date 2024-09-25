//
//  ShopViewController.swift
//  ClickerGameStoreGruper
//
//  Created by MICHAEL GRUPER on 9/25/24.
//

import UIKit
class ShopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus5ButtonAction(_ sender: UIButton) {
        if AppData.licks >= 250{
            AppData.scale += 5
            AppData.licks -= 250
            
        }
    }
    
    @IBAction func plus10ButtonAction(_ sender: UIButton) {
        
    }
    
    @IBAction func plus25ButtonAction(_ sender: UIButton) {
        
    }
}
