//
//  ViewController.swift
//  TestBlur
//
//  Created by Pierluigi Cifani on 28/11/14.
//  Copyright (c) 2014 Pierluigi Cifani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blurView: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blurView.alpha = 0.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEdit(sender: AnyObject) {
        
        var finalAlpha : CGFloat = 0.0
        
        if blurView.alpha == 0.0 {
            finalAlpha = 1.0
        }
    
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.blurView.alpha =
            finalAlpha
        });
    }
}

