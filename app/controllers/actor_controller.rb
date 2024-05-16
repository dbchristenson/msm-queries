class ActorController < ApplicationController
  def all
    @actors = Actor.all
    render({ :template => "/actor_templates/all" })
  end
  
  def selected
    @actor_id = params.fetch("actor_id")
    @actor = Actor.all.where( {:id => @actor_id} )[0]

    render( {:template => "/actor_templates/selected"})
  end
end
