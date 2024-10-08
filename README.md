## Setup

### 1. Clone the Repository

Clone the repository using Git:

```bash
git clone https://github.com/adarshgupta404/Maker-Springboot.git
cd Maker-Springboot
```

### Create database named `nsecdemo`
```bash 
create database nsecdemo;
```

### Import the database tables from the folder `SQL`

### Configure application.properties at `src/main/resources`
```bash
spring.application.name=backend
server.port=8000

#db specific properties
spring.datasource.url=jdbc:mysql://${DB_HOST:localhost}:${DB_PORT:3306}/${DB_NAME:nsecdemo}
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.username=${DB_USERNAME:rootuser}
spring.datasource.password=${DB_PASSWORD:root}


#ORM s/w specific properties
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

# spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQLDialect
```


### Run the project project

### Project will be running on `http://localhost:8000`


### CURL : 
```bash
curl --location 'http://localhost:8000/api/supplier/query' \
--header 'Content-Type: application/json' \
--data '{
    "location": "Mumbai",
    "natureOfBusiness": "SMALL_SCALE",
    "manufacturingProcess": "CASTING",
    "sortBy": "companyName",
    "sortDirection": "asc",
    "page": 0,
    "size": 10
}'
```

### POST API : `http://localhost:8000/api/supplier/query`

### API BODY :

```bash
{
    "location": "Mumbai",
    "natureOfBusiness": "SMALL_SCALE",
    "manufacturingProcess": "CASTING",
    "sortBy": "companyName",
    "sortDirection": "asc",
    "page": 0,
    "size": 10
}
```

The `POST /api/supplier/query` endpoint allows users to query suppliers based on various parameters.

### Request Body

- `location` (string, optional): The location of the supplier.

- `natureOfBusiness` (string, optional): The nature of business of the supplier.

- `manufacturingProcess` (string, optional): The manufacturing process used by the supplier.

- `sortBy` (string, optional): The sortBy will sort by CompanyName (default) or other column fields alphabetically.

- `sortDirection` (string, optional): The sortDirection used for ordering in ascending or descending.

- `page` (integer): The page number for paginated results.

- `size` (integer): The size of the page for paginated results.

### Response

The response is a JSON object with the following properties:

- `totalElements` (integer): The total number of elements.

- `totalPages` (integer): The total number of pages.

- `first` (boolean): Indicates if it's the first page.

- `last` (boolean): Indicates if it's the last page.

- `size` (integer): The size of the content.

- `content` (array): An array of supplier objects, each containing:

  - `supplierId` (integer): The ID of the supplier.

  - `companyName` (string): The name of the company.

  - `website` (string): The website of the company.

  - `location` (string): The location of the supplier.

  - `natureOfBusiness` (string): The nature of business of the supplier.

  - `manufacturingProcesses` (array): An array of manufacturing processes used by the supplier.

- `number` (integer): The page number.

- `sort` (object): An object with properties `empty`, `sorted`, and `unsorted`.

- `numberOfElements` (integer): The number of elements in the current page.

- `pageable` (object): An object with properties:

  - `pageNumber` (integer): The page number.

  - `pageSize` (integer): The page size.

  - `sort` (object): An object with properties `empty`, `sorted`, and `unsorted`.

  - `offset` (integer): The offset.

  - `unpaged` (boolean): Indicates if it's unpaged.

  - `paged` (boolean): Indicates if it's paged.

- `empty` (boolean): Indicates if the content is empty.

```json
{
  "type": "object",
  "properties": {
    "totalElements": { "type": "integer" },
    "totalPages": { "type": "integer" },
    "first": { "type": "boolean" },
    "last": { "type": "boolean" },
    "size": { "type": "integer" },
    "content": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "supplierId": { "type": "integer" },
          "companyName": { "type": "string" },
          "website": { "type": "string" },
          "location": { "type": "string" },
          "natureOfBusiness": { "type": "string" },
          "manufacturingProcesses": {
            "type": "array",
            "items": { "type": "string" }
          }
        }
      }
    },
    "number": { "type": "integer" },
    "sort": {
      "type": "object",
      "properties": {
        "empty": { "type": "boolean" },
        "sorted": { "type": "boolean" },
        "unsorted": { "type": "boolean" }
      }
    },
    "numberOfElements": { "type": "integer" },
    "pageable": {
      "type": "object",
      "properties": {
        "pageNumber": { "type": "integer" },
        "pageSize": { "type": "integer" },
        "sort": {
          "type": "object",
          "properties": {
            "empty": { "type": "boolean" },
            "sorted": { "type": "boolean" },
            "unsorted": { "type": "boolean" }
          }
        },
        "offset": { "type": "integer" },
        "unpaged": { "type": "boolean" },
        "paged": { "type": "boolean" }
      }
    },
    "empty": { "type": "boolean" }
  }
}
```
