//
//  APIManager.swift
//  Octopus
//
//  Created by Rana on 8/15/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import Foundation

open class APIManager {
    

    func postData(_ contenturl:String,postCompleted : @escaping (_ jsonDict:NSDictionary) -> ()) {
        
        let url = URL(string: contenturl)
        var request = URLRequest(url: url!)
        let session = URLSession.shared
        request.httpMethod = "POST"
        // params dictionary
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
    
    func taskForPOSTMethod(_ method: String, parameters: [String:AnyObject], jsonBody: [String], completionHandlerForPOST: @escaping (_ result: AnyObject?, _ error: NSError?) -> Void) -> URLSessionDataTask {
        
        let url = URL(string: method)
        var request = NSMutableURLRequest(url: url!)
        let session = URLSession.shared
        request.httpMethod = "POST"
        
        let params = ["email" :jsonBody[0] , "password":jsonBody[1]] as Dictionary<String, String>
        
        
        request.httpBody = try! JSONSerialization.data(withJSONObject: params, options: [])
//        /* 1. Set the parameters */
//        var parametersWithApiKey = parameters
//        parametersWithApiKey[ParameterKeys.ApiKey] = Constants.ApiKey as AnyObject?
//        
//        /* 2/3. Build the URL, Configure the request */
//        let request = NSMutableURLRequest(url: tmdbURLFromParameters(parametersWithApiKey, withPathExtension: method))
//        request.httpMethod = "POST"
        
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.httpBody = jsonBody.data(using: String.Encoding.utf8)
        
        /* 4. Make the request */
        let task = session.dataTask(with: request as URLRequest) { (data, response, error) in
            
            func sendError(_ error: String) {
                print(error)
                let userInfo = [NSLocalizedDescriptionKey : error]
                completionHandlerForPOST(nil, NSError(domain: "taskForGETMethod", code: 1, userInfo: userInfo))
            }
            
            /* GUARD: Was there an error? */
            guard (error == nil) else {
                sendError("There was an error with your request: \(error!)")
                return
            }
            
            /* GUARD: Did we get a successful 2XX response? */
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, statusCode >= 200 && statusCode <= 299 else {
                sendError("Your request returned a status code other than 2xx!")
                return
            }
            
            /* GUARD: Was there any data returned? */
            guard let data = data else {
                sendError("No data was returned by the request!")
                return
            }
            
            /* 5/6. Parse the data and use the data (happens in completion handler) */
//            self.convertDataWithCompletionHandler(data, completionHandlerForConvertData: completionHandlerForPOST)
        }
        
        /* 7. Start the request */
        task.resume()
        
        return task
    }
    
}
