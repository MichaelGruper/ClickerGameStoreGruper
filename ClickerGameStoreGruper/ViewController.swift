//
//  ViewController.swift
//  ClickerGameStoreGruper
//
//  Created by MICHAEL GRUPER on 9/25/24.
//
class AppData: Codable{
    static var scale = 1.0
    static var licks = 0.0
    static var fivePrice = 250.0
    static var tenPrice = 500.0
    static var twofivePrice = 1250.0
    static var defaults = UserDefaults.standard
    static var encoder = JSONEncoder()
    static var decoder = JSONDecoder()
}

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var licksLabelOutlet: UILabel!
    @IBOutlet weak var tongueImageViewOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //defaults.set(0, forKey: "score")
        
        //let score = defaults.double(forKey: "score")
        //let mult = defaults.double(forKey: "scale")
        //print(score)
        AppData.licks = AppData.defaults.double(forKey: "score")
        
        AppData.scale = AppData.defaults.double(forKey: "scale")
        
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        licksLabelOutlet.text = "Licks: \(Int(AppData.licks))"
    }
    
    @IBAction func imageAction(_ sender: UITapGestureRecognizer) {
        AppData.licks += AppData.scale
        licksLabelOutlet.text = "Licks: \(Int(AppData.licks))"
    }
    @IBAction func saveButtonAction(_ sender: UIButton) {
        
        AppData.defaults.set(AppData.licks, forKey: "score")
        AppData.defaults.set(AppData.scale, forKey: "scale")
        
    }
    
}

