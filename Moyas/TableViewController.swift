//
//  TableViewController.swift
//  Moyas
//
//  Created by User on 11/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit
import Moya

class TableViewController: UITableViewController {
    
    var questions = [Question]()
    let questionProvider = MoyaProvider<QuestionService>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        questionProvider.request(.readQuestion) { (result) in
            switch result {
            case .success(let response) :
                //let json = try! JSONSerialization.jsonObject(with: response.data, options: [])
                let json = try! JSONDecoder().decode([Question].self, from: response.data)
                //print(questions)
                self.questions = json
                //print(self.questions[0].question)
                self.tableView.reloadData()
                break
            case .failure(let error) :
                print(error)
                break
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        let question = questions[indexPath.row]
        cell.questionLabel.text = question.question
        cell.dateLabel.text = question.published_at
        
        return cell
    }
    
}
