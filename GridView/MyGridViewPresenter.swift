//
//  MyGridViewPresenter.swift
//  GridView
//
//  Created by Rokon Uddin on 4/5/17.
//  Copyright © 2017 Rokon Uddin. All rights reserved.
//

import UIKit

class MyGridViewPresenter: GridViewPresenter {
    
    let items = [
        "in the parking lot this new fallen snow- much of it Reserved",
        "the scent of spring each time you're passing by - midwinter's daydream",
        "A mocking bird sings Moonlight silvers cat whiskers Dozing, she listens",
        "outside the deer park along the chainlink fence deer tracks in the snow",
        "on a receipt in shaky letters, times of early contractions",
        "A haiku critic deflowering* a daisy - haiku... not haiku..",
        "after the rain walking on moonlight",
        "my teapot, whistling like I can't hear it",
        "raising her voice trying to make him understand English",
        "the rain falls... feeding some things rusting others",
        "at night's end a small summer moon - field daisies",
        "making the tea the quiet of dawn - in a grey light",
        "slate grey sky in a shaft of sun gull's white underbelly",
        "heavy showers the cold front passes a flux of starlings",
        "sun breaking through white plumage brighter six little egrets",
        "as daylight fades beech leaves turning copper brown",
        "moments before dawn cool breeze in the unblackness anticipation",
        "the blind man crosses then amidst the crowd softly praises his dog",
        "unexpectedly the shadows from our past intruding",
        "empty street at noon on a school day a dog paces",
        "A bird in a cage of seventeen syllables singing happily",
        "split logs crackle while a winter wind howls into the darkness",
        "venetian blinds imprisoned bowl of red apples",
        "sparks rise in the night: even now the old tree still aspires to the stars",
        "in the shade of the fattest pumpkin sparrows pecking sand",
        "In desolate woods Amidst sea of fallen leaves Cry of distant crow",
        "abandoned house remains of a garden silent rain",
        "huge waves crashing along the pier mist rises",
        "Dividing the fog silently, tall pines",
        "in his jacket pocket a lemon candy from the funeral home"
    ]
    
    
    var didSelectItem:((_ item: String?, _ indexPath: IndexPath) -> Void)?
    
    func setupGridView(_ gridView: UICollectionView) {
        gridView.register(UINib(nibName: String(Class: CollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: CollectionViewCell.ID)
    }
    
    func nummberOfSections(in gridView: UICollectionView) -> Int {
        return 1
    }
    
    
    func gridView(_ gridView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func gridView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.ID, for: indexPath)
    }
    
    
    func gridView(_ gridView: UICollectionView, configureCell cell: UICollectionViewCell, at indexPath: IndexPath) {
        
        guard let cell = cell as? CollectionViewCell else { return }
        cell.configure(title: items[indexPath.row])
        
    }
    
    func gridView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let didSelectItem = didSelectItem else { return}
        didSelectItem(items[indexPath.row], indexPath)
    }
    
    
}


extension String {

    init(`Class`: AnyClass) {
        self = NSStringFromClass(Class).components(separatedBy: ".").last!
    }
}
