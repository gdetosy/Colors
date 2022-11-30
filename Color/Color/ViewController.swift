//
//  ViewController.swift
//  Color
//
//  Created by tosy on 30.11.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var changeBGColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeBgColorButton(_ sender: Any) {
        
     performSegue(withIdentifier: "colorsViewController", sender: nil)
        
        
    }
    

}

