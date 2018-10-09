//
//  PlayerCell.swift
//  CoachWells
//
//  Created by  on 9/21/18.
//  Copyright © 2018 Daly's.Apps. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell
{

    override func awakeFromNib()
    {
        super.awakeFromNib()
      
    
    }
    @IBOutlet weak var labelPlayer: UILabel!
    @IBOutlet weak var nameButton: UIButton!
    
    @IBOutlet weak var timeButton: UIButton!
    
    @IBAction func nameButtonAction(_ sender: UIButton)
    {
    
    }
    @IBAction func timeButtonAction(_ sender: UIButton)
    {
    
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
