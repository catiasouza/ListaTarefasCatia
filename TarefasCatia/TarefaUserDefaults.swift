

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefa"
    var tarefas: [String] = []
    
    //REMOVER ATRAVES DO DELETE
    func remover(indice: Int) {
        
        tarefas = listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    func salvar(tarefa: String){
        
        //RECUPERAR TAREFA JA SALVA
        tarefas = listar()
        
        //SALVAR TAREFA
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    func listar() -> Array<String> {
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil{
            return dados as! Array<String>
        }else{
            return []
        }
    }
}
