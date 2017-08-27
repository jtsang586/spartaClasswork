class Monster

	attr_accessor :id, :title, :description

	def self.open_connection
		PG.connect(dbname: "monsters")
	end

	def self.hydrate data
		monster = Monster.new
		monster.id = data['id']
		monster.title = data['title']
		monster.description = data['description']

		monster
	end

	def self.all 
		conn = self.open_connection
		sql = "SELECT id, title, description FROM monster ORDER BY id"
		results = conn.exec(sql)

		monsters = results.map do |result|
			self.hydrate result
		end

		monsters
	end

	def self.find id 
		conn = self.open_connection
		sql = "SELECT id, title, description FROM monster WHERE id = #{id} LIMIT 1"
		monsters = conn.exec(sql)

		monster = self.hydrate monsters[0]

		monster
	end

	def save
		conn = Monster.open_connection

		if (!self.id)
			sql = "INSERT INTO monster (title, description) VALUES ('#{self.title}', '#{self.description}')"
		else
			sql = "UPDATE monster SET title='#{self.title}', description='#{self.description}' WHERE id = #{self.id}"
		end
		conn.exec(sql)
	end

	def self.destroy id
		conn = self.open_connection

		sql = "DELETE FROM post WHERE id = #{id}"

		conn.exec(sql)
	end
end