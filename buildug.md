# ADMIN SIDE


# api to create account for admins 

# endpoint
http://127.0.0.1:8000/api/auth/Adminregister

# payload

{
    "name":" Kansiime Alfred",
    "email":"alfredkaziibwe119@gmail.com",
    "location":"Nakawa",
    "phone":"0785557587",
    "password":"123456"
}   


# output
{
  "Admin": {
    "name": "Kansiime Alfred",
    "location": "Nakawa",
    "phone": "0785557587",
    "email": "alfredkaziibwe119@gmail.com",
    "updated_at": "2024-06-18T03:46:38.000000Z",
    "created_at": "2024-06-18T03:46:38.000000Z",
    "id": 2
  },
  "status": true
}



# API TO LOGIN ADMIN

# Endpoint
http://127.0.0.1:8000/api/adminlogin
# Payload
{
    "email":"alfredkaziibwe19@gmail.com",
    "password":"123456"
}

#  Output
{
  "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2FkbWlubG9naW4iLCJpYXQiOjE3MjM4OTE1MTQsImV4cCI6MTcyMzg5NTExNCwibmJmIjoxNzIzODkxNTE0LCJqdGkiOiJRVzRXWFlVbEJyYTdTMHZrIiwic3ViIjoiMTIiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.DA2egpXdVuWXDHcTYt34g0xu1LH6WiiXTfVhWQBtJHs",
  "token_type": "bearer",
  "expires_in": 3600,
  "user": {
    "email": "alfred@gmail.com",
    "role": "admin",
    "phone": "0785557587",
    "name": "Kansiime Alfred",
    "location": "Nakawa",
    "sex": null
  }
}


#API TO READ THE  ADMIN PROFILE

#Endpoint
http://127.0.0.1:8000/api/v1/admin/get/admin/1

# Payload 

    {
        "perPage": "4",
        "relationship": "attendances",
        "orderBy":"asc"

    }



# Output
{
  "data": {
    "admin": {
      "id": 1,
      "name": "Kansiime Alfred",
      "phone": "",
      "email": "alfredkaziibwe19@gmail.com",
      "location": "",
      "role": ""
    }
  }
}


# API TO DELETE ADMIN

# Endpoint
http://127.0.0.1:8000/api/v1/admin/delete/admin/5

# Output

{
  "success": true,
  "message": "admin data with ID 5 has been deleted successfully."
}


# Api to create Category

# Endpoint

http://127.0.0.1:8000/api/v1/admin/post-all/category

#  Payload
{
    
    "name":"east",
    "image":{
}

}

# Output

{
  "success": true,
  "message": "All category data has been saved successfully."
}


# Api to create Category

# Endpoint

http://127.0.0.1:8000/api/v1/admin/post-all/SubCategory

#  Payload
{
    
    "name":"east",
    "image":{
}

}

# Output

{
  "success": true,
  "message": "All subcategory data has been saved successfully."
}





# Api to create Category

# Endpoint

http://127.0.0.1:8000/api/v1/admin/post-all/product

#  Payload
{
    
    "name":"east",
    "description":"east",
    "review":"east",
    "amenities":"east",
        "services":"east",

    "subcategory_id":"1",


    "image":{
}

}

# Output

{
  "success": true,
  "message": "All category data has been saved successfully."
}





for update change the url to 
http://127.0.0.1:8000/api/v1/admin/update-all/category/1


<!-- ?i -->



# API TO  GET ALL CATEGORIES

# Endpoint
http://127.0.0.1:8000/api/v1/admin/get-all/category

#Payload

    {
        "perPage": "7",
        "orderBy":"asc"

    }

# Output
{
  "results": {
    "data": [
      {
        "id": 1,
        "name": "tea",
        "image": "images/qEyV28zkV8GnoBQSIlgO1aGzHUCTNRCZlRgpy2A3.jpg"
      },
      {
        "id": 2,
        "name": "snacks",
        "image": null
      },
      {
        "id": 3,
        "name": "East ckiken wing",
        "image": null
      },
      {
        "id": 4,
        "name": "Lubombo",
        "image": ""
      },
      {
        "id": 5,
        "name": "birds soop",
        "image": "images/JIOoNXhVXF8At9OJEk8qLvETCe9K55jP9P1eWLeW.jpg"
      },
      {
        "id": 6,
        "name": "birds soop",
        "image": "images/g0LCjXifS2DsMfuk1G9sAZJlIBxEfKLQQLS2yjYt.jpg"
      }
    ],
    "total": 6,
    "per_page": 7,
    "current_page": 1,
    "last_page": 1,
    "first_page_url": "http://127.0.0.1:8000/api/v1/admin/get-all/category?page=1",
    "last_page_url": "http://127.0.0.1:8000/api/v1/admin/get-all/category?page=1",
    "next_page_url": null,
    "prev_page_url": null,
    "path": "http://127.0.0.1:8000/api/v1/admin/get-all/category",
    "from": 1,
    "to": 6
  }
}



# API TO GET SINGLE CATEGORY

# Endpoint 
http://testapi.cognospheredynamics.com/api/v1/cart/get/category/3

# Payload

    {
        "perPage": "4",
        "relationship": "attendances",
        "orderBy":"asc"

    }


# Output

{
  "data": {
    "category": {
      "id": 1,
      "name": "tea",
      "image": "images/qEyV28zkV8GnoBQSIlgO1aGzHUCTNRCZlRgpy2A3.jpg"
    }
  }
}





the read for  product and subcatery replace category with  product and SubCategory   

eg
http://testapi.cognospheredynamics.com/api/v1/cart/get/SubCategory/3

http://127.0.0.1:8000/api/v1/admin/get-all/category



 for  
# Eric all end point have to be with admin after the v1  api/v1/admin/get-all/category   for the mobile app  all endpoints have to be with users   api/v1/user/get-all/category

