class Board
    attr_accessor :cells

    def initialize
        @cells=Array.new(9," ")
    end

    def reset!
        @cells=Array.new(9," ")
    end

    def display
        for i in 0..2
            puts " #{@cells[0+i*3]} | #{@cells[1+i*3]} | #{@cells[2+i*3]} "
            if i != 2
                puts "-----------"
            end
        end
    end

    def position(index)
        @cells[index.to_i-1]
    end

    def full?
        @cells.count{|cell| cell==" "}==0
    end

    def turn_count
        @cells.count{|cell| cell!=" "}
    end

    def taken?(index)
        position(index)!=" "
    end

    def valid_move?(index)
        index.to_i <= 9 && index.to_i >= 1 && !taken?(index.to_i)
    end

    def update(index,player)
        #puts player.token
        @cells[index.to_i-1]=player.token
    end

end