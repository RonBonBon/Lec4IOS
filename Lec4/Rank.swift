//
//  Rank.swift
//  Lec4
//
//  Created by hackeru on 9 Elul 5777.
//  Copyright © 5777 arichafamily.com. All rights reserved.
//

import Foundation

enum Rank : Int{
    case Ace = 1, Two, Three, Four, Five, Six, Seven
    case Eight, Nine, Ten, Jack, Queen, King
    
    var description: String{
        switch self {
        case .Ace:
            return "A"
        case .King:
            return "K"
        case .Queen:
            return "Q"
        case .Jack:
            return "J"
        default:
            return String(rawValue)
        }
    }
    
    var blackJackValue: Int{
        switch self {
        case .King, .Queen, .Jack:
            return 10
        default:
            return rawValue
        }
    }
}
