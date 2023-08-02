//
//  Analysis-VC.swift
//  TravaSearch
//
//  Created by DPI Student 037 on 7/27/23.
//

import UIKit

class Analysis_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func trip1(){
            let num1 = Double(amountFromMain)!
            if num1 <= 1000{
                amountLabel.text = "short trip"
            } else if num1 >= 1000 && num1 <= 5000{
                amountLabel.text = "average trip"
            }else{
                amountLabel.text = "long trip"
            }
        }
        
        func distanceOfCarRide(){
            let num1 = Double(amountFromMain)!
            let cost = num1 * 0.20
            let distance = cost / 0.73
            
            if amountLabel.text == "average trip" || amountLabel.text == "long trip"{
                distanceTraveled.text = "you can use a plane but the cost to get there should be no more than \(cost) dollars"
            }else if amountLabel.text == "short trip"{
                distanceTraveled.text = "the place you are going should be no farther than \(distance) miles"
            }
        }
        
        func place(){
            let num1 = Double(amountFromMain)!
            let cost = num1 * 0.40
            
            placeToStay.text = "the place you are staying on the trip should cost no more than \(cost) dollars"
        }
        
        func dayToDay(){
            let num1 = Double(amountFromMain)!
            let cost = num1 * 0.10
            
            dailies.text = "The food and transportation cost during the trip should be no more than \(cost) dollars"
        }
        
        func events(){
            let num1 = Double(amountFromMain)!
            let cost = num1 * 0.30
            
            event.text = "the cost of all the activities you do on the trip should be no more than \(cost) dollars"
        }

        trip1()
        distanceOfCarRide()
        place()
        dayToDay()
        events()
    }
    
    @IBOutlet var amountLabel: UILabel!
    @IBOutlet var distanceTraveled: UILabel!
    @IBOutlet var placeToStay: UILabel!
    @IBOutlet var dailies: UILabel!
    @IBOutlet var event: UILabel!
    

    var amountFromMain : String = ""
    
}
