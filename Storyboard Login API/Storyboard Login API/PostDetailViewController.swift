//
//  PostDetailViewController.swift
//

import UIKit

class PostDetailViewController: UIViewController {

    @IBOutlet weak var postDetailTextView: UITextView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var postId: Int?
    var post: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        postDetailTextView.text = post?.body
        fetchPost()
    }
    

    
    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: - Helpers
    
    private func fetchPost() {
        guard let postId = postId else { return }
        
        activityIndicator.startAnimating()
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = "jsonplaceholder.typicode.com"
        components.path = "/posts/\(postId)"
        
        guard let url = components.url else {
            print("Failed to create a URL")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
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
                self?.post = try decoder.decode(Post.self, from: data)
            } catch {
                print("Failed to decode data: \(error.localizedDescription)")
            }

            DispatchQueue.main.async {
                self?.postDetailTextView.text = self?.post?.body
                self?.activityIndicator.stopAnimating()
            }
        }
        task.resume()
    }
}
