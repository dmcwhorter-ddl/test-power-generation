python -m venv --system-site-packages .

./bin/pip install 'papermill<2.0.0'

./bin/papermill Forecast_Power_Generation_App.ipynb forecast.ipynb -p start_date "$1" -p fuel_type $2
