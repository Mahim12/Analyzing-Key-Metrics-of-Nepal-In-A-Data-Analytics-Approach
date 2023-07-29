Check the: Analyzing Key Metrics of Nepal_ A Data Analytics Approach.pdf file

# **Introduction:**

Nepal, a South Asian country nestled between the majestic Himalayan Mountains and the lush plains of the Terai, is a land of cultural diversity and natural beauty. As a developing country, Nepal has been the subject of numerous studies and research projects that aim to understand the social, economic, and environmental challenges facing the country. In this study, I collected data from four different online sources to examine key socio-economic indicators in Nepal.

All the sources of data come from the World Bank's Open Data and the worlddata info Platforms, which provides access to a wide range of socio-economic indicators for countries around the world. The socio-economic indicators I chose for analysis were:

1) Unemployment, total (% of total labour force) <https://data.worldbank.org/indicator/SL.UEM.TOTL.ZS?locations=NP>
1) GDP (current US$) - Nepal <https://data.worldbank.org/indicator/NY.GDP.MKTP.CD?locations=NP>
1) Final consumption expenditure (% of GDP) - Nepal <https://data.worldbank.org/indicator/NE.CON.TOTL.ZS?locations=NP>
1) Historical inflation rates <https://www.worlddata.info/asia/nepal/inflation-rates.php>

By gathering data from these four sources, the analysis aims to provide an overview of key socio-economic indicators in Nepal. Specifically, I will examine trends in the aforementioned indicators over time. The analysis will help shed light on the past and the current state of development in Nepal.![](Aspose.Words.15698e54-83ce-4db0-98d9-2bd0c7a01ffa.002.jpeg)

# **Overview of the schema**

The logical schema is an essential component of any database that defines the structure and organisation of data within the system. In this schema, there are four dimension tables, named Consumption, Inflation, GDP, and Unemployment, which provide context and meaning to the data. Each dimension table contains attributes related to its respective subject area.

Additionally, there is one fact table that consolidates all the metrics from the dimension tables in one place. This fact table contains the measures or metrics that will be analysed, such as the total consumption, inflation rate, GDP growth, and unemployment rate among others.

By combining the metrics from the fact table with the attributes from the dimension tables, users can gain valuable insights into the relationships between various factors and make informed decisions based on the data.

![](Aspose.Words.15698e54-83ce-4db0-98d9-2bd0c7a01ffa.003.jpeg)

# **Data cleaning and pipelining in Tableau:**

Data cleaning and pipelining are critical processes in Tableau that help to ensure accurate and reliable data analysis. Data cleaning involves the identification and removal of errors, inconsistencies, and outliers in the data, while pipelining refers to the process of transforming, filtering, and aggregating data to prepare it for analysis.

In Tableau, data cleaning and pipelining can be accomplished through various techniques and tools. For example, Tableau's data preparation tools, such as the data interpreter, can automatically detect and correct common data issues, such as misspellings and formatting errors. Additionally, Tableau's data cleansing tools, such as the cluster analysis and outlier detection, can be used to identify and remove data anomalies that can skew analysis results.

Once the data has been cleaned, pipelining can be used to transform, filter, and aggregate data to prepare it for analysis. Tableau's data blending and joining features can be used to combine data from multiple sources and create meaningful relationships between different datasets. Data blending allows data to be combined on the fly, while data joining allows data to be joined based on common fields or keys.

Overall, data cleaning and pipelining are essential components of the data analysis process in Tableau. By ensuring that data is accurate, reliable, and properly prepared, data cleaning and pipelining can help analysts to derive meaningful insights and make informed decisions based on the data.

