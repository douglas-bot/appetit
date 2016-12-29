//
//  ItemViewController.swift
//  Appetit
//
//  Created by Sense Infoway on 29/12/16.
//  Copyright © 2016 Douglas Taquary. All rights reserved.
//

import UIKit

protocol requestDelegate {
    func didPressedAddButton(at item: Item)
}

final class  ItemViewController: UIViewController {
    
    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    
    var item: Item?
}

extension ItemViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = item?.name ?? ""
    }
}


extension ItemViewController {
    func setupView() {
        let nameDescription = item?.name ?? ""
        name.text = nameDescription.isEmpty ? "Sem nome" : nameDescription
        
        let priveValue = item?.price ?? ""
        price.text = priveValue.isEmpty ? "❌" : priveValue
    }
}
