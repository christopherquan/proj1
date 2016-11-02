class PokemonsController < ApplicationController
    
    def capture
       p = Pokemon.find(params[:id])
       p.trainer_id = current_trainer.id
       p.save!
       redirect_to '/'
    end

    def damage
        attacker = Pokemon.find(params[:pok][:pok_id])
        attacker.exp += 10
        if attacker.exp >= 100
            attacker.exp = 0
            attacker.level += 1
        end
        attacker.save!
        p = Pokemon.find(params[:id])
        trainer = p.trainer_id
        p.health -= 10
        p.save!
        redirect_to trainer_path(id: trainer)
    end

    def heal
        p = Pokemon.find(params[:id])
        trainer = p.trainer_id
        p.health += 10
        p.health = [p.health, 100].min
        p.save!
        redirect_to trainer_path(id: trainer)
    end

    def create
        p = Pokemon.new
        p.name = params[:pokemon][:name]
        p.level = 1
        p.health = 100
        p.exp = 0
        p.trainer_id = current_trainer.id
        if !p.save
            flash[:error] = p.errors.full_messages.to_sentence
            redirect_to new_pokemon_path
        else
            redirect_to current_trainer
        end
    end

end
