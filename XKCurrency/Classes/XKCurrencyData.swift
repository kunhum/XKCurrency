//
//  XKCurrencyData.swift
//  Pods
//
//  Created by kenneth on 2023/6/6.
//

import Foundation

@objcMembers
public class CurrencyModel: NSObject, Decodable {
    
    enum CodingKeys: CodingKey {
        case name
        case symbol
        case iso
    }
    
    public var name: String?
    public var symbol: String?
    public var iso: String?
    public var image: UIImage?
    
}
