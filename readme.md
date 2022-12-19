# Note: This project built on Python 3.10.6 and uses latest django available for this python version.

# Install the requirements
pip3 install -r requirements.txt

# Run the migration
python3 interviewapp/manage.py migrate

# Run the linting
pylint interviewapp/interviewapp

# Run the application
python3 interviewapp/manage.py runserver 0.0.0.0:8000
