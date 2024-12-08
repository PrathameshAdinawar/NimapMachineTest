# NimapMachineTest
Category and Product Management System
# Category and Product Management System

A Spring Boot application for managing categories and products with CRUD operations, a one-to-many relationship, and server-side pagination.

## Features

- **Category Management**: CRUD operations with pagination.
- **Product Management**: CRUD operations with category details and pagination.
- **Category-Product Relationship**: One-to-many.

## Development

### Tools
- **Eclipse IDE**
- **Spring Boot**
- **JPA & Hibernate**
- **MySQL**
- **Postman**

### Steps
1. Created a Spring Boot project using Spring Intializer with JPA, MySQL, and Web dependencies.
2. Configured the database in `application.properties`.
3. Developed `Category` and `Product` entities with relationships.
4. Implemented repositories, services, and controllers.
5. Added pagination with Spring Data JPA.
6. Tested APIs with Postman.

## APIs

### Category
- **GET** `/api/categories?page={page}` - List categories.
- **POST** `/api/categories` - Add a category.
- **GET** `/api/categories/{id}` - Get category by ID.
- **PUT** `/api/categories/{id}` - Update category by ID.
- **DELETE** `/api/categories/{id}` - Delete category.

### Product
- **GET** `/api/products?page={page}` - List products.
- **POST** `/api/products` - Add a product.
- **GET** `/api/products/{id}` - Get product by ID (with category).
- **PUT** `/api/products/{id}` - Update product by ID.
- **DELETE** `/api/products/{id}` - Delete product.

## Challenges

1. Learned Spring Boot and Hibernate integration through tutorials.
2. Attempted a frontend but prioritized backend completion.

## Running the Project

1. Clone the repository.
2. Configure `application.properties`:
   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/your_database_name
   spring.datasource.username=your_username
   spring.datasource.password=your_password
   spring.jpa.hibernate.ddl-auto=update
   ```
3. Run the Spring Boot application.
4. Test APIs with Postman.

## Acknowledgements

Thanks to online resources for Spring Boot and Hibernate guidance.

