require 'set'

def dijkstras(graph, source)
    distance={}

    graph.each do |k,v|
        graph[k].each {|m,v| distance[m]=Float::INFINITY}
    end

    distance[source] = 0;
    unvisited=Set.new(graph.keys)

    while unvisited.size > 0
        node= get_smallest_distance(unvisited, distance)
        unvisited.delete(node)
        graph[node].each do |k,v|
           dist= graph[node][k]  #distance from current node to neighbour
           total_distance= dist+ distance[node]  #a-> b is distance from a to a plus distance from a to b

           # if the current distance from a-> c = 3
           # but we found another route smaller than this make it your best route a-> c=2
           distance[k] = total_distance  if distance[k]> total_distance  
        end
    end
  
    distance
end

def get_smallest_distance(unvisited, distance)
# puts distance
    unvisited.to_a.inject  do  |min, node|
        # puts min
        if distance[min] < distance[node]
            min        
        else
            node
        end
    end
    
end
 


graph = {
    a: { c: 1, b: 7 },
    b: { a: 7, d: 12, e: 13 },
    c: { a: 1, d: 20, f: 4 },
    d: { b: 12, c: 20, e: 5 },
    e: { b: 13, d: 5, f: 9 },
    f: { c: 4, e: 9 }
}

p dijkstras(graph,:a)