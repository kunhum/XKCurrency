//
//  XKCurrency.swift
//  Pods
//
//  Created by kenneth on 2023/5/25.
//

import Foundation

@objcMembers
public class XKCurrency: NSObject {
    
    lazy var jsonDecoder = JSONDecoder()
    
    public lazy var models: [CurrencyModel]? = {
        guard let path = Bundle.currency()?.path(forResource: "CurrencyData.json", ofType: nil),
              let jsonData = try? Data(contentsOf: URL(fileURLWithPath: path)) else { return nil }
        let models = try? self.jsonDecoder.decode([CurrencyModel].self, from: jsonData)
        models?.forEach({ model in
            model.image = UIImage.currency(name: model.iso ?? "")
        })
        return models
    }()
    
    public override init() {
        super.init()
    }
}

public extension XKCurrency {
    
}
