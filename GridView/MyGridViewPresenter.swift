//
//  MyGridViewPresenter.swift
//  GridView
//
//  Created by Rokon Uddin on 4/5/17.
//  Copyright © 2017 Rokon Uddin. All rights reserved.
//

import UIKit
let items = [
    
    
    Hadith(narrator: "in the parking lot this new fallen snow- much of it Reservedlot this new fallen snow- much of it Reserved", hadith: "the scent of spring each time you're passing by - midwinter's daydream the scent of spring each time you're passing by - midwinter's daydream the scent of spring each time you're passing by - midwinter's daydreamthe scent of spring each time you're passing by - midwinter's daydream", hadithArabic: "outside t parking lot this new fallen snow- much of it Reservedlink fence deer tracks in the deer in the parking lot this new fallen snow- much of it Reserved park along the chainlink fence deer tracks in the snow", reference: "A haiku critic deflowering* a daisy - haiku... not haiku fdfas |", footNote: "sun breaki parking lot this new fallen snow- much of it Reservedlink fence deer tracks in tng through white plumage brighter six little egrets"),
    Hadith(narrator: "in the p parking lot this new fallen snow- much of it Reservedlink fence deer tracks in tarking lot this new fallen snow- much of it Reserved", hadith: "the scent of spring each time you're passing by - midwinter's daydream", hadithArabic: "outside the deer park along the chainlink fin the parking lot this new fallen snow- much of it Reservedence deer tracks in the snow", reference: "A haiku critic deflowering* a daisy - haiku... not haiku..asd f| ", footNote: "sun breaking through white plumage brighter six little egrets"),
    Hadith(narrator: "in the parking lot this new fallen snow- much of it Reserved", hadith: "the scent of spring each time you're passing by - midwinter's daydream", hadithArabic: "outsin the parking lot this new fallen snow- much of it Reservedide the deer park along the chainlink fence deer tracks in the snow", reference: "A haiku critic deflowering* a daisy - haiku... not haiku..asdf f asdf sadf sf|", footNote: "sun breaking through white plumage brighter six little egrets"),
    Hadith(narrator: "in the parking lot this new fallen snow- much of it Reserved", hadith: "the scent of spring each time you're passing by - midwinter's daydream", hadithArabic: "outsidin the parking lot this new fallen snow- much of it Reservede the deer park along the chainlink fence deer tracks in the snow", reference: "A haiku critic deflowering* a daisy - haiku... not haiku..asdf sdf safd fds a|", footNote: "sun brthrough white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egretseakinin the parking lot this new fallen snow- much of it Reservedg through white plumage brighter six little egrets"),
    Hadith(narrator: "in the parking lot this new fallen snow- much of it Reserved", hadith: "sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets ", hadithArabic: "outside the deer park along the chainlink fence deer tracks in the snow", reference: "A haiku critic deflowering* a daisy - haiku... not haiku..asdf sf sa fs| sdfsa | ", footNote: "sun breaking through white plumage brighter six little egrets"),
    Hadith(narrator: "in thin the parking lot this new fallen snow- much of it Reservede parking lot this new fallen snow- much of it Reserved", hadith: "sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets  sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets rokon" , hadithArabic: "outside the deer park along the chainin the parking lot this new fallen snow- much of it Reservedlink fence deer tracks in the snow", reference: "A haiku critic deflowering* adfas df sadfs a | dfasdfs afdfsadf safsdfsaf sdfdsf seawfsfsdfsdafsadfsdf sdfsda asfsdfsaf sdfs|", footNote: "sun breaking through white plumage brighter six little egrets"),
    Hadith(narrator: "in the parking lot this new fallen snow- much of it Reserved", hadith: "the scent of sp parking lot this new fallen snow- much of it Reservedlink fence deer tracks in tring each time you're passing by - midwinter's daydream", hadithArabic: "outside the deer park along the chainlink fence deer tracks in the snow", reference: "A haiku critic deflowering* a daisy - haiku... notasdf ft43t wewr wewrt e4t ewfrsdfwesr  haiku |", footNote: "sun breaking through white plumage brighter six little egrets"),
    Hadith(narrator: "in the parking lot this new fallen snow- much of it Reserved", hadith: "the scent of spring each time you're passing by - midwinter's daydream", hadithArabic: "outside the deer park along the chainlink fence deer tracks in the snow", reference: "A haiku critic deflowering* a daisy - haiku... not haikuasdf sdfsdf sdf sdfsd f sdyhte derr fgterwt43we tertfgerte4 t4t54 t45t4t", footNote: "sun breathrough white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets king through white plumage brighter six little egrets"),
    Hadith(narrator: "in the  parking lot this new fallen snow- much of it Reservedlink fence deer tracks in tparking lot this new heavy showers the cold front passes a flux of starlings fallen snow- much of it Reserved", hadith: "the scent of spring each time youre passing by - midwinter's daydream", hadithArabic: "outside t parking lot this new fallen snow- much of it Reservedlink fence deer tracks in the deer park along the chainlink fence deer tracks in the snow", reference: "A haiku critic deflowering* a daisy - haiku... not haiku.. fasdf |", footNote: "through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets  through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets"),
    Hadith(narrator: "in t p parking lot this new fallen snow- much of it Reservedlink fence deer tracks in tarking lot this new fallen snow- much of it Reservedlink fence deer tracks in the parking lot this new fallen snow- much of it Reserved", hadith: "the scent parking lot this new fallen snow- much of it Reservedlink fence deer tracks in t of spring each time you're passing by - mi parking lot this new fallen snow- much of it Reservedlink fence deer tracks in tdwinter's daydream", hadithArabic: "outside the deer park along the chainlink fence deer tracks in the snow heavy showers the cold front passes a flux of starlings", reference: "A haiku critic  parking lot this new fallen snow- much of it Reservedlink fence deer tracks in tdeflowering* a daisy - haiku... not haiku..dgsdf  |", footNote: "sun breaking through white plumage brighter six little egrets"),
    Hadith(narrator: "in the parking lot this new fallen snow- much of it Reserved", hadith: "the scent of spring each time you're passing by - midwinter's daydream", hadithArabic: "outside the deer park along the chainlink fence deer tracks in the snow", reference: "A haiku critic deflowering* a daisy - haiku... not haiku |", footNote: "sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets sun breaking through white plumage brighter six little egrets ")]

class MyGridViewPresenter: GridViewPresenter {
    
    
    
    
    var didSelectItem:((_ item: Hadith?, _ indexPath: IndexPath) -> Void)?
    
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
        cell.configure(hadith: items[indexPath.row])
        
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
