//
//  SinglePageViewController.swift
//  Radar-Pager
//
//  Created by David Cordero on 10.08.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit

final class SinglePageViewController: UIViewController {
    
    var pageIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch pageIndex {
        case .some(0):
            view.backgroundColor = UIColor.brown
        case .some(1):
            view.backgroundColor = UIColor.yellow
        case .some(2):
            view.backgroundColor = UIColor.red
        default:
            break
        }
    }
}
