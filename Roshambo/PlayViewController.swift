//
//  PlayViewController.swift
//  Roshambo
//
//  Created by Zowonu, Sylvester on 7/8/16.
//  Copyright © 2016 Zowonu, Sylvester. All rights reserved.



import UIKit

class PlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // action for buttons.
    @IBAction func playButtonPressed(sender: UIButton) {

        // buttons tag property was set in storyboad. This tag is used to create a
        // Roshambo enum
        let item: Roshambo = Roshambo(rawValue: sender.tag)!
     
        if item == Roshambo.Rock {
         
            // requirement 1) Rock: create VC in code only, present
            let vc = self.storyboard?.instantiateViewControllerWithIdentifier("GameResultsViewController") as! GameResultsViewController
            
            // gameItem is Roshambo enum that GameResults will be playing against
            vc.gameItem = Roshambo.Rock
            
            presentViewController(vc, animated: true, completion: nil)
        }
        else if item == Roshambo.Paper {
            
            // requirement 2) Paper: Present VC using both code and segue
            performSegueWithIdentifier("zSegue", sender: nil)
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "zSegue" {
            
            // requirement 2) ...continuation of transitioning VC from above
            let vc = segue.destinationViewController as! GameResultsViewController
            vc.gameItem = Roshambo.Paper
        }
        else if segue.identifier == "segueOnly" {
            
            // requirement 3) Scissors: present VC using segue only.
            let vc = segue.destinationViewController as! GameResultsViewController
            vc.gameItem = Roshambo.Scissors
        }
    }
}
