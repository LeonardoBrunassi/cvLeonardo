//
//  ViewController.swift
//  Leonardo Brunassi
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 15/04/15.
//  Copyright (c) 2015 Leonardo Rodrigues de Morais Brunassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageProfile: UIButton!
    @IBOutlet weak var aboutMeLabel: UILabel!
    @IBOutlet weak var imageXcode: UIButton!
    @IBOutlet weak var experiencesLabel: UILabel!
    @IBOutlet weak var imageApple: UIButton!
    @IBOutlet weak var futureLabel: UILabel!
    @IBOutlet weak var imageEvents: UIButton!
    @IBOutlet weak var eventsLabel: UILabel!
    @IBOutlet weak var myNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Background Gradient.
        let topColor = UIColor (red: (219/255.0), green: (39/255.0), blue: (29/255.0), alpha: 1)
        let bottomColor = UIColor (red: (255/255.0), green: (99/255.0), blue: (71/255.0), alpha: 1)
        let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        //self.navigationController?.navigationBar.barTintColor = UIColor.redColor()
        //self.navigationController?.navigationBar.tintColor = UIColor.redColor()
        //self.navigationController?.navigationBar.backgroundColor = UIColor.redColor()
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)

        //self.navigationController?.interactivePopGestureRecognizer.enabled = false
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Defigindo uma cor para as labels.
        aboutMeLabel.textColor = UIColor (red: 255, green: 255, blue: 254, alpha: 1)
        experiencesLabel.textColor = UIColor (red: 255, green: 255, blue: 254, alpha: 1)
        futureLabel.textColor = UIColor (red: 255, green: 255, blue: 254, alpha: 1)
        eventsLabel.textColor = UIColor (red: 255, green: 255, blue: 254, alpha: 1)
        myNameLabel.textColor = UIColor (red: 255, green: 255, blue: 254, alpha: 1)
        
        //Definindo uma font para as labels.
        aboutMeLabel.font = UIFont (name: "TimesNewRomanPS-BoldMT", size: 17)
        experiencesLabel.font = UIFont (name: "TimesNewRomanPS-BoldMT", size: 17)
        futureLabel.font = UIFont (name: "TimesNewRomanPS-BoldMT", size: 17)
        eventsLabel.font = UIFont (name: "TimesNewRomanPS-BoldMT", size: 17)
        myNameLabel.font = UIFont (name: "TimesNewRomanPS-BoldMT", size: 23)
        
        //Deixando a imagem de perfil redonda.
        imageProfile.layer.borderColor = UIColor.whiteColor().CGColor
        imageProfile.layer.cornerRadius = 52
        imageProfile.clipsToBounds = true
        
        imageXcode.layer.borderColor = UIColor.whiteColor().CGColor
        imageXcode.layer.cornerRadius = 52
        imageXcode.clipsToBounds = true
        
        imageApple.layer.borderColor = UIColor.whiteColor().CGColor
        imageApple.layer.cornerRadius = 52
        imageApple.clipsToBounds = true
        
        imageEvents.layer.borderColor = UIColor.whiteColor().CGColor
        imageEvents.layer.cornerRadius = 52
        imageEvents.clipsToBounds = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        //Deixando a navBar invisível.
        self.navigationController?.navigationBarHidden = false
    }


}

