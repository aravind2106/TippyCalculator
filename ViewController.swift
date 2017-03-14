//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Aravind Hariharan - Vendor on 3/5/17.
//  Copyright © 2017 Aravind Hariharan - Vendor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billFeild: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var friendsLabel: UITextField!
    @IBOutlet weak var friendsAmount: UILabel!
    @IBOutlet weak var defTipAmount: UISegmentedControl!
    
     @IBAction  func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sendDefValue(_ sender: Any) {
        let tipsbe = defTipAmount.selectedSegmentIndex
        setIndex(tipsbe: tipsbe)
    }
    
    func setIndex(tipsbe: Int){
        print (tipsbe)
    }
    
    
    @IBAction func calculateforFriend(_ sender: Any) {
        calculateTipHere(Any.self)
    }

    @IBAction func calculateTipHere(_ sender: Any) {
        let tipPercentages = [0.18, 0.20, 0.25]
        let bill = Double(billFeild.text!) ?? 0
        var tmp_friendAmount = Double(friendsLabel.text!) ?? 1
        if (tmp_friendAmount == 0){
            tmp_friendAmount = 1
        }
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let divideAmount = total/tmp_friendAmount
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        friendsAmount.text = String(format: "$%.2f", divideAmount)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        calculateTipHere(Any.self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

