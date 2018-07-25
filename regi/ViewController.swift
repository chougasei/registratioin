//
//  ViewController.swift
//  regi
//
//  Created by gtech on 2018/7/24.
//  Copyright © 2018年 gtech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderSegControl: UISegmentedControl!
    
    @IBOutlet weak var companyTextField: UITextField!
    @IBAction func companyStepper(_ sender: UIStepper) {
        let textValue = Int(sender.value)// Stepper回傳的是float所以需要轉成Int
        companyTextField.text = String(textValue) // Text為文字，所以將數字再轉為字串後顯示
    }
    
    @IBOutlet weak var vegeSwitch: UISwitch!

    @IBOutlet weak var hotLabel: UILabel!
    @IBAction func hotSlider(_ sender: UISlider) {
        let hot = Int(sender.value)
        switch hot {
        case 0:
           hotLabel.text = "不 辣"
        case 1:
            hotLabel.text = "小 辣"
        case 2:
            hotLabel.text = "中 辣"
        case 3:
            hotLabel.text = "大 辣"
        default:
            hotLabel.text = ""
        }
    }
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var okImageView: UIImageView!
    @IBAction func submitButton(_ sender: UIButton) {
        okImageView.isHidden = false
        if nameTextField.text == "" || telTextField.text == "" {
            okImageView.image = UIImage(named: "fault")//空字串"""，不能用nil
        } else {
            okImageView.image = UIImage(named: "ok")
            nameTextField.text = ""
            telTextField.text = ""
            
genderSegControl.selectedSegmentIndex = 0
            vegeSwitch.isOn = false
            companyTextField.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

