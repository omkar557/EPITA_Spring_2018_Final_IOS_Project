//
//  SecondViewController.swift
//  TestApp
//
//  Created by epita on 04/04/2018.
//  Copyright © 2018 NOTNULL. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var l1: UILabel!
    
    @IBOutlet weak var textArea: UITextView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var instance : Maps?
    
    override func viewDidLoad(){
        super.viewDidLoad()

        l1.text = instance?.mapname
        textArea.text=instance?.description
        
        let image = UIImage(named: (instance?.image)!)
        imageView.image = image
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
