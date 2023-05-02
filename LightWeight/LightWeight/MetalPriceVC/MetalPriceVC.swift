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
    @IBOutlet weak var popUpButtonStates: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigNavView()
        
        setPopUpButton()
        
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
   
    func setPopUpButton(){
        
        // Here are my Array with countries name. It's works fine.
        let countries = ["INd", "feve", "efvef", "erev", "efvef"]
        
        let optionClosure = {(action: UIAction) in
            print(action.title)
        }
        
        for country in countries{
        UIAction(title: country, state: .off, handler: optionClosure)
        }

        
        // In this part I want to fetch the countries array. Now it's a static menu!
        popUpButtonStates.menu = UIMenu(children: [
            UIAction(title: "Country 1", state: .off, handler: optionClosure),
            UIAction(title: "Country 2", state: .on, handler: optionClosure),
            UIAction(title: "Country 3", state: .off, handler: optionClosure),
            UIAction(title: "Country 4", state: .off , handler: optionClosure)
        ])
        
        popUpButtonStates.showsMenuAsPrimaryAction = true
        popUpButtonStates.changesSelectionAsPrimaryAction = true
        
    }
}

