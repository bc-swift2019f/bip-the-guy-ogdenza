//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Zach Ogden on 9/11/19.
//  Copyright © 2019 Zach Ogden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark Properties

    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Mark Functions
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        
        // shrink our image by 60 pixels
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + 60, y: self.imageToPunch.bounds.origin.y + 60, width: self.imageToPunch.bounds.size.width - 60, height: self.imageToPunch.bounds.size.height - 60 )
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0, options: [], animations: {self.imageToPunch.bounds = bounds}, completion: nil)
    }
    
    // Mark Actions
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    

    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
    }
}

