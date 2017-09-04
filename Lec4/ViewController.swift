//
//  ViewController.swift
//  Lec4
//
//  Created by hackeru on 9 Elul 5777.
//  Copyright © 5777 arichafamily.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cards = [BlackJackCard]()

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var midLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!


    @IBAction func dealTapped(_ sender: UIButton) {
        
        for s in 0...3{
            for r in 0...13{
                let suit = Suit(rawValue: s)!
                let rank = Rank(rawValue: r)!
                let card = BlackJackCard(rank: rank, suit: suit)
                cards.append(card)
                //cards.append(BlackJackCard(rank: Rank(rawValue: r)!, suit: Suit(rawValue: s)!))
            }
        }
        
        
/*
        let card = BlackJackCard(rank: .Ace, suit: .Clubs)
        
        topLabel.text = card.rank.description
        midLabel.text = card.suit.description
        bottomLabel.text = card.rank.description

        for i in 0...3{
            let s = Suit(rawValue: i)!
            print(s.description)
        }
*/
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}
