//
//  SegundoViewController.swift
//  Calculadora
//
//  Created by mac19 on 01/03/22.
//

import UIKit

class SegundoViewController: UIViewController {
    
    var valorIMC: String?
    var mensaje: String?
    var color: UIColor?
    var imagenMostrarTexto:String?
    
    
    
    @IBOutlet weak var valorMasa: UILabel!
    @IBOutlet weak var imagenMostrar: UIImageView!
    @IBOutlet weak var mostrarMensaje: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagenMostrar.image=UIImage(named: imagenMostrarTexto ?? "fondoimc2")
        valorMasa.text=valorIMC
        mostrarMensaje.text=mensaje
        self.view.backgroundColor = color;

    }
    

    @IBAction func calcularNuevo(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
