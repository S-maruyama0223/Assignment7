//
//  ViewController.swift
//  Assginment7
//
//  Created by 丸山翔太郎 on 2020/11/02.
//

import UIKit


class AdditionViewController: UIViewController {
    // private付けましょう
    @IBOutlet private weak var leftField: UITextField!
    @IBOutlet private weak var rightField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        leftField.keyboardType = .numberPad
        rightField.keyboardType = .numberPad
    }

    @IBAction func calculate(_ sender: Any) {
        let leftNum = Double(leftField.text ?? "0.0") ?? 0.0
        let rightNum = Double(rightField.text ?? "0.0") ?? 0.0

//        let doAddition = {(num1:Double, num2:Double) ->Double in num1 + num2}
//
//        func updateLabel(result:Double){
//            resultLabel.text = String(result)
//        }
//
//        updateLabel(result: doAddition(leftNum, rightNum))

        // 普通にこれで良いかなと、と個人的には思いました
        resultLabel.text = String(leftNum + rightNum)

        view.endEditing(true)
    }
}
