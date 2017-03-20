//
//  ViewController.swift
//  SpacePizza
//
//  Created by Jim Campagno on 1/8/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//
  
import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var planetPickerView: UIPickerView!
    @IBOutlet weak var costLabel: UILabel!
    
    var selectedPlanet = Planet.mercury
    let franksPizza = PizzaService(name: "Franks Pizza")

    override func viewDidLoad() {
        super.viewDidLoad()
        planetPickerView.dataSource = self
        planetPickerView.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Planet.all.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let planet = Planet.all[row]
        return planet.displayName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPlanet = Planet.all[row]
        updateCost()
    }
    
    @IBAction func lowSpaceJunkChange(_ sender: Any) {
        franksPizza.spaceJunk = .low
        updateCost()
    }
    
    @IBAction func mediumSpaceJunkChange(_ sender: Any) {
        franksPizza.spaceJunk = .medium
        updateCost()
    }
    
    @IBAction func highSpaceJunkChange(_ sender: Any) {
        franksPizza.spaceJunk = .high
        updateCost()
    }

    func updateCost() {
        let cost = franksPizza.deliveryCharge(for: selectedPlanet)
        let costText = "$\(cost)0"
        costLabel.text = costText
    }

}
