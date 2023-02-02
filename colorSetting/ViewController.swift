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
        
        redSlider.tintColor = .red
        redSlider.value = 0.5
        greenSlider.tintColor = .green
        greenSlider.value = 0.5
        blueSlider.tintColor = .blue
        blueSlider.value = 0.5
        
        redValue.text = String(redSlider.value)
        greenValue.text = String(greenSlider.value)
        blueValue.text = String(blueSlider.value)
        
        changColor()
        
    }

    func changColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
  
    @IBAction func redSliderAction() {

        let roundRedSliderValue = round(redSlider.value * 100) / 100.0
        redValue.text = String(roundRedSliderValue)
        changColor()
        
    }
    
    @IBAction func greenSliderAction() {
        let roundGreenSliderValue = round(greenSlider.value * 100) / 100.0
        greenValue.text = String(roundGreenSliderValue)
        changColor()
    }
    
    @IBAction func blueSliderAction() {
        let roundBlueSliderValue = round(blueSlider.value * 100) / 100.0
        blueValue.text = String(roundBlueSliderValue)
        changColor()
    }
    
}

