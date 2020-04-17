//
//  SignInViewController.swift
//  Roomy
//
//  Created by Mohamed Mostafa Fawzi on 4/17/20.
//  Copyright © 2020 Mohamed Mostafa Fawzi. All rights reserved.
//

import UIKit
import Alamofire

class SignInViewController: UIViewController {
    

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func signIn(_ sender: Any) {
        let username = userName.text!
        let password = self.password.text!
        
        signin(username: username, password: password)
        
    }
    
    // MARK: - Networking
    
    // Making the request
    func signin(username: String, password: String) {
        guard let url = URL(string: "https://roomy-application.herokuapp.com/auth/login") else { return }
        
        let parameters = [
            "email": username,
            "password": password
        ]
        
        AF.request(url, method: .post, parameters: parameters).responseData { (response) in
            
            switch response.result {
            case .success(let data):
                print(data)
                
            // Parsing
                let decoder = JSONDecoder()
                do {
                let signInResponse = try decoder.decode(SignIn.self, from: data)
                    print(signInResponse.auth_token!)
                } catch {
                    print("error!")
                }
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
