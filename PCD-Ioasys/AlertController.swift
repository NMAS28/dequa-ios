//
//  AlertController.swift
//  PCD-Ioasys
//
import UIKit
import Foundation


extension UIAlertController{
    class func alert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default){
            (result: UIAlertAction) -> Void in
        })
        UIApplication.shared.windows.first(where: {$0.isKeyWindow})?.rootViewController?.present(alert, animated: true, completion: nil)
    }
}
