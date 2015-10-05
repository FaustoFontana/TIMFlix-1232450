//
//  VCListeDesFilms.swift
//  TIMFlix-1232450
//
//  Created by Etudiant(e) Tim on 2015-10-05.
//  Copyright (c) 2015 timStudent. All rights reserved.
//

import UIKit

class VCListeDesFilms: UIViewController, UITableViewDataSource {

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
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableauDesVideos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var videoCourant = tableauDesVideos[indexPath.row] as Dictionary <String,String>
        var celluleCourante = tableView.dequeueReusableCellWithIdentifier("modele", forIndexPath: indexPath) as! TVCellFilm
        
        celluleCourante.filmTitre.text = videoCourant["titre"]
        celluleCourante.filmAnne.text = videoCourant["annee"]
        celluleCourante.filmPochette.image = UIImage(named: videoCourant["pochette"]!)
        
        return celluleCourante
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
