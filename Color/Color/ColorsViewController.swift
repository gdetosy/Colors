//
//  ColorsViewController.swift
//  Color
//
//  Created by tosy on 30.11.22.
//

import UIKit

class ColorsViewController: UIViewController {
    var delegate: ProtocolChangeColor?
    @IBOutlet var redColorTF: UITextField!
    @IBOutlet var greenColorTF: UITextField!
    @IBOutlet var blueColorTF: UITextField!
    @IBOutlet var opacitySlider: UISlider!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var viewColor: UIView!
    @IBOutlet var opacityTF: UITextField!
 
    override func viewDidLoad() {
     updateColor()
        super.viewDidLoad()
    }

    @IBAction func blueSlider(_ sender: UISlider) {
        updateColor()
        let blue = Int(round(blueSlider.value))
        
        blueColorTF.text = "\(blue)"
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        updateColor()
        let green = Int(round(greenSlider.value))
        
        greenColorTF.text = "\(green)"
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        updateColor()
        let red = Int(round(redSlider.value))
       
        redColorTF.text = "\(red)"
    }
    
    @IBAction func OpacitySlider(_ sender: UISlider) {
        updateColor()
        let opacity = Int(round(opacitySlider.value))
        opacityTF.text = "\(opacity)"
    }
   
    @IBAction func changeColorBtn(_ sender: UIButton) {
        delegate?.updColor(color: viewColor.backgroundColor)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func updateColor() {
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: CGFloat(opacitySlider.value / 100))
    }
}
    
