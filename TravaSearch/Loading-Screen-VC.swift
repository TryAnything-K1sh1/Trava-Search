//
//  Loading-Screen-VC.swift
//  TravaSearch
//
//  Created by DPI Student 037 on 7/26/23.
//

import UIKit

class Loading_Screen_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBOutlet var amount: UITextField!
    
    
    @IBAction func toCostAnalysis(_ sender: Any) {
        performSegue(withIdentifier: "amountTransfer" , sender: nil)
    }// go to cost analysis tapped
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "amountTransfer"{
            let destVC = segue.destination as? Analysis_VC
            if let name = amount.text {
                destVC?.amountFromMain = name
            }
        }
    }
}
