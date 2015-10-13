//
//  ViewController.swift
//  Week4_Tumblr
//
//  Created by Noah Batterson on 10/10/15.
//  Copyright © 2015 Noah Batterson. All rights reserved.
// DUPLICATE

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var menuView: UIView!
    
    var HomeViewController: UIViewController!
    var SearchViewController: UIViewController!
    var AccountViewController: UIViewController!
    var TrendingViewController: UIViewController!
    var ComposeViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        HomeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        SearchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        AccountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        TrendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        ComposeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        
        viewControllers = [HomeViewController, SearchViewController, ComposeViewController, AccountViewController, TrendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].selected = false

        
        if sender.tag == 2 {
            
            contentView.frame.size = CGSize(width: contentView.frame.size.width, height: contentView.frame.size.height + menuView.frame.size.height)
            
        }
        else {
            
            let previousVC = viewControllers[previousIndex]
            previousVC.willMoveToParentViewController(nil)
            previousVC.view.removeFromSuperview()
            previousVC.removeFromParentViewController()
            
            contentView.frame.size = CGSize(width: contentView.frame.size.width, height: 524)
        }
        
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
    }

    func didDismissComposeScreen() {
        self.ComposeViewController.view.removeFromSuperview()
        contentView.frame.size = CGSize(width: contentView.frame.size.width, height: 524)
    }
}

