# My Fullstack Application

This project is a fullstack application consisting of a React frontend and a Python backend. The frontend fetches a welcome message from the backend API and displays it on page load.

## Project Structure

```
my-fullstack-app
├── frontend          # React frontend application
│   ├── src          # Source files for the frontend
│   ├── package.json  # NPM configuration for frontend
│   ├── tsconfig.json # TypeScript configuration for frontend
│   └── public       # Public assets for the frontend
├── backend           # Python backend application
│   ├── app.py       # Main application file for the backend
│   ├── requirements.txt # Python dependencies for the backend
│   └── Dockerfile    # Dockerfile for building the backend image
├── deploy            # Deployment configurations
│   ├── helm         # Helm chart for deploying the applications
│   └── terraform    # Terraform scripts for creating the AKS cluster
└── README.md        # Project documentation
```

## Frontend

The frontend is built using React and TypeScript. It fetches a welcome message from the backend API on page load.

### Setup

1. Navigate to the `frontend` directory.
2. Install dependencies:
   ```
   npm install
   ```
3. Start the development server:
   ```
   npm start
   ```

## Backend

The backend is a simple Flask application that provides a REST API endpoint to return a welcome message.

### Setup

1. Navigate to the `backend` directory.
2. Install dependencies:
   ```
   pip install -r requirements.txt
   ```
3. Run the application:
   ```
   python app.py
   ```

## Deployment

The application can be deployed to a Kubernetes cluster using Helm charts and Terraform scripts.

### Helm

1. Navigate to the `deploy/helm` directory.
2. Install the Helm chart:
   ```
   helm install my-fullstack-app .
   ```

### Terraform

1. Navigate to the `deploy/terraform` directory.
2. Initialize Terraform:
   ```
   terraform init
   ```
3. Apply the configuration to create the AKS cluster:
   ```
   terraform apply
   ```

## License

This project is licensed under the MIT License.