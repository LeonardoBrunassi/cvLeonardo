//
//  ViewController.swift
//  Leonardo Brunassi
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 15/04/15.
//  Copyright (c) 2015 Leonardo Rodrigues de Morais Brunassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageProfile: UIButton!
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //self.navigationController?.hidesBarsOnTap = true
        //self.navigationController?.hidesBarsWhenKeyboardAppears = true
        //Deixando a imagem de perfil redonda.
        imageProfile.layer.borderColor = UIColor.whiteColor().CGColor
        imageProfile.layer.cornerRadius = 74
        imageProfile.clipsToBounds = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        //Deixando a navBar invisível.
        self.navigationController?.navigationBarHidden = true
    }


}

