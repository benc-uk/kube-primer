# Jobs & CronJobs

## Use Jobs for any workloads that run in batch or perform one off tasks

Workloads that run to completion

- A Job creates one or more pods and ensures that a specified number of them successfully terminate
- Jobs can run in serial or parallel
- Control of number of failures, completions, restart policy and level of parallelism
- CronJobs allows you to schedule Jobs to be run

kind: Job
spec:
completions: 1
parallelism: 3

Job

c1

c2

c3

c3  Terminated: Complete Job  Successful
