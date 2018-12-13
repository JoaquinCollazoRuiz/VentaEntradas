import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {super.viewDidLoad()}
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        cell?.lbl.text = name[indexPath.row]
        cell?.price.text = price[indexPath.row]
        cell?.date.text = date[indexPath.row]
        cell?.img.image = UIImage(named: name[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.image = UIImage(named: name[indexPath.row])!
        vc?.name = name[indexPath.row]
        vc?.price = price[indexPath.row]
        vc?.date = date[indexPath.row]

        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
