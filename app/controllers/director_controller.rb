class DirectorController < ApplicationController
  def all
    @directors = Director.all
    render({ :template => "/director_templates/all" })
  end
  
  def selected
    @director_id = params.fetch("director_id")
    @director = Director.all.where( {:id => @director_id} )[0]
    
    render({ :template => "/director_templates/selected" })
  end

  def youngest
    no_nils = Director.where.not({ :dob => nil }).order({ :dob => :asc })
    earliest_dob = no_nils.maximum(:dob)
    @director = Director.where({ :dob => earliest_dob })[0]

    render({ :template => "/director_templates/youngest" })
  end

  def oldest
    no_nils = Director.where.not({ :dob => nil }).order({ :dob => :asc })
    latest_dob = no_nils.minimum(:dob)
    @director = Director.where({ :dob => latest_dob })[0]

    render({ :template => "/director_templates/oldest" })
  end
end
