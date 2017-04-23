//
//  ViewController.swift
//  Dawwgs
//
//  Created by Khoa Le on 4/22/17.
//  Copyright © 2017 Eudaimonia. All rights reserved.
//

import UIKit
import FirebaseStorage
import FirebaseStorageUI

class ViewController: UIViewController {

    @IBOutlet var frontImage: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let storage = FIRStorage.storage()
        let storageRef = storage.reference()
        let reference = storageRef.child("images/cute_pupper.jpg")
        let imageView = self.frontImage
        
        
        frontImage.sd_setImage(with: reference)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }

}

