import pandas as pd
import matplotlib.pyplot as plt
df=pd.read_csv('netflix_titles.csv')
print(df.head())
type_counts=df['type'].value_counts()
print(type_counts)

type_counts.plot(kind='bar')
plt.title('Distribution of Movie and TV Show Titles on Netflix')
plt.show()

top_countries =df['country'].value_counts().head(10)
top_countries.plot(kind='bar')
plt.title('Top 10 Countries with the Most Titles on Netflix')
plt.xticks(rotation=45)
plt.show()

ratings= df['rating'].value_counts()
ratings.plot(kind='bar')    
plt.title('Distribution of Ratings for Netflix Titles')
plt.xticks(rotation=45)
plt.show()

