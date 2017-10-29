//
//  ViewController.swift
//  QRCodeGenerator
//
//  Created by Dheeraj on 28/10/17.
//  Copyright © 2017 Dheeraj Rathore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var qrCodeImageView : UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.generateQRCode()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func generateQRCode() {
        
        let qrCodeGeneratorObject = QRImageGenerator.init()
        
        let qrCodeImage = qrCodeGeneratorObject.generateQRImage(text: "Sample string")
        
        if  qrCodeImage != nil{
            
            self.qrCodeImageView.image = qrCodeImage
        }
        
    }

}

