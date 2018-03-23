//
//  ViewController.swift
//  FirstApp
//
//  Created by Release on 2018. 3. 21..
//  Copyright © 2018년 Release. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MessageLabel: UILabel!
    let messageArray = ["May the force be with you", "Live long adn prosper", "To infinity and beyond", "Space is big. You just won't believe how vastly, hugely, mindbogginly big it is", 10] as [Any]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func doButtonTell(_ sender: UIButton) {
        print("Button touched");
        
        if let nextString = self.messageArray[index] as? String{
                self.MessageLabel.text = nextString
        }
            
        index = (index + 1) % self.messageArray.count;
        self.MessageLabel.adjustsFontSizeToFitWidth = true;
    }
}

