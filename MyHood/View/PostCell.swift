//
//  PostCell.swift
//  MyHood
//
//  Created by Žan Fras on 12/05/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
  
  @IBOutlet weak var postImage: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    postImage.layer.cornerRadius = 15
  }
  
  func configureCell(withPost post: Post) {
    titleLabel.text = post.title
    descriptionLabel.text = post.postDesc
    postImage.image = Service.instance.imageForPath(path: post.imagePath)
  }

}
