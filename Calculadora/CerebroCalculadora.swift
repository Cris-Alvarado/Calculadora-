//
//  CerebroCalculadora.swift
//  Calculadora
//
//  Created by mac19 on 01/03/22.
//
import Foundation
import UIKit

struct CerebroCalculadora {
    var imc: IMC?
    
   mutating func calcularIMC(peso:Float, altura:Float) {
        let valorIMC=peso/(altura*altura)
    if(valorIMC<=18.5){
        imc=IMC(valor: valorIMC, mensaje: "Tienes bajo peso. Falta comer más", color: UIColor.purple, imagen: "bajo")
         
        }
    if(valorIMC>18.6 && valorIMC<=24.9){
        imc=IMC(valor: valorIMC, mensaje: "Estás en tu peso ideal. !Felicidades!", color: UIColor(named: "verde" ) ?? UIColor.green, imagen: "normal")
        }
    if(valorIMC>25 && valorIMC<=29.9)
        {
        imc=IMC(valor: valorIMC, mensaje: "Tienes sobrepeso", color: UIColor.orange, imagen: "sobrepeso")
        }
    if(valorIMC>30){
        imc=IMC(valor: valorIMC, mensaje: "Tienes obesidad :/", color: UIColor.red, imagen: "obecidad")
    }
    print("estoy llegando")
    }
    func retornarValor() -> String {
        let imcCon2Decimanles=String(format: "%.2f", imc?.valor ?? 0.0)
        return imcCon2Decimanles
    }
    func avisar() -> String {
        return imc?.mensaje ?? "sin mensaje"
    }
    func retornarColor() -> UIColor {
        return imc?.color ?? UIColor.white
    }
    func retornarImagen() -> String {
        return imc?.imagen ?? "fondoimc2"
    }
}

