# docker-pg-backup
Simple Docker image for backing up PostgreSQL databases

## Usage
1. Create a `pg_backup.config` file to configure the connection to the PostgreSQL database. Refer to [pg-backup.config](pg-backup.config) for examples.
1. Run this Docker image:
```bash
$ docker run --rm \
  -v $pwd/backups:/backups \
  -v /path/to/pg-backup.config:/pg-backup.config \
  -e PGPASSWORD='yourcomplexpassword' \
  ikaruswill/pg-backup
```