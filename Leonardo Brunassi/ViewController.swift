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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        

        //Definindo uma font para as labels.
        aboutMeLabel.font = UIFont (name: "TimesNewRomanPS-BoldMT", size: 17)
        experiencesLabel.font = UIFont (name: "TimesNewRomanPS-BoldMT", size: 17)
        futureLabel.font = UIFont (name: "TimesNewRomanPS-BoldMT", size: 17)
        eventsLabel.font = UIFont (name: "TimesNewRomanPS-BoldMT", size: 17)
        
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

