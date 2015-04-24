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
        
        self.pageTitles = NSArray(objects: "(Summary of Qualifications)","(Professional Experience)")
        self.pageImages = NSArray(objects: "skills","ibm_logo")
        self.pageText = NSArray (objects: "- Database DB2.\n\n- Programming Java.\n\n - Knowledge in HTML5, CCS3 and JavaScript.\n\n- Learning programming languages Objective-C and Swift.\n\n- Office Package.\n\n - English, CCI Marília-SP.\n\n- High School - Colégio Cristo Rei de Marília.\n\n - Studying Computer Science, MACKENZIE-SP (Third Year).","- Development of a web application to control tasks received to a department with insert, update, query and database for deletion using the JAVA programming language.\n\n- Support for DB2 installation, Brio and Lotus Notes.\n\n- Support the access request in UAT (User Administration Tool).\n\n- Development and test queries that seek, filter and extract information from a set of data in tables, generating reports to be delivered to customers in a specific period.")
        
        
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
