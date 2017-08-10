//
//  InitialViewController.swift
//  Radar-Pager
//
//  Created by David Cordero on 10.08.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit

class InitialViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    private var pages: [UIViewController] = []
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPages()
        dataSource = self
    }
    
    // MARK: UIPageViewControllerDataSource
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let index = pages.index(of: viewController), index > 0 else {
            return nil
        }
        return pages[index - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = pages.index(of: viewController), index < pages.count - 1 else {
            return nil
        }
        return pages[index + 1]
    }
    
    // MARK: Private
    
    private func setUpPages() {
        for pageIndex in 0...2 {
            let singlePageViewController = SinglePageViewController()
            singlePageViewController.pageIndex = pageIndex
            pages.append(singlePageViewController)
        }
        
        guard let firstPage = pages.first else { return }
        setViewControllers([firstPage], direction: .forward, animated: true, completion: nil)
    }
}

