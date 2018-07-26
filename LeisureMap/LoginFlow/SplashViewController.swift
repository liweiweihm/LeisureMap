//
//  SplashViewController.swift
//  LeisureMap
//
//  Created by stu1 on 2018/7/25.
//  Copyright © 2018年 tripim. All rights reserved.
//

import UIKit

class SplashViewController: UIAlertController {

    override func viewDidLoad() {
        super.viewDidLoad()
//
        let defaults : UserDefaults = UserDefaults.standard
        defaults.synchronize()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
            print(responseString)
        }
            
        })
    task.resume()
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
