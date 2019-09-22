//
//  VideoCell.swift
//  BensNewProject
//
//  Created by Ben on 22/9/19.
//  Copyright © 2019 Ben. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
