python -m venv --system-site-packages .

source ./bin/activate

pip install 'papermill'

papermill Forecast_Power_Generation_Launcher.ipynb forecast.ipynb -p start_date "$1" -p fuel_type $2
