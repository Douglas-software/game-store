class Juego < ApplicationRecord
    self.table_name = "juego"
    validates :descripcion, :fecha_lanzamiento, :desarrollador, :editor, :categoria, :precio, presence: true
end