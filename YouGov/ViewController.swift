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
        
        let button = UIButton(type: UIButtonType.RoundedRect)
        button.frame = CGRectMake(20, 50, 100, 30)
        button.setTitle("Crash", forState: UIControlState.Normal)
        button.addTarget(self, action: "crashButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button)

    }
    
    func fetchData() {
        dataSource.dataModels.appendContentsOf(["a", "b", "c"])
    }
    
    @IBAction func crashButtonTapped(sender: AnyObject) {
        Crashlytics.sharedInstance().crash()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

