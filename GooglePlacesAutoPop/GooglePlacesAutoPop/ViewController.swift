//
//  ViewController.swift
//  GooglePlacesAutoPop
//
//  Created by James Syvertsen on 3/12/20.
//  Copyright © 2020 James Syvertsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addressAutoCompleteTextField: AddressAutoCompleteTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // get api key at the google developers site: https://developers.google.com/places/web-service/get-api-key
        addressAutoCompleteTextField.initialize(hostViewController: self, apiKey: "")
    }
}

// MARK: - UIPopoverPresentationControllerDelegate (phone only) -

extension ViewController: UIPopoverPresentationControllerDelegate {
    
    ///
    /// necessary for phone to preserve popover context
    /// not necessary nor invoked when running on tablet
    ///
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        
        return UIModalPresentationStyle.none // note the style is ".none" rather than ".popover"
    }
}
