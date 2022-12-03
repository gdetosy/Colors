//
//  ViewController.swift
//  Color
//
//  Created by tosy on 30.11.22.
//

import UIKit
protocol ProtocolChangeColor {
    func updColor(color: UIColor?)
    func lblText(text: String?)
}
class ViewController: UIViewController {
    @IBOutlet weak var changeBGColorButton: UIButton!
    
    @IBOutlet var views: UIView!
    
    @IBOutlet weak var label: UILabel!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingVC = segue.destination as? ColorsViewController,
           segue.identifier == "goToColorsVC"
        {
            if let backColor = views.backgroundColor
            {
                
                
                settingVC.delegate = self
            }
        }
    }
    override func viewDidLoad() {
                super.viewDidLoad()
                // Do any additional setup after loading the view.
            }
            @IBAction func changeBgColorButton(_ sender: UIButton) {
                
                performSegue(withIdentifier: "goToColorsVC", sender: nil)
                
            }
            
            
        
    
}
extension ViewController: ProtocolChangeColor {
  
    func updColor(color: UIColor?) {
        views.backgroundColor = color
    }
    func lblText(text: String?) {
            label.text = text
            
        }
    }

