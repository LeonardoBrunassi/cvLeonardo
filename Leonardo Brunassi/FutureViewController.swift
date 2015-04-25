//
//  FutureViewController.swift
//  Leonardo Brunassi
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 15/04/15.
//  Copyright (c) 2015 Leonardo Rodrigues de Morais Brunassi. All rights reserved.
//

import UIKit

class FutureViewController: UIViewController {

    @IBAction func backButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var futureLabel: UILabel!
    @IBOutlet weak var aboutMyFutureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Defigindo uma cor para as labels.

        futureLabel.textColor = UIColor (red: 255, green: 255, blue: 254, alpha: 1)
        aboutMyFutureLabel.textColor = UIColor (red: 255, green: 255, blue: 254, alpha: 1)
        
        //Definindo uma font para as labels.
        futureLabel.font = UIFont (name: "TimesNewRomanPS-BoldMT", size: 28 )
        aboutMyFutureLabel.font = UIFont (name: "TimesNewRomanPS", size: 17)
        
        
        
        aboutMyFutureLabel.text = "In the future, I see myself traveling outside Brazil and participating in an event of WWDC, meeting new people, new places and new technologies.\n\nIn a few years, I have already had the opportunity to study at least six months in another country and already be working in some company or maybe in my own iOS application development company, because all I have ever seen in college and already worked, application development is what most interested me.\n\nOne of my dreams and I'll realize it is to work at Apple in Cupertino and be part of an innovative team and working our best to develop systems that change the world."
        
        
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
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer.enabled = true
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
