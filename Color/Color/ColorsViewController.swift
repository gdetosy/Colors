//
//  ColorsViewController.swift
//  Color
//
//  Created by tosy on 30.11.22.
//

import UIKit

class ColorsViewController: UIViewController {
    @IBOutlet var redColorTF: UITextField!
    @IBOutlet var greenColorTF: UITextField!
    @IBOutlet var blueColorTF: UITextField!
    @IBOutlet var opacityslider: UISlider!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var viewColor: UIView!
    @IBOutlet var opacityTF: UITextField!
   
    override func viewDidLoad() {
        setSlider(opacityslider: opacityslider)
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {}
    @IBAction func greenSlider(_ sender: UISlider) {}
    @IBAction func redSlider(_ sender: UISlider) {}
    @IBAction func OpacitySlider(_ sender: UISlider) {}
}

/*
 // MARK: - Navigation

 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
 }
 */

