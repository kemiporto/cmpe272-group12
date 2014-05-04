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

import java.io.IOException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

/**
 * The water sightings reducer.
 */
public class WaterReducer extends Reducer<Text, DoubleWritable, Text, DoubleWritable> {
    
    private static final Log LOG = LogFactory.getLog(WaterReducer.class);

    @Override
    public void reduce(final Text location, final Iterable<DoubleWritable> sightings, final Context pContext)
        throws IOException, InterruptedException {
        double count = 0;
        for (final DoubleWritable v : sightings) {
            LOG.debug("Location: " + location + " Value: " + v);
            count = v.get();
        }

        pContext.write(location, new DoubleWritable(count));
    }
}
