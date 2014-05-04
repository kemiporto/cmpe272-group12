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
import org.apache.hadoop.mapreduce.Mapper;
import org.bson.BSONObject;

/**
 * The Water Sightings yield mapper.
 */
public class WaterMapper extends Mapper<Object, BSONObject, Text, DoubleWritable> {

    private static final Log LOG = LogFactory.getLog(WaterMapper.class);

    @Override
    public void map(final Object obj, final BSONObject doc, final Context pContext) throws IOException, InterruptedException {
        Integer key = ((Integer) doc.get("YEAR"));
        Double precipitation = ((Double) doc.get("ANN"));
        pContext.write(new Text(String.valueOf(key)), new DoubleWritable(precipitation));
    }
}
