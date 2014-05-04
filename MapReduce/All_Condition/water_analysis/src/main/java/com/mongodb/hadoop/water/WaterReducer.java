/*
 * Copyright 2011 10gen Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.mongodb.hadoop.water;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;
import java.lang.String;

import java.io.IOException;

/**
 * The water sightings reducer.
 */
public class WaterReducer extends Reducer<Text, DoubleWritable, Text, Text> {
    
    private static final Log LOG = LogFactory.getLog(WaterReducer.class);

    @Override
    public void reduce(final Text year, final Iterable<DoubleWritable> index, final Context pContext)
        throws IOException, InterruptedException {
    	String conditionString = "";
        for (final DoubleWritable v : index) {
        	      
        	if( v.get() > 9.2 )
        	{
        		conditionString = "Wet";
        	}
        	else if( v.get() > 7.8 && v.get() < 9.2 )
        	{
        		conditionString = "Above Normal";
        	}
        	else if( v.get() > 6.5 && v.get() <= 7.8 )
        	{
        		conditionString = "Below Normal";
        	}
        	else if( v.get() > 5.4 && v.get() <= 6.5 )
        	{
        		conditionString = "Dry";
        	}
        	else
        	{
        		conditionString = "Critical";
        	}
        }

        pContext.write(year,new Text( conditionString ) );
    }
}
