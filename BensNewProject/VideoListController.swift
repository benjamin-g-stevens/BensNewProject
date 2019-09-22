//
//  VideoListController.swift
//  BensNewProject
//
//  Created by Ben on 22/9/19.
//  Copyright © 2019 Ben. All rights reserved.
//

import UIKit

class VideoListController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func createArray() {
        
        videos.append(Video(image: UIImage(named: "antivirus")!, title: "Antivirus"))
        videos.append(Video(image: UIImage(named: "bluearrow")!, title: "Blue Arrow"))
        videos.append(Video(image: UIImage(named: "bluesign")!, title: "Blue Sign"))
        videos.append(Video(image: UIImage(named: "cneteditors")!, title: "CNET Editors Choice"))
        videos.append(Video(image: UIImage(named: "ifome")!, title: "iFome"))
        videos.append(Video(image: UIImage(named: "indexofcontent")!, title: "Index Of Content"))
        
    }
}

extension VideoListController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        return cell
    }
}
