year = 2018
name = EJSCREEN_$(year)_USPR_Public
layer_name = EJSCREEN_Full # use with 2018
# layer_name = EJSCREEN_Primary # use with 2017
source_blockgroups = target_blockgroups
source_zip = source/_$(name).gdb.zip
source_url = ftp://newftp.epa.gov/EJSCREEN/$(year)/$(name).gdb.zip

# execute jupyter notebook to create scored shapefile
$(name)__scored.zip : $(name).shp 01_score_ejscreen.ipynb
	jupyter nbconvert --to notebook --inplace --execute \
  --ExecutePreprocessor.timeout=None \
  01_score_ejscreen.ipynb

# filter columns from original shapefile
$(name).shp : $(source_zip) source/$(source_blockgroups).csv
	ogr2ogr -f "ESRI Shapefile" \
		-sql "SELECT E.* \
			FROM 'source/$(source_blockgroups).csv'.$(source_blockgroups) B \
			LEFT JOIN $(layer_name) E \
			ON E.id = B.ID" \
		-dialect SQLITE \
		$(name).shp \
		$(source_zip)

# download original shapefile
$(source_zip) :
	curl -o $(source_zip) $(source_url)

upload : $(name)__scored.zip
	mapbox upload bga-pjudge.$(name) $(name)__scored.zip

clean :
	rm -rf $(name)*
