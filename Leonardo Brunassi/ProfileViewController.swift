//
//  profileViewController.swift
//  Leonardo Brunassi
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 15/04/15.
//  Copyright (c) 2015 Leonardo Rodrigues de Morais Brunassi. All rights reserved.
//

import UIKit

class profileViewController: UIViewController {

    
    @IBOutlet weak var textAboutMeLabel: UILabel!
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textAboutMeLabel.text = "Meu nome é Leonardo Brunassi, tenho 22 anos e sou de Marília-SP. \n\nAtualmente moro na cidade de São Paulo e estou cursando o quinto semestre de Ciência da Computação na Universidade Presbiteriana Mackenzie."
        textAboutMeLabel.font = UIFont (name: "TimesNewRomanPSMT", size: 15)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        //Deixando a navBar visível.
        self.navigationController?.navigationBarHidden = false
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
