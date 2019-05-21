class User
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def start_project(project_name,pledge_goal)
        Project.new(self,project_name,pledge_goal)
    end

    def self.project_creator
        Project.all.map do |each_project|
            each_project.creator
        end.uniq
    end

    def self.highest_pledge
        highest_pledge = Pledge.all[0].pledge_amount
        highest_pledger = Pledge.all[0].user
        Pledge.all.each do |each_pledge|
            if each_pledge.pledge_amount > highest_pledge
                highest_pledger = each_pledge.user
            end
        end
        highest_pledger
    end

    def self.mult_pledger
        all_pledgers = Pledge.all.map do |each_pledge|
            each_pledge.user
        end
        all_pledgers.select do |each_user|
            all_pledgers.count(each_user) > 1
        end.uniq
    end

end