//
//  InitialVC.swift
//  LightWeight
//
//  Created by apple on 30/04/23.
//

import UIKit

class InitialVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = MetalPriceVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}



