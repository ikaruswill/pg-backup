# docker-pg-backup
Simple Docker image for backing up PostgreSQL databases

## Usage
1. Create a `pg_backup.config` file to configure the connection to the PostgreSQL database. Refer to [pg_backup.config](pg_backup.config) for examples.
1. Run this Docker image:
```bash
$ docker run -it --rm \
  -v ./backups:/backups
  -v /path/to/pg_backup.config:/pg_backup.config
  -e PGPASSWORD='yourcomplexpassword'
  ikaruswill/pg-backup
```