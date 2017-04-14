//
//  ViewController.swift
//  PartyApp
//
//  Created by Noi-Ariella Baht Israel on 3/29/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "http://i.amz.mshcdn.com/5TdAGqehvdzAwZZVR1oSGVYJJ_0=/950x534/filters:quality(90)/https%3A%2F%2Fblueprint-api-production.s3.amazonaws.com%2Fuploads%2Fcard%2Fimage%2F116726%2Fimage1__2_.JPG", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lights Out")
        
        let p2 = PartyRock(imageURL: "https://lastfm-img2.akamaized.net/i/u/ar0/917a0f7cfe744e17cee6875d4d0f6280", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/notRHEOEzZQ/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1w9DiGlZksU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Let's Get Ridiculous")
        
        let p4 = PartyRock(imageURL: "http://4.bp.blogspot.com/-n1LIKS3pH-4/U_xuH4X693I/AAAAAAAAMIQ/dDJo_2AKHis/s1600/Redfoo%2Bofficial%2BPR%2Bshot%2BAug%2B14.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xGiBiHocSZM?list=PLtM4rw7sjPKVY7HSuwP-zVhHpu5XyzWKo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "New Thang")
        
        let p5 = PartyRock(imageURL: "http://www.latestsongsnews.com/wp-content/uploads/2012/08/i-am-sexy-and-i-know-it-lmfao-song-2012.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wyx6JDQCslE?list=PLtM4rw7sjPKVY7HSuwP-zVhHpu5XyzWKo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "New Thang")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        
        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>"
        
        tableView.delegate = self
        tableView.dataSource = self
       
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        }else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}

