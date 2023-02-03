//
//  ViewController.swift
//  Conversores
//
//  Created by Bruno on 02/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfvalue: UITextField!
    @IBOutlet weak var btUnit1: UIButton!
    @IBOutlet weak var btUnit2: UIButton!
    @IBOutlet weak var lbResult: UITextField!
    @IBOutlet weak var lbResultUnit: UILabel!
    @IBOutlet weak var lbUnit: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showNext(_ sender: UIButton) {
        switch lbUnit.text!{
            case "Temperatura":
                lbUnit.text = "Peso"
                btUnit1.setTitle("Kilograma", for: .normal)
                btUnit2.setTitle("Libra", for: .normal)
            case "Peso":
                lbUnit.text = "Moeda"
                btUnit1.setTitle("Real", for: .normal)
                btUnit2.setTitle("Dólar", for: .normal)
            case "Moeda":
                lbUnit.text = "Distância"
                btUnit1.setTitle("Metro", for: .normal)
                btUnit2.setTitle("Kilômetro", for: .normal)
            default:
                lbUnit.text = "Temperatura"
                btUnit1.setTitle("Celsius", for: .normal)
                btUnit2.setTitle("Farenheint", for: .normal)
            }
        convert(nil)
    }
    
    @IBAction func convert(_ sender: UIButton?) {
        if let sender = sender {
            if sender == btUnit1 {
                btUnit2.alpha = 0.5
            } else {
                btUnit1.alpha = 0.5
            }
            sender.alpha = 1.0
        }
        switch lbUnit.text! {
            case "Temperatura":
                calcTemperature()
            case "Peso":
                calcWeight()
            case "Moeda":
                calcCurrency()
            default:
                calcDistance()
        }
        view.endEditing(true)
        let result = Double(lbResult.text!)!
        lbResult.text = String(format: "%.2f", result)
        
    }
    
    func calcTemperature(){
        guard let temperature = Double(tfvalue.text!) else {return}
        if btUnit1.alpha == 1.0 {
            lbResultUnit.text = "Farenheint"
            lbResult.text = String(temperature * 1.8 + 32)
        } else {
            lbResultUnit.text = "Celsius"
            lbResult.text = String((temperature - 32) / 1.8)
        }
        
    }
    
    func calcWeight(){
        guard let weight = Double(tfvalue.text!) else {return}
        if btUnit1.alpha == 1.0 {
            lbResultUnit.text = "Libra"
            lbResult.text = String(weight / 2.2046)
        } else{
            lbResultUnit.text = "Quilos"
            lbResult.text = String(weight * 2.204)
        }
    }
    
    func calcCurrency(){
        guard let currency = Double(tfvalue.text!) else {return}
        if btUnit1.alpha == 1.0 {
            lbResultUnit.text = "Dólar"
            lbResult.text = String(currency / 5.11 )
        } else {
            lbResultUnit.text = "Real"
            lbResult.text = String(currency + 5.11)
        }
    }
    
    func calcDistance(){
        guard let distance = Double(tfvalue.text!) else {return}
        if btUnit1.alpha == 1.0 {
            lbResultUnit.text = "Kilômetro"
            lbResult.text = String(distance / 1000.0)
        } else {
            lbResultUnit.text = "Metros"
            lbResult.text = String(distance * 1000.0)
        }
    }
    
}



