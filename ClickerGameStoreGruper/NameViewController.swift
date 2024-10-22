//
//  NameViewController.swift
//  ClickerGameStoreGruper
//
//  Created by MICHAEL GRUPER on 10/18/24.
//

import UIKit
class Save : Codable{
    var points: Double
    var saveName: String
    var multiplier: Double
    
    public init(points: Double, saveName: String, multiplier: Double) {
        self.points = points
        self.saveName = saveName
        self.multiplier = multiplier
    }
}
class NameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableViewOutlet: UITableView!
    var saveArray: [Save] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return saveArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
        cell.labelOutlet.text = saveArray[indexPath.row].saveName
        return cell
    }
    
    @IBOutlet weak var nameTextFieldOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        //var name = AppData.defaults.string(forKey: "name")
        //var savA = AppData.defaults.array(forKey: "saves")
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        if nameTextFieldOutlet.text != "" {
           let n = Save(points: AppData.licks, saveName: nameTextFieldOutlet.text!, multiplier: AppData.scale)
            saveArray.append(n)
            let me = AppData.defaults.array(forKey: "saves")
            if let meh = try? AppData.encoder.encode([saveArray].self, from: me){
                saveArray = meh
            }
            
            AppData.defaults.set(saveArray, forKey: "saves")
        }
        
        
        
        
    }
    
    

}
