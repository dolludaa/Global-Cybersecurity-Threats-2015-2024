> Cybersecurity Threats Analysis 2015–2024
> Goal: identify key trends, risks, and patterns in global cyberattacks from 2015 to 2024.
> 
> Main questions:
> Which attack types are increasing over time?
> Which industries lose the most money?
> What sources are behind the attacks?
> Which defense methods reduce resolution time?
> 
> Dataset overview:
> 3,000 rows, 10 features
> Country, Year, Attack Type, Target Industry
> Financial Loss (Million USD), Affected Users
> Attack Source, Vulnerability Type
> Defense Used, Incident Resolution Time (hours)

> Each row represents a single attack event.
> 
> Country: the country where the incident occurred
> Year: the year when the attack took place
> Attack Type: the method used by the attackers, such as phishing, ransomware, or DDoS
> Target Industry: the sector targeted, including healthcare, banking, government, and others
> Financial Loss (in Million $): the estimated financial damage caused by the attack
> Number of Affected Users: the number of individuals or user accounts impacted
> Attack Source: the origin of the attack, such as nation-state, hacker group, insider, or unknown
> Security Vulnerability Type: the exploited weakness, such as unpatched software or weak passwords
> Defense Mechanism Used: the protection that was in place during the attack, such as firewall or antivirus
> Incident Resolution Time (in Hours): how long it took to respond and resolve the incident

> Data Source: https://www.kaggle.com/datasets/atharvasoundankar/global-cybersecurity-threats-2015-2024

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

df = pd.read_csv('Global_Cybersecurity_Threats_2015-2024.csv')
df.head()

```

### Chart 1. Number of Cyberattacks per Year

```python
sns.set(style="whitegrid")

attack_counts = df['Year'].value_counts().sort_index()

plt.figure(figsize=(10, 6))
sns.barplot(x=attack_counts.index, y=attack_counts.values, palette="Blues_d")
plt.title("Number of Cyberattacks per Year")
plt.xlabel("Year")
plt.ylabel("Number of Attacks")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

```

![Number of Cyberattacks per Year](https://via.placeholder.com/800x400/4472C4/FFFFFF?text=Chart+will+appear+here+after+running+code)

The chart shows that the number of attacks increased each year from 2015 to 2024. This indicates a steady rise in global cyber threat activity.


## Analysis Section 2

### Add your second analysis title here

Write your second analysis description here...

### Chart 2
Add description of your second chart here...


```python
# Add your second chart code here

```

## Conclusions

### Key Findings
1. Add your first key finding here
2. Add your second key finding here
3. Add your third key finding here

### Business Recommendations
1. Add your first recommendation here
2. Add your second recommendation here
3. Add your third recommendation here

### Next Steps
- Add your next steps here
- Add any follow-up actions
- Add future analysis plans


