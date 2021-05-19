//
//  CustomTableViewCell.swift
//  TakeNotes
//
//  Created by Fisch on 19/5/21.
//

import UIKit

class CustomTableViewCell: FoldingCell {
    

    @IBOutlet weak var foregroundTitle: UILabel!
    @IBOutlet weak var containerTitle: UILabel!
    @IBOutlet weak var containerContent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func animationDuration(_ itemIndex:NSInteger, type:AnimationType)-> TimeInterval {
        // durations count equal it itemCount
        let durations = [0.33, 0.26, 0.26] // timing animation for each view
        return durations[itemIndex]
    }
    
}
 
