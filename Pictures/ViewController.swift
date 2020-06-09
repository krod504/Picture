//
//  ViewController.swift
//  Pictures
//
//  Created by Karla Rodriguez on 6/9/20.
//  Copyright © 2020 Karla Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    @IBAction func takeSelfieTappped(_ sender: Any) {
        
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated:true, completion: nil)
    }
    
    
    @IBAction func libaryButtonTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        
         present(imagePicker, animated:true, completion: nil)
    }
    
    @IBOutlet weak var newImage: UIImageView!
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { newImage.image = selectedImage
            
        }
    
        imagePicker.dismiss(animated: true, completion: nil )
    }
    
}

