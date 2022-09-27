//
//  ViewController.swift
//  Lesson_2.3
//
//  Created by Даниил Козлов on 26.09.2022.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var getResultButton: UIButton!
    
    @IBOutlet var minValueLabel: UILabel!
    @IBOutlet var maxValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getResultButton.layer.cornerRadius = 10
        
    }
    @IBAction func getResult() {
        let minNumber = Int(minValueLabel.text ?? "") ?? 0
        let maxNumber = Int(maxValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = String(Int.random(in: minNumber...maxNumber))
    }
}

