//
//  ViewController.swift
//  GridView
//
//  Created by Rokon Uddin on 4/5/17.
//  Copyright © 2017 Rokon Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var gridView: GridView = {
        let gridView = GridView(frame: .zero)
        return gridView
    }()
    
    lazy var presenter: MyGridViewPresenter = {
        let presenter = MyGridViewPresenter()
        return presenter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        gridView.appearence = GridView.Appearence(insets: UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10), cellSpacing: 0, cellsPerLine: 1, cellHeight: 50)
        gridView.presenter = presenter
        
        presenter.didSelectItem = { item, indexPath in
            
        }
        
        gridView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(gridView)
        
        view.addConstraint(NSLayoutConstraint(item: gridView, attribute: .top, relatedBy: .equal, toItem: topLayoutGuide, attribute: .top, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: gridView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: gridView, attribute: .bottom, relatedBy: .equal, toItem: bottomLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: gridView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

