//
//  ViewController.swift
//  Color
//
//  Created by tosy on 30.11.22.
//

import UIKit
protocol ProtocolChangeColor {
    func updColor(color: UIColor?)
}

class ViewController: UIViewController {
    @IBOutlet var changeBGColorButton: UIButton!
    
    @IBOutlet var views: UIView!
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingVC = segue.destination as? ColorsViewController,
           segue.identifier == "goToColorsVC"
        {
            settingVC.delegate = self
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
}
