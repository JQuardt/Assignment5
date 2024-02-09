//
//  ViewController.swift
//  Assignment5
//
//  Created by Jenna Marquardt on 2/9/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var myStory = MyStory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //StoryView()
        updateUI()
    }
    
    func updateUI() {
        label.text = myStory.getPageText()
        
        //Hide the buttons...
        button0.isHidden = true
        button1.isHidden = true
        button2.isHidden = true
        button3.isHidden = true
        
        if (myStory.getPageChoice0() != "") {
            button0.isHidden = false
            button0.setTitle(myStory.getPageChoice0(), for: .normal)
        }
        if (myStory.getPageChoice1() != "") {
            button1.isHidden = false
            button1.setTitle(myStory.getPageChoice1(), for: .normal)
        }
        if (myStory.getPageChoice2() != "") {
            button2.isHidden = false
            button2.setTitle(myStory.getPageChoice2(), for: .normal)
        }
        if (myStory.getPageChoice3() != "") {
            button3.isHidden = false
            button3.setTitle(myStory.getPageChoice3(), for: .normal)
        }
    }
    
    
    @IBAction func buttonClick(_ sender: UIButton) {
        //var choice : Int = Int(UIButton.title(<#T##self: UIButton##UIButton#>))
        //myStory.getChoiceDestination(choice)
    }
    
}
