/*
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit
import RealmSwift

class MarksViewController: UITableViewController {

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    let alert = UIAlertController(title: "Security Zone", message: "Enter your access pin", preferredStyle: .alert)
    alert.addTextField { field in
      field.isSecureTextEntry = true
    }
    alert.addAction(UIAlertAction(title: "Enter", style: .default, handler: {[weak self] action in
      if let pin = alert.textFields?.first?.text {
        self?.loadMarks(pin)
      }
      }))
    present(alert, animated: true, completion: nil)
  }

  func loadMarks(_ pin: String) {

  }

  // MARK: - Table view data source

  //    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  //        return marks?.count ?? 0
  //    }
  //
  //    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
  //        let mark = marks![indexPath.row]
  //
  //        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
  //        cell.textLabel!.text = mark.mark
  //        cell.detailTextLabel!.text = mark.name
  //        return cell
  //    }

  // MARK: - Add results
  @IBAction func addMark(_ sender: AnyObject) {

  }
}
