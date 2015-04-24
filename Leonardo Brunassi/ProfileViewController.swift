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
        
        textAboutMeLabel.text = "My name is Leonardo Brunassi, I'm 22 years old and I'm from Marília-SP. Currently I live at São Paulo city and I'm studying the fifth semester of computer cience at Mackenzie Presbyterian University.\n\nI came to São Paulo, because job opportunities are much greater, there are excellent universities and great courses and it's very important do my knowledge and professional life.\n\nI've been learning a lot from the experiences that I have spent, especially of living alone because it was something that made me grow and mature.\n\nI have hobbies like playing cards with friends, watching movies and going out on the weekend. I often go back to my hometown at least twice a month to visit my parents and my brother.\n\nI dream of traveling abroad to work, know different cultures, improve my English and have new experiences."
        
        textAboutMeLabel.font = UIFont (name: "TimesNewRomanPSMT", size: 17)
        textAboutMeLabel.textColor = UIColor (red: 255, green: 255, blue: 254, alpha: 1)

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
