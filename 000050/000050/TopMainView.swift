//
//  TopMainView.swift
//  000050
//
//  Created by 酒井典昭 on 2019/08/31.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMainViewDelegate: NSObjectProtocol{
    
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    var labels: [String] = ["あああああああああああああああああああああああああああああああああああああ","いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい","ううううううううううううううううううううううううううううううううううううううううううううう","えええええええええええええええええええええええええええええええええええええええええええええええええええ","おおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおお","あああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ","いいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいいい","うううううううううううううううううううううううううううううううううううううううううううううううううううう","えええええええええええええええええええええええええええええええ","おおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおお"]
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewCell")
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        collectionViewFlowLayout.estimatedItemSize = CGSize(width: collectionView.contentSize.width
            , height: 5)
    }
    
}

// MARK: - Protocol
extension TopMainView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell: TopMainCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewCell", for: indexPath)as? TopMainCollectionViewCell else {return UICollectionViewCell() }
        cell.label.text = labels[indexPath.row]
        return cell
    }
    
    
}

// MARK: - method
extension TopMainView {
    
}

