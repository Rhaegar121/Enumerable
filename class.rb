class MyList
    def initialize(*list)
        @list = list
    end

    def each(&block)
        @list.each(&block)
    end
end