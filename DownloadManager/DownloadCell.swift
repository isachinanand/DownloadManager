//
//  DownloadCell.swift
//  DownloadManager
//
//  Created by Sachin Anand on 24/05/19.
//  Copyright © 2019 Himanshu Singh. All rights reserved.
//

import UIKit

class DownloadCell: UITableViewCell {

    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var progressDetail: UILabel!
    let urlString = ""
    let directoryName : String = "TestDirectory"
    private let downloadManager = DownloadManager.shared
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.setupUI()
        self.foregrounDownloadDemo()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    
    private func setupUI() {
        self.progress.setProgress(0, animated: false)
        self.progressDetail.text = "0.0 %"
    }
    
    private func foregrounDownloadDemo() {
        let request = URLRequest(url: URL(string: self.urlString)!)
        
        let downloadKey = self.downloadManager.downloadFile(withRequest: request,
                                                            inDirectory: directoryName,
                                                            onProgress:  { [weak self] (progress) in
                                                                let percentage = String(format: "%.1f %", (progress * 100))
                                                                self?.progress.setProgress(Float(progress), animated: true)
                                                                self?.progressDetail.text = "\(percentage) %"
        }) { [weak self] (error, url) in
            if let error = error {
                print("Error is \(error as NSError)")
            } else {
                if let url = url {
                    print("Downloaded file's url is \(url.path)")
                    
                }
            }
        }
        
        print("The key is \(downloadKey!)")
    }
    
}
