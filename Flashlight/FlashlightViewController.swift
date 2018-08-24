//
//  FlashlightViewController.swift
//  Flashlight
//
//  Created by John Tate on 8/20/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import UIKit


class FlashlightViewController: UIViewController {
    
    var canYouSeeMe: Bool?

    override func viewDidLoad() {
        super.viewDidLoad()

        // For initial setup, set background as black.
        view.backgroundColor = .black
        
    }
    
    
    var isOn: Bool = false
    @IBOutlet weak var onButton: UIButton!
    
    // Set up button to toggle isOn.
    @IBAction func buttonTapped(_ sender: UIButton) {
        if isOn == false {
            // If Off and turned On, set background to yellow, button color to white, and button text to black.
            isOn = true
            view.backgroundColor = .yellow
            sender.setTitle("Off", for: .normal)
            sender.setTitleColor(.black, for: .normal)
            
        } else {
            // If On and turned Off, set background to black, button color to orange, and button text to white.
            isOn = false
            view.backgroundColor = .black
            sender.setTitle("On", for: .normal)
            sender.setTitleColor(.white, for: .normal)
  
        }
    }
}


