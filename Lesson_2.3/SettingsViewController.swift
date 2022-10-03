//
//  SettingsViewController.swift
//  Lesson_2.3
//
//  Created by Даниил Козлов on 27.09.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var minValueTF: UITextField! // TF - Text Field
    @IBOutlet var maxValueTF: UITextField!
    
    var minValue: String! // Восклицательный знак означает что я не должен обращаться к свойству, пока оно не инициализировано
    var maxValue: String! // Инициализация этих свойств возможна после того как супер Вью загрузится в память(СуперВью это основной экран)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValueTF.text = minValue
        maxValueTF.text = maxValue // После того как я инициализировал публичные свойства на предыдущей странице, я могу обращаться к аутлетам этого класса
    }

    @IBAction func cancelButtonPressed() {
        dismiss(animated: true) // Здесь икскод предлагает указать замыкание. В данном случае не нужно, но может понадобиться, если требуется выполнить какой-то код по закрытию
    }
}
