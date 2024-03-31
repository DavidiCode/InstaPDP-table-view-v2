//
//  HomeViewController.swift
//  InstaPDP
//
//  Created by Akbar Ibodulloyev on 19/03/24.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var items : Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       initViews()
    }

    //MARK: - Method
    
    func initViews() {
        tableView.dataSource = self
        tableView.delegate = self
        setNavigationBar()
        
        items.append(Post(fullname: "Sherzod", user_img: "person1", firstPost_img: "post1", secondPost_img: "post2"))
        items.append(Post(fullname: "Malika", user_img: "person2", firstPost_img: "post3", secondPost_img: "post4"))
        items.append(Post(fullname: "Malika", user_img: "person2", firstPost_img: "post3", secondPost_img: "post4"))
        items.append(Post(fullname: "Sherzod", user_img: "person1", firstPost_img: "post1", secondPost_img: "post2"))
        
    }
    
    func setNavigationBar(){
            let camera = UIImage(named: "im_camera")
            let send = UIImage(named: "im_send")
            
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
            navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
            title = "Instagram"
            
        }
    
    //MARK: - Action
    
    @objc func leftTapped() {
        
    }
    
    @objc func rightTapped() {
        
    }
    
    //MARK: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let item = items[indexPath.row]
                    
            let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
                    
            cell.userFullNameLabel.text = item.fullname
            cell.userImageView.image = UIImage(named: item.user_img!)
            cell.postImageView1.image = UIImage(named: item.firstPost_img!)
            cell.postImageView2.image = UIImage(named: item.secondPost_img!)
                    
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 400
        }

}
