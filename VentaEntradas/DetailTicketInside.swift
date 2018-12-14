import UIKit

class DetailTicketInside: UIViewController {
    //Variables de detalle de entradas compradas
    @IBOutlet weak var imageDetailInside: UIImageView!
    @IBOutlet weak var codeDetailInside: UILabel!
    @IBOutlet weak var dateDetailInside: UILabel!
    @IBOutlet weak var nanemDetailInside: UILabel!

    var imageInside = UIImage()
    var nameInside = ""
    var dateInside = ""
    var codeInside = ""

    override func viewDidLoad(){
    nanemDetailInside.text = nameInside
    dateDetailInside.text = dateInside
    codeDetailInside.text = codeInside
    imageDetailInside.image = imageInside
    }
}
