def get_kata(val)
    if val % 3 == 0 then
        return "mined"
    elsif val % 5 == 0 then
        return "minds"
    end
    val
end