class Project
    attr_accessor :creator, :name, :goal, :current_fund
    
    @@all = []

    def initialize(creator,name,goal)
        @creator = creator
        @name = name
        @goal = goal
        @current_fund = 0
        self.class.all << self
    end

    def new_pledge(user,pledge_amount)
        new_pledge = Pledge.new(user,self,pledge_amount)
        self.current_fund += new_pledge.pledge_amount
        new_pledge
    end
    
    def self.all
        @@all
    end

    def self.no_pledges
        self.all.select do |each_project|
            each_project.current_fund == 0
        end
    end

    def self.above_goal
        self.all.select do |each_project|
            each_project.current_fund >= each_project.goal
        end
    end

    def self.pledged_projects
        Pledge.all.map do |each_pledge|
            each_pledge.project
        end
    end

    def self.most_backers
        most_backers = nil
        highest_pledge_count = 0
        tied_backers = []
        self.pledged_projects.each do |each_project|
            if highest_pledge_count == self.pledged_projects.count(each_project)
                tied_backers << each_project
            elsif highest_pledge_count < self.pledged_projects.count(each_project)
                most_backers = each_project
                highest_pledge_count = self.pledged_projects.count(each_project)
                tied_backers.clear
                tied_backers << most_backers
            end
        end
        if tied_backers.count > 1
            return tied_backers.uniq
        else
            return most_backers
        end
    end

end