import UIKit

class TableViewCellBuyTicket: UITableViewCell {
        
    @IBOutlet weak var nombreTicket: UILabel!
    @IBOutlet weak var lblBuyTicket: UILabel!
    @IBOutlet weak var fechaTicket: UILabel!
    @IBOutlet weak var imageTicket: UIImageView!
    
    override func awakeFromNib() {super.awakeFromNib()}
    override func setSelected(_ selected: Bool, animated: Bool) {super.setSelected(selected, animated: animated)}
}
