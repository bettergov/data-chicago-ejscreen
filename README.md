# data_chicago-ejscreen
Underlying data and analysis scoring Chicago blockgroups using EJSCREEN data. Featured in an interactive map for the BGA story ["Interactive Map: Pollution Hits Chicago's West, South Sides Hardest"](https://www.bettergov.org/news/interactive-map-pollution-hits-chicagos-west-south-sides-hardest) published October 25, 2018.

## What's here?

| file  | description |
| ------------- | ------------- |
| [`output/EJSCREEN_2018_USPR_Public__scored.csv`](https://github.com/bettergov/data_chicago-ejscreen/blob/master/output/EJSCREEN_2018_USPR_Public__scored.csv)  | **Final data** without geometry  |
| [`source/EJScreen_Index_DescriptionsV4_Pub.xlsx`](https://github.com/bettergov/data_chicago-ejscreen/blob/master/source/EJScreen_Index_DescriptionsV4_Pub.xlsx)  | Descriptions of original EJSCREEN columns  |
| [`source/target_blockgroups.csv`](https://github.com/bettergov/data_chicago-ejscreen/blob/master/source/target_blockgroups.csv)  | The domain of US Census blockgroups we're calling Chicago  |
| [`01_score_ejscreen.ipynb`](https://github.com/bettergov/data_chicago-ejscreen/blob/master/01_score_ejscreen.ipynb)  | Jupyter notebook detailing the **scoring analysis**  |
| [`Makefile`](https://github.com/bettergov/data_chicago-ejscreen/blob/master/Makefile)  | Download original data, filter that data to a subset, and execute the notebook on that data |
