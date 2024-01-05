# Use the PySpark Notebook image as the base
FROM quay.io/jupyter/pyspark-notebook

# Install the required Python libraries
RUN pip install whylogs whylogs[viz] whylogs[spark]

# Copy the CSV file into the container
COPY data/patient_data.csv /home/patient_data.csv