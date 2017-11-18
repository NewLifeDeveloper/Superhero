class HomeController < ApplicationController
  before_action :common_content, :only => [:index, :team]
  
  def common_content
   @hero_prefix = Faker::Superhero.prefix
   @hero_name  = Faker::Superhero.name
   @hero_power = Faker::Superhero.power
   @corp_job = Faker::Name.title
   @corp_power = Faker::Company.bs
   @corp_power = @corp_power.titleize
   
   
   
   @rand_numb = rand(1..100)
   @rand_setting = rand(1..4)
   @bg = rand(1..2)
   
   # random numbers for avatar
   if @rand_setting == 1
       @set = "set1"
 elsif @rand_setting == 2
       @set = "set2"
 elsif @rand_setting == 3
       @set = "set3"
 else   @rand_setting == 4
       @set = "set4"
   end
   
   # random number for background
    if @bg == 1
    @background = "bg1"
    else @bg == 2
    @background = "bg2"
    end
   
   
   @avatar_image = Faker::Avatar.image(@rand_numb, "300x370", "png",  @set, @background)
        end
  
  def index
  end
  
  def team
   @team_nunber = params[:team_nunber]
  end
  
end
