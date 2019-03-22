//
//  ColorsViewController.swift
//  Color Picker
//
//  Created by Brian Cox on 3/21/19.
//  Copyright © 2019 Brian Cox. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var colors = [Color(name: "Red", uiColor: UIColor.red),
                  Color(name: "Orange", uiColor: UIColor.orange),
                  Color(name: "Yellow", uiColor: UIColor.yellow),
                  Color(name: "Green", uiColor: UIColor.green),
                  Color(name: "Blue", uiColor: UIColor.blue),
                  Color(name: "Purple", uiColor: UIColor.purple)]
    
    @IBOutlet weak var colorPickerView: UIPickerView!
    @IBOutlet weak var colorLabel: UILabel!
    
    func numberOfComponents(in colorPickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ colorPickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].name
        view.backgroundColor = colors[row].uiColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        colorPickerView.delegate = self
        colorPickerView.dataSource = self
        
        let initialRow = 0
        colorPickerView.selectRow(initialRow, inComponent: 0, animated: false)
        colorLabel.text = colors[initialRow].name
        view.backgroundColor = colors[initialRow].uiColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
