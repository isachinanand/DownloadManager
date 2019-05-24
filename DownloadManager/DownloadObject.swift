//
//  DownloadObject.swift
//  DownloadManager
//
//  Created by Sachin Anand on 24/05/19.
//  Copyright © 2019 Himanshu Singh. All rights reserved.
//

import Foundation
import UIKit

class DownloadObject: NSObject {
    
    var completionBlock: DownloadManager.DownloadCompletionBlock
    var progressBlock: DownloadManager.DownloadProgressBlock?
    let downloadTask: URLSessionDownloadTask
    let directoryName: String?
    let fileName:String?
    
    init(downloadTask: URLSessionDownloadTask,
         progressBlock: DownloadManager.DownloadProgressBlock?,
         completionBlock: @escaping DownloadManager.DownloadCompletionBlock,
         fileName: String?,
         directoryName: String?) {
        
        self.downloadTask = downloadTask
        self.completionBlock = completionBlock
        self.progressBlock = progressBlock
        self.fileName = fileName
        self.directoryName = directoryName
    }
    
}
