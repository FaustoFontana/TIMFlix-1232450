//
//  VCListeDesFilms.swift
//  TIMFlix-1232450
//
//  Created by Etudiant(e) Tim on 2015-10-05.
//  Copyright (c) 2015 timStudent. All rights reserved.
//

import UIKit

class VCListeDesFilms: UIViewController {

    var tableauDesVideos: Array< Dictionary <String,String> > = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let path = NSBundle.mainBundle().pathForResource("Listes des videos", ofType: "plist")
        {
            tableauDesVideos = NSArray(contentsOfFile: path) as! Array
        }
        else {
            println("Erreur: Le chemin vers le fichier de données est invalide ")
        } // if let path ...
        
        // Trace temporaire
        let unFilm = tableauDesVideos[0] as NSDictionary
        let titre = unFilm["titre"] as! String
        println("Le titre du film est: \(titre)")
        
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
