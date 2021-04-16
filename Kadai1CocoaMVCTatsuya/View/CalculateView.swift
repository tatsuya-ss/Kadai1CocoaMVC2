//
//  MainView.swift
//  Kadai1CocoaMVCTatsuya
//
//  Created by 坂本龍哉 on 2021/04/15.
//

import Foundation
import UIKit

class CalculateView : UIView {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
        setKeyboardType()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func loadNib() {
        let nib = UINib(nibName: "CalculateView", bundle: nil)
        if let view = nib.instantiate(withOwner: self,
                                      options: nil).first as? UIView {
            view.frame = self.bounds
            self.addSubview(view)
        }
    }
    
    private func setKeyboardType() {
        let textFieldArray = [
            textField1,
            textField2,
            textField3,
            textField4,
            textField5
        ]
        
        for text in textFieldArray {
            text?.keyboardType = .numberPad
        }
    }
}
