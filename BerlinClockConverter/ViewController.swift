//
//  ViewController.swift
//  BerlinClockConverter
//
//  Created by Daniela Banica on 11/02/2019.
//  Copyright © 2019 Daniela Banica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var secondsTextField: UITextField!
    @IBOutlet weak var minutesTextField: UITextField!
    @IBOutlet weak var hourTextField: UITextField!
    
    
    @IBAction func getTime(_ sender: Any) {
        guard let seconds = Int(secondsTextField.text!),
            let minutes = Int(minutesTextField.text!),
            let hours = Int(hourTextField.text!) else {
                return
        }
        timeLabel.text = getSecondsLine(seconds: seconds) + getFirstLHourLine(hour: hours) + getSecondHourLine(hour: hours) + getFirstMinutesLine(minutes: minutes) + getSecondMinutesLine(minutes: minutes)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func getSecondsLine(seconds: Int) -> String {
        
        
        if seconds % 2 == 0 {
            return "Y"
        }
        else {
            return "O"
            
        }
        
    }
    
    
    
    func getFirstLHourLine(hour: Int) -> String{
        var s = ""
        if hour / 5 == 0
        {
            s = "OOOO"
            
        }
        else if hour / 5 == 1
        {
            s = "ROOO"
            
        }
        else if hour / 5 == 2
        {
            s = "RROO"
        }
        else if hour / 5 == 3
        {
            s = "RRRO"
        }
        else if hour / 5 == 4
        {
            s = "RRRR"
        }
        
        return s
    }
    
    
    func getSecondHourLine(hour: Int) -> String {
        
        
        var s = ""
        if hour % 5 == 0
        {
            s = "OOOO"
            
        }
        else if hour % 5 == 1
        {
            s = "ROOO"
            
        }
        else if hour % 5 == 2
        {
            s = "RROO"
        }
        else if hour % 5 == 3
        {
            s = "RRRO"
        }
        else if hour % 5 == 4
        {
            s = "RRRR"
        }
        
        return s
    }
    
    
    
    func getFirstMinutesLine(minutes: Int) -> String {
        
        
        
        // let b = minutes / 5
        var c = ""
        for i in 0...11 {
            if i >= minutes / 5 {
                c += "O"
            } else if i % 3 == 2 {
                c += "R"
            } else {
                c += "Y"
            }
        }
        return c
    }
    
    
    
    
    func getSecondMinutesLine(minutes: Int) -> String {
        
        
        var s = ""
        if minutes % 5 == 0
        {
            s = "OOOO"
            
        }
        else if minutes % 5 == 1
        {
            s = "YOOO"
            
        }
        else if minutes % 5 == 2
        {
            s = "YYOO"
        }
        else if minutes % 5 == 3
        {
            s = "YYYO"
        }
        else if minutes % 5 == 4
        {
            s = "YYYY"
        }
        
        return s
    }
    
    
    
    

}

