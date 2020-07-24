//
//  SecondViewController.swift
//  Storyboard Login API
//
//  Created by krish on 7/7/20.
//  Copyright © 2020 krish. All rights reserved.
//
/*
import UIKit
import Alamofire

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var table: UITableView!
    var animalArray = ["bulbasaur", "bulbasaur", "bulbasaur", "bulbasaur"]
    
    let posts = [
        "Hello",
        "Foo",
        "Bar"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        fetchData()
        // Do any additional setup after loading the view.
    }
    //add a loading screen (indicator)
    //data model classes
    //decoded+encoder (json parsing) or serialization
    //research on podfile verisoning
    //swift packages for alamofire
    //diff fonts for table
    //do the same project in swiftui
    //closure (callbacks)
    //detailed screen
    //URLSession(instead of alamofire)
   
    func fetchData(){
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon") else {
            print("Failed to create a URL from the string.")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching data: \(error.localizedDescription)")
                return
            }
            guard let data = data else {
                print("No data")
                return
            }

            let decoder = JSONDecoder()

            do {
                let decoded = try decoder.decode([Post].self, from: data)
                print(decoded[0].name)
            } catch {
                print("Failed to decode data: \(error.localizedDescription)")
            }
        }

        task.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)

              let post = posts[indexPath.row]
              cell.textLabel?.text = post

              return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
    }
}
*/
