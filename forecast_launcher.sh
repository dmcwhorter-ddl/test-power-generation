python -m venv --system-site-packages .

source ./bin/activate

pip install "cython=0.29.30"
pip install "pystan==2.19.1.1" "plotly" "papermill" requests dash
pip install prophet

papermill Forecast_Power_Generation_Launcher.ipynb forecast.ipynb -p start_date "$1" -p fuel_type $2
