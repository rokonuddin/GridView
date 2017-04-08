//
//  CollectionViewCell.swift
//  GridView
//
//  Created by Rokon Uddin on 4/5/17.
//  Copyright © 2017 Rokon Uddin. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    static let ID = "CollectionViewCell"
    
    
    @IBOutlet weak var arabicLabel: UILabel?
    @IBOutlet weak var narratorLabel: UILabel!
    @IBOutlet weak var hadithLabel: UILabel!
    @IBOutlet weak var referenceLabel: UILabel!
    @IBOutlet weak var footNoteTitleLabel: UILabel!
    @IBOutlet weak var footNoteLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(hadith: Hadith) {
        arabicLabel?.text = nil//hadith.hadithArabic
        narratorLabel.text = hadith.narrator
        hadithLabel.text =  nil//hadith.hadith
        referenceLabel.text = hadith.reference
        footNoteLabel.text = hadith.footNote
        
        if arabicLabel?.text == nil {
           // arabicLabel?.removeFromSuperview()
        }
    }
    
    
    static func calculateHeightForHadith(_ hadith: Hadith, width: CGFloat) -> CGFloat {
        let horisontalOffsets: CGFloat = 16// + 115 + 8 + 18 // space to image + image width + space to image + space to container
        let labelsBlockWidth = width - horisontalOffsets
        let arabicLabel = UILabel()
        arabicLabel.text = nil//hadith.hadithArabic
        arabicLabel.numberOfLines = 0
        arabicLabel.preferredMaxLayoutWidth = labelsBlockWidth
        arabicLabel.font = UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightSemibold)
        
        let hadithLabel = UILabel()
        hadithLabel.text = nil// hadith.hadith
        hadithLabel.numberOfLines = 0
        hadithLabel.preferredMaxLayoutWidth = labelsBlockWidth
        hadithLabel.font = UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightSemibold)
        
        let narratorLabel = UILabel()
        narratorLabel.text = hadith.narrator
        narratorLabel.numberOfLines = 0
        narratorLabel.preferredMaxLayoutWidth = labelsBlockWidth
        narratorLabel.font = UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightSemibold)
        
        let footNoteLabel = UILabel()
        footNoteLabel.text = hadith.footNote
        footNoteLabel.numberOfLines = 0
        footNoteLabel.preferredMaxLayoutWidth = labelsBlockWidth
        footNoteLabel.font = UIFont.systemFont(ofSize: 14.0, weight: UIFontWeightSemibold)
        
        let referenceLabel = UILabel()
        referenceLabel.text = hadith.reference
        referenceLabel.numberOfLines = 0
        referenceLabel.preferredMaxLayoutWidth = labelsBlockWidth
        referenceLabel.font = UIFont.systemFont(ofSize: 12.0, weight: UIFontWeightSemibold)
        
        
        let arabicHeight = arabicLabel.intrinsicContentSize.height
        
        if arabicHeight == 0 {
            
        }
        let hadithHeight = hadithLabel.intrinsicContentSize.height
        let narratorHeight = narratorLabel.intrinsicContentSize.height
        let footNoteHeight = footNoteLabel.intrinsicContentSize.height
        let referenceHeight = referenceLabel.intrinsicContentSize.height
        
        let verticalOffsets: CGFloat = 40 + 16 + 24 + 16 + 16 + 16 + 21 + 16 + 8 + 50
        let labelHeight = 0 + 0 + narratorHeight + footNoteHeight + referenceHeight + verticalOffsets
        let height = labelHeight // Minimum cell height will be 80
        
        return height
    }
    
    
}



