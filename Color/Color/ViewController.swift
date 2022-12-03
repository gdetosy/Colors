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
    @IBAction func changeBgColorButton(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let editScreen = storyboard.instantiateViewController(withIdentifier:
//                "colorsViewController") as! ColorsViewController
//        editScreen.updatingViewColor = view.backgroundColor ?? .white
//        
        performSegue(withIdentifier: "colorsViewController", sender: nil)
//
//        @IBAction func editDataWithProperty(_ sender: UIButton) {
//        // получаем вью контроллер, в который происходит переход
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let editScreen = storyboard.instantiateViewController(withIdentifier:
//        "SecondViewController") as! SecondViewController
//        // передаем данные
//        editScreen.updatingData = dataLabel.text ?? ""
//        // переходим к следующему экрану
//        self.navigationController?.pushViewController(editScreen, animated: true)
//        }
    }
    

}

