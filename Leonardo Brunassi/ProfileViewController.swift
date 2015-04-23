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
        let topColor = UIColor (red: (50/255.0), green: (65/255.0), blue: (74/255.0), alpha: 1)
        let bottomColor = UIColor (red: (47/255.0), green: (49/255.0), blue: (73/255.0), alpha: 1)
        let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        
        textAboutMeLabel.text = "Meu nome é Leonardo Brunassi, tenho 22 anos e sou de Marília-SP. \n\nAtualmente moro na cidade de São Paulo e estou cursando o quinto semestre de Ciência da Computação na Universidade Presbiteriana Mackenzie.\n\nVim para São Paulo, pois as oportunidades de trabalho são bem maiores, há excelentes universidades e ótimos cursos, sendo muito importante para meu conhecimento e vida profissional.\n\nVenho aprendendo muito com as experiências que tenho passado, principalmente a de morar sozinho, pois foi algo que me fez crescer e amadurecer.\n\nTenho como hobbies jogar baralho com amigos, assistir filmes e sair aos finais de semana. Costumo voltar para minha cidade natal pelo menos duas vezes por mês para visitar meus pais e meu irmão.\n\nSonho em fazer um intercâmbio e trabalhar fora do país para conhecer diferentes culturas e aperfeiçoar o meu inglês, alem de ser muito bom para meu curriculo."
        
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
