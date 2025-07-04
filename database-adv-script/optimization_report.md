## Optimization Report

### Initial Performance
- Original query execution time: 500ms

### Bottlenecks
- Missing indexes on foreign key columns
- Unfiltered full-table scans

### Optimizations Made
- Added indexes on `user_id`, `property_id`, and `booking_id`
- Selected only necessary columns

### Final Performance
- Optimized query execution time: 120ms
