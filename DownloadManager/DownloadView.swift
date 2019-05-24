//
//  DownloadViewViewController.swift
//  DownloadManager
//
//  Created by Sachin Anand on 24/05/19.
//  Copyright © 2019 Himanshu Singh. All rights reserved.
//

import UIKit

class DownloadView: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var downloadList: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DownloadCell
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    downloadList.register(UINib(nibName: "DownloadCell", bundle: Bundle.main), forCellReuseIdentifier: "cell")
        downloadList.delegate = self
        downloadList.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
