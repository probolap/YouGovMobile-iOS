//
//  ViewController.swift
//  YouGov
//
//  Created by Przemyslaw Probola on 1/12/16.
//  Copyright © 2016 YouGov. All rights reserved.
//

import UIKit
import Crashlytics

class ViewController: UIViewController {

    let dataSource = FeedDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        addCrashButton()
        addPushButton()

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addCrashButton() {
        
        let button = UIButton(type: UIButtonType.RoundedRect)
        button.backgroundColor = UIColor.yellowColor()
        button.frame = CGRectMake(20, 120, 100, 30)
        button.setTitle("Crash", forState: UIControlState.Normal)
        button.addTarget(self, action: "crashButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button)
    }
    
    func crashButtonTapped(sender: AnyObject) {
        Crashlytics.sharedInstance().crash()
    }
    
    func addPushButton() {
        
        let button = UIButton(type: UIButtonType.RoundedRect)
        button.backgroundColor = UIColor.blueColor()
        button.frame = CGRectMake(140, 120, 100, 30)
        button.setTitle("Push", forState: UIControlState.Normal)
        button.addTarget(self, action: "pushButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button)
    }
    
    func pushButtonTapped(sender: AnyObject) {
        
        let vc = NextViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func fetchData() {
        dataSource.dataModels.appendContentsOf(["a", "b", "c"])
    }

}

