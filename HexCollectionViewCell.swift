//
//  HexCollectionViewCell.swift
//  Silverback
//
//  Created by Christian Otkjær on 22/10/15.
//  Copyright © 2015 Christian Otkjær. All rights reserved.
//

import UIKit
import Silverback

class HexCollectionViewCell: UICollectionViewCell
{
    let backgroundHexView = HexView()
    let selectedBackgroundHexView = HexView()
    
    private func setup()
    {
        backgroundHexView.hexBorderWidth = 3//.Absolute(3)
        backgroundView = backgroundHexView
        
        selectedBackgroundHexView.hexBorderWidth = 0// = .Absolute(0)
        selectedBackgroundView = selectedBackgroundHexView
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
}


