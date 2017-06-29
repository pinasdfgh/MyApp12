//
//  ViewController.swift
//  MyApp12
//
//  Created by user on 2017/6/29.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    
    
    @IBAction func btn1(_ sender: Any) {
        let darkeff = UIBlurEffect(style: .dark)
        let darkView = UIVisualEffectView(effect: darkeff)
        darkView.frame = img1.bounds
        img1.addSubview(darkView)
    }
    
    @IBAction func btn2(_ sender: Any) {
        UIView.animate(withDuration: 2, animations:{() in
            self.img2.center.x += 30
            
            self.img3.center.y += 30
        })
        
        UIView.animate(withDuration: 2, delay: 2, options: .allowAnimatedContent, animations: {() in
            
            self.img2.center.y += 10
            self.img3.center.x -= 20
        }, completion: nil)
        
    }
    
    @IBAction func btn3(_ sender: Any) {
        UIView.animate(withDuration: 2, delay: 0, options: .allowAnimatedContent, animations: {() in
            
            self.img2.center.y += 10
            self.img3.center.x -= 20
        }, completion: {(isFinish) in
            UIView.animate(withDuration: 2, animations: {() in
                self.img1.center.x += 100
            })
            
        })
        
    }
    
    @IBAction func btn4(_ sender: Any) {
        UIView.animate(withDuration: 2, delay: 0, options: .allowUserInteraction, animations: {() in
        self.img3.transform = CGAffineTransform(scaleX: 2, y: 2)
        }, completion: {(isFinsh) in
            UIView.animate(withDuration: 1, animations: {() in
            self.img3.transform = CGAffineTransform(scaleX: 1, y: 1)
            })
        })
    }

    @IBAction func btn5(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity:0.5 , options: .allowAnimatedContent, animations: {() in
            self.img2.transform = CGAffineTransform(scaleX: 2, y: 2)
        }, completion: {(isFinsh) in
            UIView.animate(withDuration: 1, animations: {() in
                self.img2.transform = CGAffineTransform(scaleX: 1, y: 1)
            })
        })
    }
    
    @IBAction func btn6(_ sender: Any) {
        let anim = UIDynamicAnimator(referenceView: self.view)
        let beh = UIGravityBehavior(items: [img2 , img3])
        beh.gravityDirection = CGVector(dx: 0, dy: 1)
        print(beh.gravityDirection)
        anim.addBehavior(beh)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

