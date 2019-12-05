var draft = [9,8,6,7,5,3,4,2,1,0,14,12,13]

func Bubble<T: Comparable>(arr: inout [T]) -> [T]{
    var sorted = false
    print(arr)
    while !sorted {
        sorted = true
        for i in 0..<arr.count - 1{
            if arr[i] > arr[i+1] {
                let tmp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = tmp
                sorted = false
            }
        }
    }
    return arr
}

print(Bubble(arr: &draft))
