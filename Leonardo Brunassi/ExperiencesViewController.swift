//
//  ExperiencesViewController.swift
//  Leonardo Brunassi
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 15/04/15.
//  Copyright (c) 2015 Leonardo Rodrigues de Morais Brunassi. All rights reserved.
//

import UIKit

class ExperiencesViewController: UIViewController {
    
    @IBOutlet weak var companyLogo: UIImageView!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    var pageIndex: Int!
    var titleText: String!
    var imageFile: String!
    var textLabel: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Background Gradient.
        let topColor = UIColor (red: (50/255.0), green: (65/255.0), blue: (74/255.0), alpha: 1)
        let bottomColor = UIColor (red: (47/255.0), green: (49/255.0), blue: (73/255.0), alpha: 1)
        let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        
        
        //Definindo cor da letra.
        descriptionLabel.textColor = UIColor (red: 255, green: 255, blue: 254, alpha: 1)
        
        self.companyLogo.image = UIImage (named: self.imageFile)
        self.companyName.text = self.titleText
        self.descriptionLabel.text = self.textLabel
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer.enabled = false
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
