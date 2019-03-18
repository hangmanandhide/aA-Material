class PolyTreeNode

  attr_reader :parent, :children, :value

  def initialize(value=1)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(name)
    if parent != nil
      parent.delete_child(self)
    end
    
    @parent = name

    if !name.nil?
      parent.children=self
    end

  end


  def add_child(child_node)
    child_node.parent=self
  end

  def children=(child_node)
    @children << child_node
  end

  def delete_child(child_node)
    @children.delete_if { |ele| ele == child_node }
  end

  def remove_child(child_node)
    if self.children.include?(child_node)
      child_node.parent = nil
    else
      raise "Error: Dat ain't yo babay!"
    end
  end

  def dfs(target_value)
    #basecase
    return self if target_value == self.value

    children.each do |child|
      node_check = child.dfs(target_value)

      return node_check if !node_check.nil?
    end
    nil
    #recursive method

  end

  def bfs(target_value)
    queue = Queue.new

    queue.enq(self)

    until #target value found
      test_node = queue.deq
      return test_node if test_node.value == target_value
      queue.enq
      test_node.children
    end

  end





  # def inspect
  #   "Parent: <#{parent}> Children: #{children}"
  # end


end

