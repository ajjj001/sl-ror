json.array! @users do |user|
    json.firstName user.firstName
    json.lastName user.lastName
    json.age user.age
    json.gender user.gender
    json.address user.address
   end