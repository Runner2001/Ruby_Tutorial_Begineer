require 'bcrypt'

users = [
    {username: "Runner", password: "runner"},
    {username: "Zed", password: "zed"},
    {username: "Gragas", password: "gragas"},
    {username: "Camelia", password: "camelia"},
    {username: "Garen", password: "garen"},
]

def create_hash_digest(password)
    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

def create_secure_user(list_of_users)
    list_of_users.each do |user|
        user[:password] = create_hash_digest(user[:password])
    end
    # puts list_of_users
end

crypt_user = create_secure_user(users)

def authenticate_user(username, password, list_of_user)
    list_of_user.each do |user|
        if (user[:username] == username && verify_hash_digest(user[:password]) == password)
            return user
        end
    end
    "Not Found User"
end

puts authenticate_user("Garen", "garen" , crypt_user)
