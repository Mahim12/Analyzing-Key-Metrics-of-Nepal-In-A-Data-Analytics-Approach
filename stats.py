
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.preprocessing import MinMaxScaler




# Read the CSV file into a pandas dataframe
df = pd.read_csv('nepal_fact_table.csv')

# Extract the two columns from the dataframe
GDP = df['GDP']
INFLATION = df['INFLATION']
Unemployment = df['Unemployment']
consumption = df['CONSUMPTION']


# Drop the first 31 rows of the dataframe
df = df.drop(df.index[:31]) #because unemployment values do nott exist

# Reset the index of the dataframe
df = df.reset_index(drop=True)

# Initialize MinMaxScaler and fit_transform the columns
scaler = MinMaxScaler()
df['gdp_scaled'] = scaler.fit_transform(df[['GDP']])
df['inflation_scaled'] = scaler.fit_transform(df[['INFLATION']])
df['Unemployment_scaled'] = scaler.fit_transform(df[['Unemployment']])
df['consumption_scaled'] = scaler.fit_transform(df[['CONSUMPTION']])



# Create a figure with one subplot
fig, ax = plt.subplots()

# Plot both variables on the same subplot
ax.plot(df['YEAR_FIELD'], df['Unemployment_scaled'], label='Unemployment_scaled')
ax.plot(df['YEAR_FIELD'], df['inflation_scaled'], label='inflation_scaled')
ax.set_xlabel('Date')
ax.set_ylabel('Values')

# Add a legend to the plot
ax.legend()


# Create a figure with one subplot
fig, ax1 = plt.subplots()

# Plot both variables on the same subplot
ax1.plot(df['YEAR_FIELD'], df['Unemployment_scaled'], label='Unemployment_scaled')
ax1.plot(df['YEAR_FIELD'], df['gdp_scaled'], label='gdp_scaled')
ax1.set_xlabel('Date')
ax1.set_ylabel('Values')

# Add a legend to the plot
ax1.legend()


# Show the plot
plt.show()


