/*******************************************************************************
 * Copyright 2012 Apigee Corporation
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 ******************************************************************************/
package org.usergrid.batch.job;


import org.junit.*;
import org.usergrid.cassandra.Concurrent;
import org.usergrid.persistence.entities.JobData;
import java.util.concurrent.TimeUnit;

import static org.junit.Assert.assertTrue;


/**
 * Class to test job runtimes
 * 
 * @author tnine
 */
@Concurrent()
public class SchedulerRuntime1IT extends AbstractSchedulerRuntimeIT
{
  @Test
  public void basicScheduling() throws InterruptedException {
    int count = 1000;

    CountdownLatchJob counterJob = cassandraResource.getBean(CountdownLatchJob.class);
    // set the counter job latch size
    counterJob.setLatch(count);

    for (int i = 0; i < count; i++) {
      scheduler.createJob("countdownLatch", System.currentTimeMillis(), new JobData());
    }

    // now wait until everything fires
    boolean waited = counterJob.waitForCount(60, TimeUnit.SECONDS);
    assertTrue("Jobs ran", waited);
    }
}
