
import UIKit


func QuickSort(array arreglo:inout[Int], lowValue low:Int ,highValue high: Int){
    
    if (low < high) {
        
        let p = partition(array: &arreglo, lowValue: low, highValue: high)
        QuickSort(array: &arreglo, lowValue: low, highValue: p-1)
        QuickSort(array: &arreglo, lowValue: p+1, highValue: high)
        
    }
    
}

func partition(array arreglo:inout[Int], lowValue low:Int ,highValue high: Int) -> Int {
    
    var i = low-1
    let toCompare = arreglo[high]
    
    for j in low ... high-1{
        
        if ( arreglo[j] <= toCompare ) {
            i+=1
            swipe(array: &arreglo, firstValue: i, secondValue: j)
        }
        
    }
    swipe(array: &arreglo, firstValue: high, secondValue: i+1)
    return i+1
}

func swipe(array arreglo:inout[Int],firstValue i:Int , secondValue j:Int){
    
    let pivote = arreglo[i]
    arreglo[i] = arreglo[j]
    arreglo[j] = pivote
    
}





