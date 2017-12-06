
import UIKit


func QuickSort(array localArray:inout[Int], lowValue low:Int ,highValue high: Int){
    
    if (low < high) {
        
        let p = partition(array: &localArray, lowValue: low, highValue: high)
        QuickSort(array: &localArray, lowValue: low, highValue: p-1)
        QuickSort(array: &localArray, lowValue: p+1, highValue: high)
        
    }
    
}

func partition(array localArray:inout[Int], lowValue low:Int ,highValue high: Int) -> Int {
    
    var i = low-1
    let toCompare = localArray[high]
    
    for j in low ... high-1{
        
        if ( localArray[j] <= toCompare ) {
            i+=1
            swipe(array: &localArray, firstValue: i, secondValue: j)
        }
        
    }
    swipe(array: &localArray, firstValue: high, secondValue: i+1)
    return i+1
}

func swipe(array localArray:inout[Int],firstValue i:Int , secondValue j:Int){
    
    let pivot = localArray[i]
    localArray[i] = localArray[j]
    localArray[j] = pivot
    
}



