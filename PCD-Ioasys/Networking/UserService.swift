//
//  UserService.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 30/05/21.
//

import Foundation
import Alamofire
class UserService{
    var url: URL = URL(string: "https://dequa.herokuapp.com/users")!
    var disabilitiesUrl: URL = URL(string: "https://dequa.herokuapp.com/disabilities")!
    func registerUser(parameters: [String:Any]){
        AF.request(url,method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseJSON{
            response in
            switch(response.result){
            case .success:
                print (response)
                break
            case .failure:
                print(Error.self)
            }
        }
    }
    func listDeficiencies(completionHandler: @escaping ((_ response: [Disability]) -> Void)){
        AF.request(disabilitiesUrl,method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON{
            (response) -> Void in
            //completionHandler(response.response!)
            print(response.result)
            switch(response.result){
            case .success:
                var disabilityArray : [Disability] = []
                let JSON = response.value as! [[String: Any]]
                for item in JSON{
                    var disability = Disability(id: "", name: "")
                    if let id = item["id"] as? String{
                        disability.id = id
                    }
                    if let name = item["name"] as? String{
                        disability.name = name
                    }
                    disabilityArray.append(disability)
                }
                completionHandler(disabilityArray)
                break
            case .failure:
                print(Error.self)
                break
            }
        }
    }
}
