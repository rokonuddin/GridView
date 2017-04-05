//
//  GridView.swift
//  GridView
//
//  Created by Rokon Uddin on 4/5/17.
//  Copyright © 2017 Rokon Uddin. All rights reserved.
//

import UIKit

protocol GridViewPresenter {
    func setupGridView(_ gridView: UICollectionView)
    func nummberOfSections(in gridView: UICollectionView) -> Int
    func gridView(_ gridView: UICollectionView, numberOfItemsInSection section: Int ) -> Int
    func gridView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    func gridView(_ gridView:UICollectionView,  configureCell cell: UICollectionViewCell, at indexPath:IndexPath)
    func gridView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
}


class GridView: UIView {

    struct Appearence {
        let insets: UIEdgeInsets
        let cellSpacing: CGFloat
        let cellsPerLine: UInt
        let cellHeight: CGFloat?
        
        init(insets: UIEdgeInsets, cellSpacing: CGFloat, cellsPerLine: UInt, cellHeight: CGFloat? = nil) {
            self.insets = insets
            self.cellSpacing = cellSpacing
            self.cellsPerLine = cellsPerLine
            self.cellHeight = cellHeight
        }
    }
    
    var appearence = Appearence(insets: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10), cellSpacing: 10, cellsPerLine: 7)
    
    var presenter: GridViewPresenter? {
        didSet {
            presenter?.setupGridView(collectionView)
            collectionView.reloadData()
        }
    }
    
    var collectionView: UICollectionView!
    
    
    private func commonInit() {
        if collectionView == nil {
            let layout = UICollectionViewFlowLayout()
            layout.minimumLineSpacing = appearence.cellSpacing
            layout.minimumInteritemSpacing = appearence.cellSpacing
            
            collectionView = UICollectionView(frame: bounds, collectionViewLayout: layout)
            collectionView.delegate = self
            collectionView.dataSource = self
            
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(collectionView)
            
            addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[collectionView]-0-|", options: .alignAllCenterY, metrics: nil, views: ["collectionView": collectionView]))
            addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[collectionView]-0-|", options: .alignAllCenterX, metrics: nil, views: ["collectionView": collectionView]))
            
            presenter?.setupGridView(collectionView)
        }
        collectionView.reloadData()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
}

extension GridView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter?.gridView(collectionView, didSelectItemAt: indexPath)
    }
}

extension GridView: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return presenter?.nummberOfSections(in: collectionView) ?? 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.gridView(collectionView, numberOfItemsInSection: section) ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let presenter = presenter else {
            return UICollectionViewCell()
        }
        
        let cell = presenter.gridView(collectionView, cellForItemAt: indexPath)
        presenter.gridView(collectionView, configureCell: cell, at: indexPath)
        
        return cell
    }
}

extension GridView: UICollectionViewDelegateFlowLayout {
    
    private func expectedCellWidth() -> CGFloat {
        let a = appearence
        let padding = a.insets.left + a.insets.right
        let cpl = CGFloat(a.cellsPerLine)
        let space = a.cellSpacing * (cpl - 1)
        return (bounds.width - padding - space) / cpl
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = expectedCellWidth()
        return CGSize(width: w, height: appearence.cellHeight ?? w)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return appearence.insets
    }
}









