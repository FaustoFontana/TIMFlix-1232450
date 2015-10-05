//
//  ViewController.swift
//  TIMFlix-1232450
//
//  Created by Etudiant(e) Tim on 2015-10-05.
//  Copyright (c) 2015 timStudent. All rights reserved.
//

//projet lié a GitHub

import UIKit

class VCIntro: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        println("Exemple avec GITHUB")
         let timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: Selector("tournerLaPage"), userInfo: nil, repeats: false)
    }
    
    func tournerLaPage() {
        performSegueWithIdentifier("listeFilms", sender:self)
    } // tournerLaPage

}

