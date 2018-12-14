import Foundation
//En esta clase tengo todas las variables que necesitaba usar en más de una clase y no me diese problemas al llamarla desde otra clase
var codigoDeCompra = [String]()
var fechaTiketArray = [String]()
var nombreTiketArray = [String]()
var name=["El silencio de los corderos","2 fast 2 furious","DJANGO","La la land","La noche del DEMONIO","Pactar con el Diablo","Ready player one","Star Wars"]
var price=["22$","12$","7$","9$","6$","4$","9$","12$"]
var date=["12/12/2018","14/12/2018","17/12/2018","21/12/2018","23/12/2018","25/12/2018","26/12/2018","31/12/2018"]
//Función que guarda los datos al comprar ticket
func save()
{
    let UserSave = UserDefaults.standard

    UserSave.set(codigoDeCompra, forKey: "codigoDeCompra")
    UserSave.set(fechaTiketArray, forKey: "fechaTiketArray")
    UserSave.set(nombreTiketArray, forKey: "nombreTiketArray")
}
//Al cargar la vista de tickets comprado me carga los datos guardados
func loadDa()
{
    let LoadData = UserDefaults.standard
    
    codigoDeCompra = LoadData.object(forKey: "codigoDeCompra") as! [String]
    fechaTiketArray = LoadData.object(forKey: "fechaTiketArray") as! [String]
    nombreTiketArray = LoadData.object(forKey: "nombreTiketArray") as! [String]
}
