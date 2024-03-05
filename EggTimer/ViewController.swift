//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//recreated  by me (Sniperboss2301)

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var search: UISearchBar!
    

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    // let softTime = 5
    //let mediumTime = 7
    //let hardTime = 12
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
   // var secondRemaining = 60
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    
    @IBAction func hardnessSelected(_ sender: UIButton){
        
        
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        
        
        //The timer bellow
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
        
    }
    @objc func updateTimer() {
        // if secondRemaining > 0 {
        //Programming the progress bar
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float (totalTime)
            
        }else{
            timer.invalidate()
            titleLabel.text = "DONE"
        }
        
        let userAnswer = "yes"

        if userAnswer.lowercased() == "yes" {
            print("User said yes!")
        } else if userAnswer.lowercased() == "no" {
            print("User said no!")
        } else {
            print("Invalid input. Please enter 'yes' or 'no'.")
        }
        
        


       // let userAnswer = "yes"

        //if userAnswer.lowercased() == "yes" {
         //   print("the yes!")
        //} else if userAnswer.lowercased() == "no" {
          //  print("the no!")
        //} else {
          //  print("Invalid input. Please enter 'yes' or 'no'.")
      //  }

        
        
        
    }
    
    
    

}
