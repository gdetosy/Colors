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

    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var viewColor: UIView!
    @IBOutlet var opacityTF: UITextField!
   
//    var updatingViewColor: UIColor = .red
//   
//    override func viewWillAppear(_ animated: Bool) { super.viewWillAppear(animated); updateColor(withText: updatingViewColor)
//    }
//    // обновляем данные в текстовом поле
//    private func updateColor(withText text: UIColor) {
//        updatingViewColor.backgroundColor = viewColor }
//    
//    
//    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        let blue = Int(round(blueSlider.value))
        
        blueColorTF.text = "\(blue)"
        
        
        
    }
    @IBAction func greenSlider(_ sender: UISlider) {
        let green = Int(round(greenSlider.value))
        
        greenColorTF.text = "\(green)"
    }
    @IBAction func redSlider(_ sender: UISlider) {
        
        let red = Int(round(redSlider.value))
        
      redColorTF.text = "\(red)"
    }
    @IBAction func OpacitySlider(_ sender: UISlider) {
        
        let opacity = Int(round(opacitySlider.value))
        
      opacityTF.text = "\(opacity)"
        
        
    }
}

/*
 // MARK: - Navigation

 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
 }
 */

