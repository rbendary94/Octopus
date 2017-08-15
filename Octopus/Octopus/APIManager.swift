//
//  APIManager.swift
//  Octopus
//
//  Created by Rana on 8/15/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import Foundation


public class APIManager {
    
    
    func postData(contenturl:String,postCompleted : @escaping (_ jsonDict:NSDictionary) -> ()) {
        
        let url = URL(string: contenturl)
        var request = URLRequest(url: url!)
        let session = URLSession.shared
        request.httpMethod = "POST"
        //        if(params != nil){
        //            request.httpBody =  self.getParam(params! as NSDictionary).data(using: String.Encoding.utf8.rawValue)
        //        }
        //        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        //        request.addValue("application/json", forHTTPHeaderField: "Accept")
        print("POST DATA Method called")
        let task = session.dataTask(with: request, completionHandler: {data, response, error -> Void in
            if(data == nil){
                // do something
                print("Errorrrrrrrrr")
            }else{
                _ = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves) as? NSDictionary
                    if let parseJSON = json {
                        postCompleted(parseJSON)
                    }
                    print("GOT DATA ######################")
                }
                catch{
                    print("Failure")
                }
            }
        })
        task.resume()
    }
    
    
    
}
