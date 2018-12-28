//
//  ViewController.swift
//  StartupSimulator
//
//  Created by John Aceto on 12/28/18.
//  Copyright © 2018 John Aceto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let serviceAnswers = ["Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craiglist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let audienceAnswers = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]

    @IBOutlet weak var serviceLabel: UILabel!
    @IBOutlet weak var audienceLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func simulateButtonTapped(_ sender: Any) {
        generateAnswersService()
        generateAnswersAudience()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else {return}
        
        generateAnswersAudience()
        generateAnswersService()
    }
    
    func generateAnswersService() {
        let maxIndex = UInt32(serviceAnswers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        serviceLabel.text = serviceAnswers[randomIndex]
    }
    
    func generateAnswersAudience() {
        let maxIndex = UInt32(audienceAnswers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        audienceLabel.text = audienceAnswers[randomIndex]
    }

}

