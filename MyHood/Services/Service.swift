//
//  Service.swift
//  MyHood
//
//  Created by Žan Fras on 12/05/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class Service {
  
  private init() {}
  
  static let instance = Service()
  
  private var _loadedPosts = [Post]()
  
  var loadedPosts: [Post] {
    return _loadedPosts
  }
  
  func savePosts() {
   let postsData = NSKeyedArchiver.archivedData(withRootObject: _loadedPosts)
    UserDefaults.standard.set(postsData, forKey: "posts")
    UserDefaults.standard.synchronize()
  }
  
  func loadPosts() {
    guard let postsData = UserDefaults.standard.object(forKey: "posts") as? Data else { return }
    guard let postsArray = NSKeyedUnarchiver.unarchiveObject(with: postsData) as? [Post] else { return }
    
    _loadedPosts = postsArray
    
    NotificationCenter.default.post(Notification(name: Notification.Name(rawValue: "postsLoaded"), object: nil))
  }
  
  func saveImageAndCreatePath(image: UIImage) {
    
  }
  
  func imageForPath(path: String) {
    
  }
  
  func addPost(post: Post) {
    _loadedPosts.append(post)
    savePosts()
    loadPosts()
  }
  
}
