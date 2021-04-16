//
//  CalculateModel.swift
//  Kadai1CocoaMVCTatsuya
//
//  Created by 坂本龍哉 on 2021/04/15.
//

import Foundation

protocol CalculateModelDelegate : AnyObject {
    func calculateModel(_ calculateModel: CalculateModel, didCalculateResult result: Int)
}

class CalculateModel {
    weak var delegate: CalculateModelDelegate?
    
    func sum(_ numberArray: [Int]) -> Int {
        let result = numberArray.reduce(0, { $0 + $1 })
        delegate?.calculateModel(self, didCalculateResult: result)
        return result
    }
}
