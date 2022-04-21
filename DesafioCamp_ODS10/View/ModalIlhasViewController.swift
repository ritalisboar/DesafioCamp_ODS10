//
//  ModalIlhasViewController.swift
//  DesafioCamp_ODS10
//
//  Created by Rita Lisboa on 21/04/22.
//

import UIKit

class ModalIlhasViewController: UIViewController {

    @IBOutlet weak var modalProgress: ModalIlhas!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        circularProgress.trackClr = UIColor.lightGray
        circularProgress.progressClr = UIColor(named: "DarkPink")
    }
    
    circularProgress.trackClr = UIColor.lightGray
    circularProgress.progressClr = UIColor(named: "DarkPink")
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
