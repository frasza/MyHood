//
//  AddPostViewController.swift
//  MyHood
//
//  Created by Žan Fras on 12/05/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class AddPostViewController: UIViewController {

  @IBOutlet weak var titleTextField: UITextField!
  @IBOutlet weak var descriptionTextField: UITextField!
  @IBOutlet weak var postImage: UIImageView!
  
  var imagePicker: UIImagePickerController!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    postImage.layer.cornerRadius = 120
    imagePicker = UIImagePickerController()
    imagePicker.delegate = self
  }
  
  @IBAction func addPictureButtonPressed(_ sender: UIButton) {
    sender.setTitle("", for: .normal)
    present(imagePicker, animated: true, completion: nil)
  }
  
  @IBAction func makePostButtonPressed(_ sender: UIButton) {
    
  }
  
  @IBAction func cancelButtonPressed(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
  
}

extension AddPostViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
    imagePicker.dismiss(animated: true, completion: nil)
    postImage.image = selectedImage
  }
  
}
