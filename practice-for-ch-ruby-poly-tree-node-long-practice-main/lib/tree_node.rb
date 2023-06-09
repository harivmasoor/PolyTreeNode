class PolyTreeNode
    def initialize(value, children = [])
        @value = value
        @children = []
        @parent = nil
    end

    attr_reader :value, :children, :parent

    def parent=(node)
        @parent.children.delete(self) unless @parent.nil?
        @parent = node 
        @parent.children << self unless @parent.nil?
    end

    def add_child(child_node)
        child_node.parent = self    
    end

    def remove_child(child_node)
        if self.children.include?(child_node)
            child_node.parent = nil
        else
            raise
        end
    end

    def dfs(target)
        
    end

    def bfs(target)

    end
end

d = PolyTreeNode.new('d')
e = PolyTreeNode.new('e')
f = PolyTreeNode.new('f')
g = PolyTreeNode.new('g')
b = PolyTreeNode.new('b', [d,e])
c = PolyTreeNode.new('c', [f,g])
a = PolyTreeNode.new('a', [b,c])