import UIKit

class TableViewCellBuyTicket: UITableViewCell {
    //Variables de celda de entradas compradas
    @IBOutlet weak var nombreTicket: UILabel!
    @IBOutlet weak var lblBuyTicket: UILabel!
    @IBOutlet weak var fechaTicket: UILabel!
    @IBOutlet weak var imageTicket: UIImageView!
    
    override func awakeFromNib() {super.awakeFromNib()}
    override func setSelected(_ selected: Bool, animated: Bool) {super.setSelected(selected, animated: animated)}
}
