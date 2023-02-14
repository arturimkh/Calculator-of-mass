//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Artur Imanbaev on 14.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
//protocol ResultDelegate{
//    func printUserResult(_ result: Float)
//}

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var resultNum: Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = String(format: "%.2f", resultNum)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let firstView = ViewController()
        //firstView.delegate = self
        let mainVC = UIStoryboard(name: "Main", bundle: nil)
        guard let nextScreen = mainVC.instantiateViewController(withIdentifier: "mainIdentifier") as? ViewController else { return }
        nextScreen.modalPresentationStyle = .fullScreen
        self.show(nextScreen, sender: nil)
    }
}
//extension ResultViewController: ResultDelegate {
//    func printUserResult(_ result: Float) {
//        resultLabel.text = "\(result)"
//    }
//}

