//
//  ViewController.swift
//  MyHood
//
//  Created by Žan Fras on 12/05/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  
  var posts = [Post]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let post = Post(imagePath: "", title: "Post 1", postDesc: "Post 1 Description")
    let post2 = Post(imagePath: "", title: "Post 2", postDesc: "I am the second post. Yipeee!")
    let post3 = Post(imagePath: "", title: "Post 3", postDesc: "I am the most important post.")
    
    posts.append(post)
    posts.append(post2)
    posts.append(post3)
    
    tableView.reloadData()
  }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as? PostCell else { return UITableViewCell() }
    
    cell.configureCell(withPost: posts[indexPath.row])
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return posts.count
  }
  
}
