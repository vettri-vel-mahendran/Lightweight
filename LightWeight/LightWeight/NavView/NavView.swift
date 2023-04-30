//
//  NavView.swift
//  LightWeight
//
//  Created by apple on 30/04/23.
//


import UIKit

class NavView: UIView {
    
    @IBOutlet weak var BGview: UIView!
    @IBOutlet weak var TitleLbl: UILabel!
    @IBOutlet var contentview: UIView!
    @IBOutlet weak var LeftBtn: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        CommonInit()
    }
    
    private func CommonInit(){
        Bundle.main.loadNibNamed("NavView", owner: self)
        addSubview(contentview)
        contentview.frame = self.bounds
        contentview.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    func Config(title: String, fcolor: UIColor?, font: UIFont, align: NSTextAlignment) {
        TitleLbl.text = title.localized()
        TitleLbl.textColor = fcolor ?? .black
        TitleLbl.textAlignment = align
        self.TitleLbl.font = font
    }
}
