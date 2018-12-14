import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var ticketCode: UILabel!
    @IBOutlet weak var numEntradas: UITextField!
    @IBOutlet weak var btnCompra: UIButton!
    @IBOutlet weak var dateDetail: UILabel!
    @IBOutlet weak var priceDetail: UILabel!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBAction func onClickBuy(_ sender: Any) {buyTicket()}
    
    var image = UIImage()
    var name = ""
    var price = ""
    var date = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = name
        dateDetail.text = date
        priceDetail.text = price
        img.image = image
    }
    //Es la lógica del botón de compra, añado a unos arrays vacios la información de la celda para mostrarmelo mas alante en otra vista
    func buyTicket(){
        if btnCompra.isTouchInside && (!(numEntradas.text?.isEmpty)!)
        {
            let alert = UIAlertController(title: "Gracias por comprar entradas para ver \(name) ", message:
                "Esperemos que disfrutes del evento", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "ok", style:
                .cancel, handler: { (accion) in
                    self.ticketCode.isHidden = false
                    codigoDeCompra.append(self.randomString(length: 8))
                    fechaTiketArray.append(self.date)
                    nombreTiketArray.append(self.name)
                    self.ticketCode.text = "Tu código de compra es \(codigoDeCompra.last!)"
                    save()
            }))
            present(alert, animated: true, completion: nil)
        }
    }
    //Esta función es la encargada del código que se me genera al comprar una entrada
    func randomString(length: Int) -> String {
        
        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)
        
        var randomString = ""
        
        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        return randomString
    }
}
