python -m venv --system-site-packages .

./bin/pip install 'papermill'

./bin/papermill Forecast_Power_Generation_Launcher.ipynb forecast.ipynb -p start_date "$1" -p fuel_type $2
