//
//  EventsViewController.swift
//  Leonardo Brunassi
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 16/04/15.
//  Copyright (c) 2015 Leonardo Rodrigues de Morais Brunassi. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    var pageIndex: Int!
    var titleText: String!
    var imageFile: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.logoImage.image = UIImage (named: self.imageFile)
        self.textLabel.text = self.titleText
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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