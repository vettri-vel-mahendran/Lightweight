//
//  MetalPriceVC.swift
//  LightWeight
//
//  Created by apple on 30/04/23.
//

import UIKit

struct User: Decodable {
    let id: Int
    let name: String
    let username: String
}
class MetalPriceVC: UIViewController {
    
    @IBOutlet weak var NavView: NavView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigNavView()
        
        let urlstr = ""
        URLSessionManger.shared.request(urlstr, method: .get) { (result: Result<[User], Error>) in
            switch result {
            case .success(_):
                print("")
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
            }
        }
    }
    
    func ConfigNavView(){
        self.NavView.Config(title: "Metal Price", fcolor: .black, font: APP_TITLE_FONT, align: .left)
        self.NavView.LeftBtn.addTapGestureRecognizer {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
