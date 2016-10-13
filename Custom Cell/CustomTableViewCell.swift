//
//  CustomTableViewCell.swift
//  Custom Cell
//
//  Created by mitchell hudson on 10/12/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

protocol CustomCellProtocol {
    func switchChanged(cell: CustomTableViewCell)
    func segmentChanged(cell: CustomTableViewCell)
}

class CustomTableViewCell: UITableViewCell {
    
    var delegate: CustomCellProtocol?
    
    var callback: ((CustomTableViewCell) -> Void)?
    
    
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if let delegate = delegate {
            delegate.switchChanged(cell: self)
        }
        
        if let callback = callback {
            callback(self)
        }
    }
    
    
    
    @IBAction func segmentedControlChnaged(_ sender: UISegmentedControl) {
        if let delegate = delegate {
            delegate.segmentChanged(cell: self)
        }
    }
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
