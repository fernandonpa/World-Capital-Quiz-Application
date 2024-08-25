# World Capital Quiz Application

This project is a web-based quiz application designed to test users' knowledge of world capitals. The application supports importing data from a CSV file and provides an interactive quiz interface.

## Features

- **Interactive Quiz**: Test your knowledge of world capitals by matching countries to their capitals.
- **CSV Data Import**: Import a list of country-capital pairs from a CSV file into the PostgreSQL database.
- **Dynamic Content**: Render quiz questions dynamically using EJS templates.
- **PostgreSQL Database**: All quiz data is stored in a PostgreSQL database.
- **Express.js Server**: Handles routing and server-side logic for the quiz application.

## Technologies Used

- **Node.js**: JavaScript runtime for building the server-side application.
- **Express.js**: Web framework for creating API endpoints and handling requests.
- **EJS**: Embedded JavaScript templates for dynamic HTML rendering.
- **PostgreSQL**: Relational database for storing country-capital data.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- Node.js
- PostgreSQL

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/fernandonpa/World-Capital-Quiz-Application.git
    cd World-Capital-Quiz-Application
    ```

2. Install dependencies:

    ```bash
    npm install
    ```

3. Set up the PostgreSQL database:

    1. Create a new PostgreSQL database named `world`:

        ```sql
        CREATE DATABASE world;
        ```

    2. Create the `capitals` table using the `database.sql` script:

        ```bash
        psql -d world -f database.sql
        ```

    3. Import the `capitals.csv` data into the `capitals` table:

        ```sql
        \COPY capitals(country, capital) FROM 'path_to/capitals.csv' DELIMITER ',' CSV HEADER;
        ```

4. Configure the database connection in `index.js`:

    ```javascript
    const pool = new Pool({
      user: 'your_username',
      host: 'localhost',
      database: 'world',
      password: 'your_password',
      port: 5432,
    });
    ```

5. Start the server:

    ```bash
    npm start
    ```

    The application will be running on `http://localhost:3000`.

### Application Structure

- **/public**: Static files (e.g., CSS, JavaScript).
- **/views**: EJS templates for rendering the quiz interface.
- **/capitals.csv**: CSV file containing country-capital pairs.
- **/database.sql**: SQL script for creating the database schema.
- **index.js**: Main server file handling routing and database interaction.
- **package.json**: Node.js configuration file listing dependencies.

### API Endpoints

- **GET** `/` - Renders the main quiz interface.
- **POST** `/quiz` - Submits the quiz answers and provides feedback.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
