//
//  ViewController.swift
//  WorkWithNavigationController
//
//  Created by Александр Уткин on 10.06.2021.
//

import UIKit

class ViewController: UIViewController {

    //ссылка на сториборд
    let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func toGreenScene(_ sender: Any) {
        let greenVC = storyboardInstance.instantiateViewController(identifier: "GreenVC")
        self.navigationController?.pushViewController(greenVC, animated: true)
    }
    
    @IBAction func toYellowScene(_ sender: Any) {
        let yellowVC = storyboardInstance.instantiateViewController(identifier: "YellowVC")
        self.navigationController?.pushViewController(yellowVC, animated: true)
    }
    
    @IBAction func toRootScene(_ sender: Any) {
        let rootVC = storyboardInstance.instantiateViewController(identifier: "RedVC")
        self.navigationController?.pushViewController(rootVC, animated: true)
    }
    
    @IBAction func toPreviousFromRed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func toPreviousFromGreen(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func toPreviousFromYellow(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

