//
//  ViewController.swift
//  CodePathPreWork
//
//  Created by Dayan Abdulla on 4/18/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        aboutText.isHidden = true //Hides on launch
        aboutImage.isHidden = true //Hides on launch
        aboutMeSwitch.isOn = false //Makes the toggle set to off
        
        
        //attempted to add a background on the labels themselves, found out that
        //labels cat have textContainerInsets
        
//        let allLabels: [UILabel] = [nameLabel, jobLabel, educationLabel, showAboutMeLabel]
//        
//        for label in allLabels{
//            label.backgroundColor = .systemGray6
//            label.textColor = .black
//            label.layer.cornerRadius = 12
//            label.layer.borderColor = UIColor.black.cgColor
//            label.layer.borderWidth = 1
//            label.layer.masksToBounds = true
//        }
//
        //Label modification
        labelContainer.layer.cornerRadius = 12
        labelContainer.layer.masksToBounds = true
        
        //helps with readablity when the color is dark
        aboutText.backgroundColor = .systemGray6
        aboutText.layer.cornerRadius = 12
        aboutText.layer.masksToBounds = true
        aboutText.textContainerInset = UIEdgeInsets(top: 10, left: 12, bottom: 3, right: 12)


    }


    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    //View that the info is in
    @IBOutlet weak var labelContainer: UIView!
    
    // Mandatory Information
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    @IBOutlet weak var educationLabel: UILabel!
    
    
    //-- Show About
    
    @IBOutlet weak var showAboutMeLabel: UILabel!
    
    @IBOutlet weak var aboutText: UITextView!
    
    @IBOutlet weak var aboutImage: UIImageView!
    
    @IBOutlet weak var aboutMeSwitch: UISwitch!
    
    @IBAction func toggleAboutMe(_ sender: UISwitch) {
        aboutText.isHidden = !sender.isOn
        aboutImage.isHidden = !sender.isOn
    }
    
    func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
}

