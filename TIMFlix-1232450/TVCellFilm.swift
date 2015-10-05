//
//  TVCellFilm.swift
//  TIMFlix-1232450
//
//  Created by Etudiant(e) Tim on 2015-10-05.
//  Copyright (c) 2015 timStudent. All rights reserved.
//

import UIKit

class TVCellFilm: UITableViewCell {

    @IBOutlet weak var filmTitre: UILabel!
    @IBOutlet weak var filmAnne: UILabel!
    @IBOutlet weak var filmPochette: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
