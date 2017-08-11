//
//  ViewController.swift
//  swift-twitter-feed
//
//  Created by Mehdi Hasan on 8/11/17.
//  Copyright © 2017 Mehdi. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let client = TWTRAPIClient()
    
    let tweetIds = ["871679061847879682", "871677472202477568", "871675245043888128", "871674214356484096"];

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "CellView", bundle: nil), forCellReuseIdentifier: "cell_view")
    }
}

extension ViewController: UITableViewDataSource {
    
    // MARK: uitableview datasource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_view", for: indexPath) as! ViewCell
        cell.setId(id: self.tweetIds[indexPath.row])
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweetIds.count
    }
}

