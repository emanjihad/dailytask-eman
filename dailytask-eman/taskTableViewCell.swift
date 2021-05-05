//
//  taskTableViewCell.swift
//  dailytask-eman
//
//  Created by Eman Jihad on 05/05/2021.
//

import UIKit
protocol checkButtondelgate {
    func checkTaskTapped(at index: IndexPath)

}
class taskTableViewCell: UITableViewCell {

    var delegate: checkButtondelgate!
    var indexPath: IndexPath!
    
    
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var cellLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func btn(_ sender: Any) {
        delegate.checkTaskTapped(at: indexPath)
    }
    
}














