//
//  FeedTableViewCell.swift
//  Copybook
//
//  Created by Pedro Henrique on 23/09/21.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    static let kReuseIdentifier = "FeedTableViewCell"

    
    @IBOutlet weak var profilePicture: UIImageView!
    
    @IBOutlet weak var givenName: UILabel!
    
    @IBOutlet weak var postDate: UILabel!
    
    
    @IBOutlet weak var postText: UILabel!
    
    
    @IBOutlet weak var postImage: UIImageView!
    
    
    @IBOutlet weak var likes: UILabel!
    
    @IBOutlet weak var comments: UILabel!
    
    
    static func register(in tableView: UITableView) {
        let xib = UINib(nibName: "FeedTableViewCell", bundle: Bundle.main)
        tableView.register(xib, forCellReuseIdentifier: kReuseIdentifier)
//        tableView.register(FeedTableViewCell.self, forCellReuseIdentifier: kReuseIdentifier)
    }
    
    
    func setup(with user: Any?) {
        profilePicture.image = UIImage(data: try! Data(contentsOf: URL(string: "http://lorempixel.com.br/100/100")!))
        givenName.text = "Beltrano da Costa"
        postDate.text = "quarta-feira, 10 de janeiro de 2022"
        postImage.image = UIImage(data: try! Data(contentsOf: URL(string: "http://lorempixel.com.br/600/450")!))
        likes.text = "100 likes"
        comments.text = "25 comments"
    }
    
    
    @IBAction func onPostOptions(_ sender: UIButton) {
        
    }
    
    @IBAction func onLike(_ sender: UIButton) {
        
    }
    
    @IBAction func onComment(_ sender: UIButton) {
        
    }
    
    @IBAction func onShare(_ sender: UIButton) {
        
    }
    
    
    
}
