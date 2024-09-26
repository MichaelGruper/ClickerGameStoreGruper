//
//  ViewController.swift
//  ClickerGameStoreGruper
//
//  Created by MICHAEL GRUPER on 9/25/24.
//
class AppData{
    static var scale = 1.0
    static var licks = 0.0
    static var fivePrice = 250.0
    static var tenPrice = 500.0
    static var twofivePrice = 1250.0
}

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var licksLabelOutlet: UILabel!
    @IBOutlet weak var tongueImageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func imageAction(_ sender: UITapGestureRecognizer) {
        AppData.licks += AppData.scale
        licksLabelOutlet.text = "Licks: \(Int(AppData.licks))"
    }
    
}

