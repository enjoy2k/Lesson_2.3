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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else {
            return
            } // Кастим UIViewController до SettingsViewController
        settingsVC.maxValue = maxValueLabel.text
        settingsVC.minValue = minValueLabel.text
    }
    @IBAction func getResult() {
        let minNumber = Int(minValueLabel.text ?? "") ?? 0
        let maxNumber = Int(maxValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = String(Int.random(in: minNumber...maxNumber))
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else {
            return
        }
        minValueLabel.text = settingsVC.minValueTF.text
        maxValueLabel.text = settingsVC.maxValueTF.text
    }
}

