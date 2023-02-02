//
//  ViewController.swift
//  colorSetting
//
//  Created by Mark on 02.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10


    }

  
    @IBAction func redSliderAction() {
    }
    
    @IBAction func greenSliderAction() {
    }
    
    @IBAction func blueSliderAction() {
    }
    
}

