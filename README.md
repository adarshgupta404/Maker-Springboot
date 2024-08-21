## Setup

### 1. Clone the Repository

Clone the repository using Git:

```bash
git clone https://github.com/adarshgupta404/Maker-Springboot.git
cd Maker-Springboot
```

### Import the database from the folder `SQL`

### Run the project project

### Project will be running on `http://localhost:8000`

### POST API : `http://localhost:8000/api/supplier/query`

### API BODY : 
```
{
    "location": "India",
    "natureOfBusiness": "SMALL_SCALE",
    "manufacturingProcess": "CASTING",
    "page": 0,
    "size": 10
}
```

The `POST /api/supplier/query` endpoint allows users to query suppliers based on various parameters.

### Request Body

- `location` (string, optional): The location of the supplier.

- `natureOfBusiness` (string, optional): The nature of business of the supplier.

- `manufacturingProcess` (string, optional): The manufacturing process used by the supplier.

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


``` json
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

````
