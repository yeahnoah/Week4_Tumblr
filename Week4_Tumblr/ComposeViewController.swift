//
//  ComposeViewController.swift
//  Week4_Tumblr
//
//  Created by Noah Batterson on 10/10/15.
//  Copyright © 2015 Noah Batterson. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    @IBOutlet weak var textButton1: UIButton!
    @IBOutlet weak var photoButton2: UIButton!
    @IBOutlet weak var quoteButton3: UIButton!
    @IBOutlet weak var linkButton4: UIButton!
    @IBOutlet weak var chatButton5: UIButton!
    @IBOutlet weak var videoButton6: UIButton!
    @IBOutlet weak var nevermindButton: UIButton!
    @IBOutlet weak var fakeMenuView: UIView!
    
    var InitialtextButton1: CGPoint!
    var InitialphotoButton2: CGPoint!
    var InitialquoteButton3: CGPoint!
    var InitiallinkButton4: CGPoint!
    var InitialchatButton5: CGPoint!
    var InitialvideoButton6: CGPoint!
    var InitialnevermindButton: CGPoint!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onNevermind(sender: AnyObject) {
        let parentViewController = self.parentViewController as! ViewController
        
        delay(0.4) { () -> () in
            parentViewController.didDismissComposeScreen()
        }
        
        UIView.animateWithDuration(0.3) { () -> Void in
            self.view.backgroundColor = UIColor(red: 49/255, green: 67/255, blue: 86/255, alpha: 0)
        }
        
        UIView.animateWithDuration(0.01, animations: { () -> Void in
            self.fakeMenuView.alpha = 1
            }) { (Bool) -> Void in
                delay(0.35, closure: { () -> () in
                    self.fakeMenuView.alpha = 0
                })
        }

        UIView.animateWithDuration(0.3, delay: 0.25, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: [], animations: { () -> Void in
            self.textButton1.center = CGPointMake(self.InitialtextButton1.x, self.view.frame.size.height + 200)
            }) { (Bool) -> Void in
                delay(0.05, closure: { () -> () in
                    self.textButton1.center = self.InitialtextButton1
                })
        }
        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: [], animations: { () -> Void in
            self.photoButton2.center = CGPointMake(self.InitialphotoButton2.x, self.view.frame.size.height + 200)
            }) { (Bool) -> Void in
                delay(0.0, closure: { () -> () in
                    self.photoButton2.center = self.InitialphotoButton2
                })
        }
        UIView.animateWithDuration(0.4, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: [], animations: { () -> Void in
            self.quoteButton3.center = CGPointMake(self.InitialquoteButton3.x, self.view.frame.size.height + 200)
            }) { (Bool) -> Void in
                delay(0.05, closure: { () -> () in
                    self.quoteButton3.center = self.InitialquoteButton3
                })
        }
        UIView.animateWithDuration(0.3, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: [], animations: { () -> Void in
            self.linkButton4.center = CGPointMake(self.InitiallinkButton4.x, self.view.frame.size.height + 200)
            }) { (Bool) -> Void in
                delay(0.3, closure: { () -> () in
                    self.linkButton4.center = self.InitiallinkButton4
                })
        }
        UIView.animateWithDuration(0.3, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: [], animations: { () -> Void in
            self.chatButton5.center = CGPointMake(self.InitialchatButton5.x, self.view.frame.size.height + 200)
            }) { (Bool) -> Void in
                delay(0.2, closure: { () -> () in
                    self.chatButton5.center = self.InitialchatButton5
                })
        }
        UIView.animateWithDuration(0.3, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: [], animations: { () -> Void in
            self.videoButton6.center = CGPointMake(self.InitialvideoButton6.x, self.view.frame.size.height + 200)
            }) { (Bool) -> Void in
                delay(0.25, closure: { () -> () in
                    self.videoButton6.center = self.InitialvideoButton6
                })
        }
        UIView.animateWithDuration(0.2, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: [], animations: { () -> Void in
            self.nevermindButton.center = CGPointMake(self.InitialnevermindButton.x, self.view.frame.size.height + self.nevermindButton.frame.size.height)
            }) { (Bool) -> Void in
                delay(0.1, closure: { () -> () in
                    self.nevermindButton.center = self.InitialnevermindButton
                })
        }
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.25, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.textButton1.center = self.InitialtextButton1
            }, completion: nil)
        UIView.animateWithDuration(0.25, delay: 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.photoButton2.center = self.InitialphotoButton2
            }, completion: nil)
        UIView.animateWithDuration(0.25, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.quoteButton3.center = self.InitialquoteButton3
            }, completion: nil)
        UIView.animateWithDuration(0.25, delay: 0.25, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.linkButton4.center = self.InitiallinkButton4
            }, completion: nil)
        UIView.animateWithDuration(0.25, delay: 0.15, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.chatButton5.center = self.InitialchatButton5
            }, completion: nil)
        UIView.animateWithDuration(0.25, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.videoButton6.center = self.InitialvideoButton6
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.85, initialSpringVelocity: 0, options: [], animations: { () -> Void in
            self.nevermindButton.center = self.InitialnevermindButton
            }, completion: nil)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = UIColor(red: 49/255, green: 67/255, blue: 86/255, alpha: 0.8)
        //Text Button BEGIN
        InitialtextButton1 = textButton1.center
        textButton1.center = CGPointMake(self.view.center.x, self.view.frame.size.height + 200)
        //Text Button END
        //Photo Button BEGIN
        InitialphotoButton2 = photoButton2.center
        photoButton2.center = CGPointMake(self.view.center.x, self.view.frame.size.height + 200)
        //Photo Button END
        //Quote Button BEGIN
        InitialquoteButton3 = quoteButton3.center
        quoteButton3.center = CGPointMake(self.view.center.x, self.view.frame.size.height + 200)
        //Qoute Button END
        //Link Button BEGIN
        InitiallinkButton4 = linkButton4.center
        linkButton4.center = CGPointMake(self.view.center.x, self.view.frame.size.height + 200)
        //Link Button END
        //Chat Button BEGIN
        InitialchatButton5 = chatButton5.center
        chatButton5.center = CGPointMake(self.view.center.x, self.view.frame.size.height + 200)
        //Chat Button END
        //Video Button BEGIN
        InitialvideoButton6 = videoButton6.center
        videoButton6.center = CGPointMake(self.view.center.x, self.view.frame.size.height + 200)
        //Video Button END
        //Nevermind Button BEGIN
        InitialnevermindButton = nevermindButton.center
        nevermindButton.center = CGPointMake(InitialnevermindButton.x, self.view.frame.size.height + nevermindButton.frame.size.height)
        //Nevermind Button END
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
