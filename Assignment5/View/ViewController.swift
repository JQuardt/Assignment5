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
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    var myStory = MyStory()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        label.text = myStory.getPageText()
        
        var i = 0
        buttonCollection.forEach { button in
            button.isHidden = true
            // Fill out button labels
            if (myStory.getPageChoice(i) != "") {
                button.isHidden = false
                button.setTitle(myStory.getPageChoice(i), for: .normal)
            }
            i += 1
        }
    }
    
    
    @IBAction func buttonClick(_ sender: UIButton) {
        let dest = myStory.findDestination(sender.currentTitle!)
        myStory.changePage(dest)
        updateUI()
    }
    
}
