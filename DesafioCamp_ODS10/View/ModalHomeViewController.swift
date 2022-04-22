//
//  ModalHomeViewController.swift
//  DesafioCamp_ODS10
//
//  Created by Ricardo Camillo Avakian on 16/04/22.
//

import UIKit

class ModalHomeViewController: UIViewController {
    
    @IBOutlet weak var viewModal: UIView!
    @IBOutlet weak var saibaMaisLink: UILabel!
    @IBOutlet weak var pendenteButton: UIButton!
    @IBOutlet weak var recebidoButton: UIButton!
    @IBOutlet weak var solicitadoButton: UIButton!
    private lazy var line = UIBezierPath()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModal.layer.cornerRadius = 20
        viewModal.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        pendenteButton.cornerRadius = 19
        recebidoButton.cornerRadius = 19
        solicitadoButton.cornerRadius = 19
        saibaMaisLink.attributedText = NSMutableAttributedString(string: "Saiba mais", attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue, NSAttributedString.Key.kern: 0.84])
        
    }
    
    
    
    private func graph() {
        line.move(to: .init(x: 20, y: 315))
    }
    
    @IBAction func recebidoButton(_ sender: Any) {
    }
    
    @IBAction func pendenteButton(_ sender: Any) {
    }
    
    @IBAction func solicitadoButton(_ sender: Any) {
    }
    
    @IBAction func buttonCloseModal(_ sender: Any) {
    }
}
