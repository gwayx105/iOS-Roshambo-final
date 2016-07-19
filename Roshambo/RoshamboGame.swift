//
//  RoshamboGame.swift
//  Roshambo
//
//  Created by Zowonu, Sylvester on 7/8/16.
//  Copyright © 2016 Zowonu, Sylvester. All rights reserved.


import Foundation
import UIKit

enum Roshambo: Int {
  
    case Rock = 0, Paper, Scissors
    
    func play(opponent: Roshambo) -> [String:UIImage] {
        
        switch self {
        case .Rock:
            switch opponent {
            case .Rock:
                return ["It's a tie !": UIImage(named: "itsATie")!]
            case .Paper:
                return ["LOSER !...paper covers rock": UIImage(named: "paperCoversRock")!]
            case .Scissors:
                return ["Winner !...rock breaks scissors": UIImage(named: "rockCrushesScissors")!]
            }
        case .Paper:
            switch opponent {
            case .Rock:
                return ["Winner !...paper covers rock": UIImage(named: "paperCoversRock")!]
            case.Paper:
                return ["It's a tie !": UIImage(named: "itsATie")!]
            case .Scissors:
                return ["Loser !...scissors cut paper": UIImage(named: "rockCrushesScissors")!]
            }
        case .Scissors:
            switch opponent{
            case .Rock:
                return ["Loser !...rock breaks scissors": UIImage(named: "rockCrushesScissors")!]
            case .Paper:
                return ["Winner !...scissors cut paper": UIImage(named: "rockCrushesScissors")!]
            case .Scissors:
                return ["It's a tie !": UIImage(named: "itsATie")!]
            }
        }
    }
    
    // return an image
    func imageForItem() -> UIImage {
        
        switch self {
        case .Rock:
            return UIImage(named: "rock")!
        case .Paper:
            return UIImage(named: "paper")!
        case .Scissors:
            return UIImage(named: "scissors")!
        }
    }
}