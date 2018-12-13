import UIKit

class ViewControllerItem2: UIViewController {

    @IBOutlet weak var tablaEntradas: UITableView!
    override func viewDidLoad() {super.viewDidLoad()}}

extension ViewControllerItem2: UITableViewDelegate, UITableViewDataSource{
    
    override func viewWillAppear(_ animated: Bool) {
        tablaEntradas.reloadData()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        loadDa()
        return codigoDeCompra.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellTicket = tableView.dequeueReusableCell(withIdentifier: "cellBuy", for: indexPath) as? TableViewCellBuyTicket
        cellTicket?.lblBuyTicket.text = codigoDeCompra[indexPath.row]
        cellTicket?.nombreTicket.text = nombreTiketArray[indexPath.row]
        cellTicket?.fechaTicket.text = fechaTiketArray[indexPath.row]
        cellTicket?.imageTicket.image = UIImage(named: nombreTiketArray[indexPath.row])
        return cellTicket!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let vcInside = storyboard?.instantiateViewController(withIdentifier: "DetailTicketInside") as?  DetailTicketInside
        vcInside?.imageInside = UIImage(named: nombreTiketArray[indexPath.row])!
        vcInside?.nameInside = nombreTiketArray[indexPath.row]
        vcInside?.codeInside = codigoDeCompra[indexPath.row]
        vcInside?.dateInside = fechaTiketArray[indexPath.row]
        
        self.navigationController?.pushViewController(vcInside!, animated: true)
    }
}
