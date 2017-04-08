//
//  DynamicHeightLayout.swift
//  GridView
//
//  Created by Rokon Uddin on 4/8/17.
//  Copyright © 2017 Rokon Uddin. All rights reserved.
//

import UIKit

protocol DynamicHeightLayoutDelegate: class {
    func collectionView(_ collectionView: UICollectionView, columnWidth: CGFloat, heightForItemAt indexPath: IndexPath) -> CGFloat
}

class DynamicHeightLayout: UICollectionViewLayout {
    
    /// Required delegate
    weak var delegate: DynamicHeightLayoutDelegate!
    var numberOfColumns = 1
    
    /// Padding around each cell
    var cellPadding: CGFloat = 8
    
    fileprivate var cache = [UICollectionViewLayoutAttributes]()
    fileprivate var contentHeight: CGFloat = 0
    
    fileprivate var contentWidth: CGFloat {
        get {
            let insets = collectionView!.contentInset
            return collectionView!.bounds.width - (insets.left + insets.right)
        }
    }
    
    override func invalidateLayout() {
        super.invalidateLayout()
        
        contentHeight = 0
        cache = []
    }
    
    override var collectionViewContentSize : CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }
    
    override func prepare() {
        if cache.isEmpty {
            
            let columnWidth = contentWidth / CGFloat(numberOfColumns)
            
            var xOffsets = [CGFloat]()
            for column in 0..<numberOfColumns {
                xOffsets.append(CGFloat(column) * columnWidth)
            }
            
            var yOffsets = [CGFloat](repeating: 0, count: numberOfColumns)
            
            var column = 0
            for item in 0..<collectionView!.numberOfItems(inSection: 0) {
                let indexPath = IndexPath(item: item, section: 0)
                let height = delegate.collectionView(collectionView!, columnWidth: columnWidth, heightForItemAt: indexPath)
                let frame = CGRect(x: xOffsets[column], y: yOffsets[column], width: columnWidth, height: height)
                let frameWithInserts = frame.insetBy(dx: cellPadding, dy: cellPadding)
                
                let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
                attributes.frame = frameWithInserts
                cache.append(attributes)
                contentHeight = max(contentHeight, frame.maxY)
                yOffsets[column] = yOffsets[column] + height
                column = (column >= (numberOfColumns - 1)) ? 0 : (column + 1)
            }
            
        }
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        var layoutAtributes = [UICollectionViewLayoutAttributes]()
        
        for attr in cache {
            if attr.frame.intersects(rect) {
                layoutAtributes.append(attr)
            }
        }
        
        return layoutAtributes
    }
}
