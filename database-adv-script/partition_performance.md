# Partitioning Performance Report

## Objective
Optimize query performance on the large Booking table by partitioning it based on `start_date`.

## Strategy
- Used PostgreSQL **RANGE partitioning** on the `start_date` column.
- Created partitions for 2023, 2024, and 2025.
- Migrated data from the original `Booking` table into the partitioned structure.

## Performance Results
Before partitioning:


## Observations
- The planner skipped scanning irrelevant partitions (e.g., 2023, 2025).
- Query execution time decreased significantly.
- Indexes on partitions can further boost performance.

## Conclusion
Partitioning by `start_date` greatly improves efficiency for time-based queries on the Booking table. Recommended for production-scale datasets.
