//
//  DetailUserVC.swift
//  HomeWork-Otus-1
//
//  Created by Albert Fayzullin on 13.04.2022.
//

import UIKit

class DetailUserVC: UIViewController {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNameTitle: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var changeUserName: UIButton!
    @IBOutlet weak var copyLocationOutlet: UIButton!
    @IBOutlet weak var locationTitle: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var positionUserTitle: UILabel!
    @IBOutlet weak var positionUser: UILabel!
    
    var position: String?
    var firstname: String?
    var lastname: String?
    var address: String?
    var fullname: String?
    var isShowName = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImage.image = UIImage(named: "userImage")
        view.addSubview(userImage)
        
        userNameTitle.text = "User name"
        userNameTitle.font = UIFont.boldSystemFont(ofSize: 22)
        userName.text = fullname
        changeUserName.setTitle("Show firstname", for: .normal)
        
        locationTitle.text = "Address"
        locationTitle.font = UIFont.boldSystemFont(ofSize: 22)
        location.text = address
        
        positionUserTitle.text = "Present position"
        positionUserTitle.font = UIFont.boldSystemFont(ofSize: 22)
        positionUser.text = position
    }
    
    func showName() {
        userName.text = firstname
    }
    func showFullname() {
        userName.text = fullname
    }
    
    @IBAction func changeName(_ sender: UIButton) {
        isShowName = !isShowName
        if isShowName {
            showFullname()
            changeUserName.setTitle("Show firstname", for: .normal)
        } else {
            showName()
            changeUserName.setTitle("Show fullname", for: .normal)
        }
    }
    
    @IBAction func copyButtonAction(_ sender: UIButton) {
        UIPasteboard.general.string = location.text
    }
}


