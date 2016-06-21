//
//  ViewController.swift
//  Downloading An Image
//
//  Created by George Gogarten on 6/21/16.
//  Copyright © 2016 George Gogarten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let url = NSURL(string: "https://ukonilma.files.wordpress.com/2015/07/dsc_7713.jpg")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) in
            
            if error != nil {
                
                print(error)
                
            } else {
                
                
                dispatch_async(dispatch_get_main_queue(), {
                    
                    if let bike = UIImage(data: data!) {
                        
                        self.image.image = bike
                        
                    }
                    
                })
                
                
            }
            
            
        }
    
    task.resume()
    
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

