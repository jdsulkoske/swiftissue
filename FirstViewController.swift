//
//  FirstViewController.swift
//  CampusBooze
//
//  Created by Jake Sulkoske on 3/20/15.
//  Copyright (c) 2015 Sulk. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let manager = AFHTTPRequestOperationManager();
        
        let acceptableTypes = NSMutableSet();
        acceptableTypes.addObject("application/json");
        
        manager.responseSerializer.acceptableContentTypes = acceptableTypes;
        manager.GET("http://www.kramercorporation.com/my-rest-api/companies.php", parameters: nil, success: { (operation: AFHTTPRequestOperation!, response: AnyObject!) -> Void in
            println(response);
            }) { (operation: AFHTTPRequestOperation!, error: NSError!) -> Void in
                println(error);
        };
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

