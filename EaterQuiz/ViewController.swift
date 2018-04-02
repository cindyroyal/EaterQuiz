//
//  ViewController.swift
//  EaterQuiz
//
//  Created by Cindy Royal on 2/28/18.
//  Copyright © 2018 Cindy Royal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pizza:Int = 0
    var sushi:Int = 0
    var taco:Int = 0
    var hamburger:Int = 0
    var broccoli:Int = 0
    var total:Int = 0
    var sushibonus:Int = 0
    

    @IBAction func selectPizza(_ sender: UISwitch) {
        if sender.isOn {
            pizza = 1
        }
        else {
            pizza = 0
        }
    }
    
    @IBAction func selectSushi(_ sender: UISwitch) {
        if sender.isOn {
            sushi = 1
        }
        else {
            sushi = 0
        }
    }
    
    
    @IBAction func selectTaco(_ sender: UISwitch) {
        if sender.isOn {
            taco = 1
        }
        else {
            taco = 0
        }
    }
    
    @IBAction func selectHamburger(_ sender: UISwitch) {
        if sender.isOn {
            hamburger = 1
        }
        else {
            hamburger = 0
        }
    }
    
    @IBAction func selectBroccoli(_ sender: UISwitch) {
        if sender.isOn {
            broccoli = 1
        }
        else {
            broccoli = 0
        }
    }
    
    @IBOutlet weak var myTotal: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var sushiPoints: UILabel!
    
    @IBAction func mySlider(_ sender: UISlider) {
        sushibonus = Int(sender.value)
        //sushiPoints.text = "\(sushibonus)"
    }
    
    @IBAction func submit(_ sender: Any) {
        total = pizza + sushi + taco + hamburger + broccoli + sushibonus
        if(total <= 1) {
            myTotal.text = "You are very picky!"
            myImage.image = UIImage(named: "picky")
        }
        else if(total > 1 && total <= 4){
            myTotal.text = "You like most foods"
            myImage.image = UIImage(named: "mediumfood")
        }
        else {
            myTotal.text = "You are an adventurous eater!"
            myImage.image = UIImage(named: "adventurous")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

