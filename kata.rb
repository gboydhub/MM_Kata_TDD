def get_kata(val)
    if val <= 0 then; return 0; end
    if val % 15 == 0 then
        return "mined minds"
    elsif val % 3 == 0 then
        return "mined"
    elsif val % 5 == 0 then
        return "minds"
    end
    val
end

def kata_array()
    arr = Array.new(100)
    arr.each_with_index do |v, i|
        arr[i] = i
    end
    arr
end