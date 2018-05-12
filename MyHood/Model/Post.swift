//
//  Post.swift
//  MyHood
//
//  Created by Žan Fras on 12/05/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import Foundation

class Post {
  
  public private(set) var imagePath: String
  public private(set) var title: String
  public private(set) var postDesc: String
  
  init(imagePath: String, title: String, postDesc: String) {
    self.imagePath = imagePath
    self.title = title
    self.postDesc = postDesc
  }
  
}
