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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    Service.instance.loadPosts()
    NotificationCenter.default.addObserver(self, selector: #selector(ViewController.onPostsLoaded), name: NSNotification.Name("postsLoaded"), object: nil)
  }
  
  @objc func onPostsLoaded(_ notification: Any) {
    tableView.reloadData()
  }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as? PostCell else { return UITableViewCell() }
    
    cell.configureCell(withPost: Service.instance.loadedPosts[indexPath.row])
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Service.instance.loadedPosts.count
  }
  
}
