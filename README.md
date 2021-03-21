# machine-learning-playground
A playground to experiment and practice ML algorithms, libraries and processes.

## playground list
- [fbprophet.ipynb](./notebooks/fbprophet.ipynb): Experiment Time-Series forecasting with Facebook Prophet.
- [mlflow.ipynb](./notebooks/mlflow.ipynb): A simple sample to prove mlflow is working in this stack.

## docker-compose
This project uses docker-compose to set up the dev environment, which includes 
- Jupyter Notebook (dev environment)
- MLFlow (for tracking)
- MySQL (as MLFlow backend)
- NGINX (as reverse proxy)

The Makefile ensures environment variables are set properly.
- `make up` will start the stack and build docker images if non-exist
- `make stop` will stop the stack
- `make down` will down the stack, which will delete all running containers of the stack

After `make up`, you shall be able to access MLFlow through http://localhost, and Jupyter Notebook by following the log and get the token link.