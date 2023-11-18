# MySQL Perfomance comparison

### Insertion comparison with different innodb_flush_log_at_trx_commit.

#### I was inserting with a 150 database connections and a 400 parallel threads.

![Insertion comparison table.](./example_images/query_table_1.jpg)

### Selection perfomance comparison with different index.

![Selection comparison table.](./example_images/query_table_2.jpg)

# Note

You can run mariadb with command:

```bash
docker-compose up -d
```

In a folder named `source` all of the code i was using to compare all of the above.