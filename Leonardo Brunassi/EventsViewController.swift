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
    //@IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var eventsImage: UIImageView!

    @IBAction func backButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    var pageIndex: Int!
    var titleText: String!
    var imageFile: String!
    var imageEvents: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Background Gradient.
        let topColor = UIColor (red: (219/255.0), green: (39/255.0), blue: (29/255.0), alpha: 1)
        let bottomColor = UIColor (red: (255/255.0), green: (99/255.0), blue: (71/255.0), alpha: 1)
        let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        
        //var pinch: UIPinchGestureRecognizer = UIPinchGestureRecognizer(target:self, action: "pinchedView:")
        //self.view.addGestureRecognizer(pinch)
        
        self.logoImage.image = UIImage (named: self.imageFile)
        //self.textLabel.text = self.titleText
        self.eventsImage.image = UIImage (named: self.imageEvents)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        //self.navigationController?.navigationBarHidden = true
    }
    
    override func viewDidAppear(animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer.enabled = false
    }
    


//    @IBAction func pinchedView(sender: UIPinchGestureRecognizer) {
//        self.eventsImage.transform = CGAffineTransformScale(self.eventsImage.transform, sender.scale, sender.scale)
//        sender.scale = 1
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
