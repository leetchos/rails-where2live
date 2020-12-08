class Neighborhood < ApplicationRecord
  belongs_to :city
  has_many :neighborhood_amenities, dependent: :destroy
  has_many :amenities, through: :neighborhood_amenities
  has_many :messages
end

# Adicionar coluna ao usuário neighborhood_id (opcional)
# Vai ser atualizado assim q selecionar um bairro e tb
# Tabela de user_amenities para salvar as amen q o user escolheu
# ela vai ser uma join table entre user e amenities
# # Ela vai ser salva na hora que o user escolher, vamos passar esse dado de um lugar para o outro.