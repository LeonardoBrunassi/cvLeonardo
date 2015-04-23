//
//  ExperiencesPageViewController.swift
//  Leonardo Brunassi
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 17/04/15.
//  Copyright (c) 2015 Leonardo Rodrigues de Morais Brunassi. All rights reserved.
//

import UIKit

class ExperiencesPageViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pageViewController: UIPageViewController!
    var pageTitles: NSArray!
    var pageImages: NSArray!
    var pageText: NSArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageTitles = NSArray(objects: "(Síntese de Qualificações)","(Experiência Profissional)")
        self.pageImages = NSArray(objects: "skills","ibm_logo")
        self.pageText = NSArray (objects: "- Banco de Dados DB2.\n\n- Programação Java.\n\n - Conhecimentos em HTML5, CCS3 e JavaScript.\n\n- Em aprendizado nas linguagens de programação Objective-C e Swift.\n\n- Pacote Office.\n\n - Inglês, CCI Marília-SP.\n\n- Ensino Médio - Colégio Cristo Rei de Marília.\n\n - Cursando Ciência da Computação, MACKENZIE-SP (Terceiro Ano).","- Desenvolvimento de uma aplicação WEB para controle de tarefas recebidas à um departamento com inserção, atualização, consulta e deleção em banco de dados utilizando a lingaguem de programação JAVA.\n\n- Suporte a instalação de DB2, Brio e Lotus Notes.\n\n- Suporte a requisição de acessos via UAT (User Administration Tool).\n\n- Desenvolvimento e testes de queries que busquem, filtrem e extraiam informações de um conjunto de dados em tabelas, gerando relatórios para serem entregues a clientes em um período específico.")
        
        
        
        
        
        self.pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController") as! UIPageViewController
        
        self.pageViewController.dataSource = self
        self.pageViewController.delegate = self
        
        //Cores dos indicadores de páginas
        let pageControl = UIPageControl.appearance()
        pageControl.backgroundColor = UIColor (red: (255/255.0), green: (99/255.0), blue: (71/255.0), alpha: 1)
        pageControl.pageIndicatorTintColor = UIColor.blackColor()
        pageControl.currentPageIndicatorTintColor = UIColor (red: 255, green: 255, blue: 254, alpha: 1)
        
        
        var startVC = self.viewControllerAtIndex(0) as ExperiencesViewController
        var viewControllers = NSArray (object: startVC)
        

        
        self.pageViewController.setViewControllers(viewControllers as [AnyObject], direction: .Forward, animated: true, completion: nil)
        
        //self.pageViewController.view.frame = CGRectMake(0, 30, self.view.frame.width, self.view.frame.size.height - 60)
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
        self.pageViewController.didMoveToParentViewController(self)
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func viewControllerAtIndex(index: Int) -> ExperiencesViewController {
        if((self.pageTitles.count == 0) || index >= self.pageTitles.count) {
            return ExperiencesViewController()
        }
        
        var vc: ExperiencesViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ExperiencesViewController") as! ExperiencesViewController
        
        vc.imageFile = self.pageImages[index] as! String
        vc.titleText = self.pageTitles[index] as! String
        vc.textLabel = self.pageText[index] as! String
        vc.pageIndex = index
        
        return vc
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        var vc = viewController as! ExperiencesViewController
        var index = vc.pageIndex as Int
        
        if(index == 0 || index == NSNotFound) {
            return nil
        }
        
        index--
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        var vc = viewController as! ExperiencesViewController
        var index = vc.pageIndex as Int
        
        if(index == NSNotFound) {
            return nil
        }
        
        index++
        
        if(index == self.pageTitles.count) {
            return nil
        }
        
        return self.viewControllerAtIndex(index)
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.pageTitles.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
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
