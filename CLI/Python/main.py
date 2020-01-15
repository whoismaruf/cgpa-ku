import pandas as pd
import grade

df = pd.read_csv("data.csv")

marks = [grade.check(i) for i in [i for i in df['Mark']]]
credit = [i for i in df['Credit']]
result = round(sum([a*b for a, b in zip(credit, marks)])/sum(credit), 2)
print(f"Your earned CGPA = {result}")
