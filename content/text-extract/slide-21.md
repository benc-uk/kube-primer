# Slide 21

Workloads that run to completion
Use Jobs for any workloads that run in batch or perform one off tasks
Jobs & CronJobs
A Job creates one or more pods and ensures that a specified number of them successfully terminate
Jobs can run in serial or parallel
Control of number of failures, completions, restart policy and level of parallelism
CronJobs allows you to schedule Jobs to be run
kind: Job
spec:
completions: 1
parallelism: 3
c3  Terminated: CompleteJob  Successful
