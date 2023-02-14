//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    let resultView = ResultViewController()
    
    //var delegate: ResultDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / (height*height)
        //delegate?.printUserResult(bmi)
        self.navigationController?.pushViewController(resultView, animated: true)
        let resultVC = UIStoryboard(name: "Main", bundle: nil)
        guard let nextScreen = resultVC.instantiateViewController(withIdentifier: "resultIdentifier") as? ResultViewController else { return }
        nextScreen.resultNum = bmi
        nextScreen.modalPresentationStyle = .fullScreen
        self.show(nextScreen, sender: nil)

    }
}

