#
# Préinsciption aux GN Fenrir
#

class Preregistration
  include Mongoid::Document
  referenced_in :user
  
  # Renseignements généraux
  field :first_name
  field :last_name
  field :birth_date, :type => Date
  field :address_line_1
  field :address_line_2
  field :postal_code
  field :city
  field :country
  field :phone
  field :mobile
  field :email
  
  # Renseignements médicaux
  field :age, :type => Integer
  field :size, :type => Integer
  field :weight, :type => Integer
  field :has_health_problems, :type => Boolean
  field :health_problems
  field :allergies
  field :emergency_last_name
  field :emergency_first_name
  field :emergency_phone
  field :emergency_link
  field :antecedents
  field :treatment
  field :medical_skills
  
  # Renseignements Fenrir
  field :larp_count, :type => Integer
  field :fenrir_larp_count, :type => Integer
  
  # Renseignements personnage
  field :existing_character, :type => Boolean
  field :character_name
  field :group_name
  field :character_race
  field :character_class
  field :feats_and_skills
  field :character_religion
  field :arcanic_spells
  field :divine_spells
  field :complementary_information
  
  # Renseignements campement
  field :ingame_camping, :type => Boolean
  
  # Quiz personnage
  field :un_objet_tombe_a_vos_pieds
  field :noeud_gordien
  field :diplomatie
  field :le_combat
  field :feu_dans_la_taverne
  field :recherche
  field :leadership
  field :romance
   
end