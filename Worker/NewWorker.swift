//
//  NewWorker.swift
//  LeisureMap
//
//  Created by stu1 on 2018/7/26.
//  Copyright © 2018年 tripim. All rights reserved.
//

import Foundation
protocol AsynRequestDelegate {
    func receivedResponse(_sender:AsyncRequestWorker, responseString:String,tag:Int )
}
class AsyncRequestWorker {
    var responseDelegate : AsynRequestDelegate?
    fuc getResponse(from :String,tag:Int) ->Void {
    let from = "http://score.azurewebsites.net/api/version/\( String(describing: appVersion))"
    let url = URL(string: from)!
    let request = URLRequest(url: url)
    let config =URLSessionConfiguration.default
    let session = URLSession(configuration: cofig)
    let task = session.dataTask(with: request, completionHandler: { (data, reponse, error) in
    let httpResponse = response as! HTTPURLResponse
    let statusCode = httpResponse.statusCode
    if( 200 == statusCode)
    let dataString = NSString(data: data!, encoding:  String.Encoding.utf8.rawValue)
    let responseString = String( dataString! )
    
    self.responseDelegate?.receivedResponse(self, responseString:responseString)
    print(responseString)
    }

    })
    task.resume()

    }
    <#requirements#>
}
