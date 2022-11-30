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
    
    @IBOutlet var opacitySlider: UISlider!
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
//    let xxx = color(r: CGFloat(blueColorTF.text), g: CGFloat(greenSlider.value), b: CGFloat(blueSlider.value), alpha: 1)
//
//    func color(r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat) -> UIColor {
//            return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
//
//
//    //
//        }
//
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
   
    
    func updateColor() {
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(opacitySlider.value))
//        var red : CGFloat = 0
//        var green : CGFloat = 0
//        var blue : CGFloat = 0
//
//        if redSlider.value >= 0 {
//            red = CGFloat(redSlider.value)
//        }
//        if greenSlider.value >= 0 {
//            green = CGFloat(greenSlider.value)
//        }
//        if blueSlider.value >= 0 {
//            blue = CGFloat(blueSlider.value)
//        }
//
//        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
//        viewColor.backgroundColor = color
       

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
