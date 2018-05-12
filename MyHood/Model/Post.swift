//
//  Post.swift
//  MyHood
//
//  Created by Žan Fras on 12/05/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
  
  public private(set) var imagePath: String
  public private(set) var title: String
  public private(set) var postDesc: String
  
  init(imagePath: String, title: String, postDesc: String) {
    self.imagePath = imagePath
    self.title = title
    self.postDesc = postDesc
  }
  
  func encode(with aCoder: NSCoder) {
    aCoder.encode(self.imagePath, forKey: "imagePath")
    aCoder.encode(self.postDesc, forKey: "description")
    aCoder.encode(self.title, forKey: "title")
  }
  
  required init?(coder aDecoder: NSCoder) {
    self.imagePath = aDecoder.decodeObject(forKey: "imagePath") as! String
    self.title = aDecoder.decodeObject(forKey: "title") as! String
    self.postDesc = aDecoder.decodeObject(forKey: "description") as! String
  }
  
}
