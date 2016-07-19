//
//  GameResultsViewController.swift
//  Roshambo
//
//  Created by Zowonu, Sylvester on 7/8/16.
//  Copyright © 2016 Zowonu, Sylvester. All rights reserved.



import UIKit

class GameResultsViewController: UIViewController {

    @IBOutlet weak var resultsImageView: UIImageView!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var iphoneImageView: UIImageView!
    
    // needs to be set in presenting VC
    var gameItem: Roshambo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let item = gameItem {
            
            // create a random Roshambo item and play the game
            let randomItem = Roshambo(rawValue: Int(arc4random() % 3))
            let result = item.play(randomItem!)

            // get key/value, assign labels and imageViews
            for (key, value) in result {
                
                playerImageView.image = item.imageForItem()
                iphoneImageView.image = randomItem?.imageForItem()
                resultsImageView.image = value
                resultsLabel.text = key
            }
        }
    }

    // action for play again button..dismiss view
    @IBAction func playAgainButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
