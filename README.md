# home-of-furniture-backend

Home of furniture is an a RESTful API that tracks items(funiture in this case) that are displayed to its frontend. It provides a way to create, read, update and delete items.

## Table of Contents

- [Deployment Links](#deployment-links)
- [Requirements ](#setup-requiremnets)
- [Installation](#setup-installation)
- [Models](#models)
- [Routes](#endpointsroutes)
- [Contributions](#contributions)
- [Bugs && Fixes](#bugs--fixes--feature-request)
- [Author](#author)
- [License](#license)

## Deployment Links

Links to other files that relate to this API are:

- [Deployed API URL](https://home-of-furniture-api-production.up.railway.app/products)
- [React Frontend github](https://github.com/codingvaleria/home-of-furniture-frontend)
- [Deployed Frontend URL]()

## Setup Requirements

    - Git
    - Ruby 2.7.4
    - Ruby on Rails 7.0.4
    - Postman (for testing endpoints)
    - Railway CLI (deploying to Railway App)

## Setup Installation

    - Clone repository
    - Run the following commands in the directory
        - bundle install
        - rails db:migrate
        - rails db:seed (optional)
        - bin/rails server

## Models

    - User ()
    - Products ()

## Endpoints/Routes

### GET /products

Returns a list of all products

```JSON
[
    {
        "id": 1,
        "name": "Chairs",
        "category": "Living-Room",
        "image": "https://images.unsplash.com/photo-1551298370-9d3d53740c72?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        "description": "Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.",
        "price": 35995.0
    },
    {
        "id": 2,
        "name": "Chest",
        "category": "Dining-Room",
        "image": "https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
        "description": "Dolores quis quia ad quo voluptates. Maxime delectus totam numquam. Necessitatibus vel atque qui dolore.Id neque nemo. Dolores iusto facere est ad. Accusamus ipsa dolor ut.Et officiis ut hic. Sunt asperiores minus distinctio debitis ipsa dolor. Minima eos deleniti.",
        "price": 75900.0
    },
 ]
```

### GET /products/:id

Returns JSON data about the hero if the hero exists

```JSON
{
    "id": 4,
    "name": "Carvel Green Bed",
    "category": "Bedroom",
    "image": "https://images.unsplash.com/photo-1615874959474-d609969a20ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmVkcm9vbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "description": "Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.",
    "price": 89456.0
}
```

Otherwise, it returns

```JSON
{
  "error": "Product not found"
}
```

### PATCH /products/:id

This route updates an existing `Products`. It accepts an object with the following properties in the body of the request:

```JSON
{

    "id": 5,
    "name": "Six set Rest Arm Chairs",
    "category": "Kitchen",
    "image": "Updated image",
    "description": "Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.",
    "price": 35995.0

}
```

If the `Product` exists, return JSON data in the format below:

```JSON
{
    "id": 5,
    "name": "Six set Rest Arm Chairs",
    "category": "Kitchen",
    "image": "Updated image",
    "description": "Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.",
    "price": 35995.0
}
```

Otherwise if the validation criteria is not met,it returns

```JSON
{
    "errors": [
        "errors.full_messages"
    ]
}
```

### POST /products

This route should create a new `Product`. It accepts an object with the following properties in the body of the request:

```JSON
{
    "name": "Kitchen set",
    "category": "Kitchen",
    "image": "https://images.unsplash.com/photo-1560440021-33f9b867899d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGtpdGNoZW4lMjBmdXJuaXR1cmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "description": "Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.",
    "price": 35995.0
}
```

If the `Product` is successfully created, the API will return a `Response ` object as follows:

```JSON
{
    "id": 9,
    "name": "Kitchen set",
    "category": "Kitchen",
    "image": "https://images.unsplash.com/photo-1560440021-33f9b867899d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGtpdGNoZW4lMjBmdXJuaXR1cmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "description": "Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.",
    "price": 35995.0
}
```

If the `Product` is **not** successfully created, the API will return the following JSON data, along with the appropriate HTTP status code:

```JSON
{
    "errors": [
        "validation errors"
    ]
}
```

### DELETE /products/ :id

This route should delete a `Product`. If the product is success fully deleted, it returns a `head :no_content` status. Otherwise if product does not exist it returns:

```JSON
{
    "error": "Product not found"
}
```

## Contributions

1. Fork this repository.
2. Create a branch: `git checkout -b <branch_name>`.
3. Make your changes and commit them: `git commit -m '<commit_message>'`
4. Push to the original branch: `git push origin <project_name>/<location>`
5. Create the pull request.

Alternatively see the GitHub documentation on [creating a pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).

## Bugs & Fixes / Feature request

In case you find a bug, kindly open an issue [here](https://github.com/codingvaleria/issues/new). Include your query and your expected results.

## Author

- [Valeria Bosibori](https://github.com/xxx)
- Email: codingvaleria@gmail.com

## License

This project is under [MIT](LICENSE).

[Go Back to the Top](#home-of-furniture-backend)
