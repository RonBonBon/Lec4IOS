//
//  Suit.swift
//  Lec4
//
//  Created by hackeru on 9 Elul 5777.
//  Copyright © 5777 arichafamily.com. All rights reserved.
//

import UIKit

enum Suit : Int{
    case Hearts, Spades, Diamonds, Clubs
    
    var description : String{
        switch self {
        case .Hearts:
            return "♥️"
        case .Spades:
            return "♠️"
        case .Diamonds:
            return "♦️"
        case .Clubs:
            return "♣️"
        }
    }
}
