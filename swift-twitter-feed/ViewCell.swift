//
//  CellView.swift
//  swift-twitter-feed
//
//  Created by Mehdi Hasan on 8/11/17.
//  Copyright © 2017 Mehdi. All rights reserved.
//

import UIKit
import TwitterKit

class ViewCell: UITableViewCell {
    
    @IBOutlet weak var tweetView: TWTRTweetView!
    
    //var tweetView: TWTRTweetView!
    
    func setId(id: String) {
        let client = TWTRAPIClient()
        client.loadTweet(withID: id) { (tweet, error) in
            if let t = tweet {
                self.tweetView.configure(with: t)
            } else {
                print("Failed to load Tweet: \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
}
