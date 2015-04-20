//
//  ExperiencesPageViewController.swift
//  Leonardo Brunassi
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 17/04/15.
//  Copyright (c) 2015 Leonardo Rodrigues de Morais Brunassi. All rights reserved.
//

import UIKit

class ExperiencesPageViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var testeViewController: UIPageViewController!
    var pageTitles: NSArray!
    var pageImages: NSArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageTitles = NSArray(objects: "IBM","Síntese de Qualificações")
        self.pageImages = NSArray(objects: "ibm","skill")
        
        self.testeViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController") as! UIPageViewController
        
        self.testeViewController.dataSource = self
        self.testeViewController.delegate = self
        
        //Cores dos indicadores de páginas
        let pageControl = UIPageControl.appearance()
        pageControl.backgroundColor = UIColor.clearColor()
        //pageControl.pageIndicatorTintColor = UIColor.redColor()
        //pageControl.currentPageIndicatorTintColor = UIColor.blackColor()
        
        
        var startVC = self.viewControllerAtIndex(0) as ExperiencesViewController
        var viewControllers = NSArray (object: startVC)
        
        self.testeViewController.setViewControllers(viewControllers as [AnyObject], direction: .Forward, animated: true, completion: nil)
        
        //self.pageViewController.view.frame = CGRectMake(0, 30, self.view.frame.width, self.view.frame.size.height - 60)
        
        self.addChildViewController(self.testeViewController)
        self.view.addSubview(self.testeViewController.view)
        self.testeViewController.didMoveToParentViewController(self)
        
        
        
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
