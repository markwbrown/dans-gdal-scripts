#!/bin/sh
../gdal_trace_outline testcase2.tif -nodataval 255 -dp-toler .3 -out-cs xy -wkt-out zz.wkt
( echo -n "select isvalid(mpolyfromtext('" ; cat zz.wkt ; echo -n "'));" ) |psql sv_ion