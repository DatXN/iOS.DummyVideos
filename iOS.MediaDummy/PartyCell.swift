//
//  PartyCell.swift
//  iOS.MediaDummy
//
//  Created by Nguyễn Xuân Đạt on 2/12/17.
//  Copyright © 2017 Nguyễn Xuân Đạt. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var lblCellTitle: UILabel!
    @IBOutlet weak var imgCellPreview: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func downloadImage(partyRock: PartyRock) {
        let url = URL(string: partyRock.videoImage)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                    
                    
                DispatchQueue.global().sync {
                    self.imgCellPreview.image = UIImage(data: data)
                }
            } catch  {
                //handle the error
            }
        }


    }

    func updateUI(partyRock: PartyRock) {
        lblCellTitle.text = partyRock.videoTitle
        downloadImage(partyRock: partyRock)
    }

}
