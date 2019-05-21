class Pledge
    attr_reader :user, :pledge_amount, :project

    @@all = []

    def initialize(user,project,pledge_amount)
        @user = user
        @pledge_amount = pledge_amount
        @project = project
        self.class.all << self
    end

    def self.all
        @@all
    end

end