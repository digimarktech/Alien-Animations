//
//  ViewController.swift
//  Animations
//
//  Created by Marc Aupont on 12/18/15.
//  Copyright © 2015 Digimark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true

    @IBOutlet var buttonText: UIButton!
    
    @IBOutlet var image: UIImageView!
    
    @IBAction func updateImage(sender: AnyObject) {
        
        if isAnimating == true {
            
            timer.invalidate()
            
            isAnimating = false
            
            buttonText.setTitle("Start", forState: .Normal)
            
        } else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "doAnimation", userInfo: nil, repeats: true)
            
            isAnimating = true
            
            buttonText.setTitle("Stop", forState: .Normal)
        }
        
            }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //The code below allows for our animation to happen automatically on a timer instead of manually pressing update image button
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "doAnimation", userInfo: nil, repeats: true)
        
    }
    
    func doAnimation() {
        
        if counter == 5 {
            
            counter = 1
            
        } else {
            
            counter++
        }
        
        
        image.image = UIImage(named: "frame\(counter).png")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*

    //Method similiar to view did load. Use this function to move image off of screen
    override func viewDidLayoutSubviews() {
        
        
        // This will make alien appear to left of screen
        //image.center = CGPointMake(image.center.x - 400, image.center.y)
        
        
        //This entry makes the image invisible
        //image.alpha = 0
        
        
        //This changes the size of the image. These properties makes the image invisible
        image.frame = CGRectMake(100, 20, 0, 0)
        
    }
    
    //This is called just when the view appears
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1) { () -> Void in
            
            
            //This will bring alien back to screen from the left
           // self.image.center = CGPointMake(self.image.center.x + 400, self.image.center.y)
            
            
            //This displays image again after being invisible
            //self.image.alpha = 1
            
            //This will resize the image and make it bigger than what it was before
            self.image.frame = CGRectMake(100, 20, 100, 200)
            
        }
        
    }
    
 */
    
    
    


}

