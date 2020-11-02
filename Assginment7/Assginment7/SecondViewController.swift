//
//  SecondViewController.swift
//  Assginment7
//
//  Created by 丸山翔太郎 on 2020/11/02.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var leftField: UITextField!
    @IBOutlet weak var rightField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftField.keyboardType = .numberPad
        rightField.keyboardType = .numberPad
        
    }

    @IBAction func calculate(_ sender: Any) {
        
        let leftNum = Double(leftField.text ?? "0.0") ?? 0.0
        let rightNum = Double(rightField.text ?? "0.0") ?? 0.0
        let doSubstraction = {(num1:Double, num2:Double) ->Double in num1 - num2}
        
        func updateLabel(result:Double){
            resultLabel.text = String(result)
        }
        
        updateLabel(result: doSubstraction(leftNum, rightNum))
        
        view.endEditing(true)
    }
}

