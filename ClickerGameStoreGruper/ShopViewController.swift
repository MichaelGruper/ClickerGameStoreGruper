//
//  ShopViewController.swift
//  ClickerGameStoreGruper
//
//  Created by MICHAEL GRUPER on 9/25/24.
//

import UIKit
class ShopViewController: UIViewController {
    @IBOutlet weak var errorLabelOutlet: UILabel!
    
    @IBOutlet weak var licksCountLabelOutlet: UILabel!
    @IBOutlet weak var plustenLabelOutlet: UILabel!
    @IBOutlet weak var plustwofiveLabelOutlet: UILabel!
    @IBOutlet weak var plusfiveLabelOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        plusfiveLabelOutlet.text = "Cost: \(Int(AppData.fivePrice)) Licks"
        plustenLabelOutlet.text = "Cost: \(Int(AppData.tenPrice)) Licks"
        plustwofiveLabelOutlet.text = "Cost: \(Int(AppData.twofivePrice)) Licks"
        licksCountLabelOutlet.text = "You have \(Int(AppData.licks)) Licks"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus5ButtonAction(_ sender: UIButton) {
        if AppData.licks >= AppData.fivePrice{
            AppData.scale += 5
            AppData.licks -= AppData.fivePrice
            AppData.fivePrice += 250
            AppData.tenPrice += 500
            AppData.twofivePrice += 1250
            plusfiveLabelOutlet.text = "Cost: \(Int(AppData.fivePrice)) Licks"
            plustenLabelOutlet.text = "Cost: \(Int(AppData.tenPrice)) Licks"
            plustwofiveLabelOutlet.text = "Cost: \(Int(AppData.twofivePrice)) Licks"
            errorLabelOutlet.isHidden = true
            licksCountLabelOutlet.text = "You have \(Int(AppData.licks)) Licks"
        }
        else{
            errorLabelOutlet.isHidden = false
            errorLabelOutlet.text = "You can't buy this 👅 increaser!"
        }
    }
    
    @IBAction func plus10ButtonAction(_ sender: UIButton) {
        if AppData.licks >= AppData.tenPrice{
            AppData.scale += 10
            AppData.licks -= AppData.tenPrice
            AppData.fivePrice += 500
            AppData.tenPrice += 1000
            AppData.twofivePrice += 2500
            plusfiveLabelOutlet.text = "Cost: \(Int(AppData.fivePrice)) Licks"
            plustenLabelOutlet.text = "Cost: \(Int(AppData.tenPrice)) Licks"
            plustwofiveLabelOutlet.text = "Cost: \(Int(AppData.twofivePrice)) Licks"
            errorLabelOutlet.isHidden = true
            licksCountLabelOutlet.text = "You have \(Int(AppData.licks)) Licks"
        }
        else{
            errorLabelOutlet.isHidden = false
            errorLabelOutlet.text = "You can't buy this 👅 increaser!"
        }
    }
    
    @IBAction func plus25ButtonAction(_ sender: UIButton) {
        if AppData.licks >= AppData.twofivePrice{
            AppData.scale += 25
            AppData.licks -= AppData.twofivePrice
            AppData.fivePrice += 625
            AppData.tenPrice += 1250
            AppData.twofivePrice += 3125
            plusfiveLabelOutlet.text = "Cost: \(Int(AppData.fivePrice)) Licks"
            plustenLabelOutlet.text = "Cost: \(Int(AppData.tenPrice)) Licks"
            plustwofiveLabelOutlet.text = "Cost: \(Int(AppData.twofivePrice)) Licks"
            errorLabelOutlet.isHidden = true
            licksCountLabelOutlet.text = "You have \(Int(AppData.licks)) Licks"
        }
        else{
            errorLabelOutlet.isHidden = false
            errorLabelOutlet.text = "You can't buy this 👅 increaser!"
        }
    }
}
