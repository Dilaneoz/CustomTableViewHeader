//
//  CustomizeTableViewCell.swift
//  CustomTableViewHeader
//
//  Created by Opendart Yazılım ve Bilişim Hizmetleri on 19.03.2023.
//

import UIKit

// bu viewcell oluşturulurken "also create xib" file seçeneği işaretlenir. bu bizim için görsel bir ekran oluşturur
class CustomizeTableViewCell: UITableViewCell {

    @IBOutlet weak var customHeaderTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
