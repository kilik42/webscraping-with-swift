//
//  ViewController.swift
//  webcraping
//
//  Created by marvin evins on 3/29/19.
//  Copyright © 2019 fulldevdesign. All rights reserved.
//

import UIKit
import SwiftSoup

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do {
            
            let html = "<!DOCTYPE html><html><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width\"><title>JS Bin</title></head><body><h1>learn </h1><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ullam odio, dolore veritatis. Officiis quod, laborum sed impedit ullam quas earum soluta provident autem odio quis voluptatem dicta? Eum, neque molestiae.</p> <ul><li>lor</li><li>lore</li></ul></body></html>"
            
            let doc: Document = try SwiftSoup.parse(html)
            
            let p :  Element = try doc.select("p").first()!
            
            print(try p.text())
            
            let a : Element = try doc.select("a").first()!
            print( try a.text())
            
            let link: String = try a.attr("href")
            let text: String = try a.text()
            
            
        } catch Exception.Error(type: let type, Message: let message) {
            print(type)
            print(message)
        }catch{
            print("")
        }
        
    }

    


}

