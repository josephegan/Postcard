//
//  ViewController.swift
//  Postcard
//
//  Created by JoeE on 10/19/14.
//  Copyright (c) 2014 JoeE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNametxtField: UITextField!
    @IBOutlet weak var enterMessageTxtField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPress(sender: UIButton) {
        
        self.messageLabel.hidden = false;
        messageLabel.text = enterMessageTxtField.text;
        enterMessageTxtField.text = "";
        enterMessageTxtField.resignFirstResponder();
        messageLabel.textColor = UIColor.redColor();
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
        
        
    }

}

