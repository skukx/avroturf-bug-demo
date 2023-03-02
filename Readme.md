# AvroTurf Bug Demo

This repo is for demonstrating and issue with the
[avroturf](https://github.com/dasch/avro_turf/issues/181) ruby gem.

Whether schemas are loaded correctly or not highly depends on the order of files
within the project.

To demonstrate you can run the project following instructions below.

## Running

You can clone this repo then run the following commands. A failure is expected. To fix
the failure, you may rename the `userz.avsc` file to `user_a.avsc` for example. Also be sure
to open the file and change the name within the schema as well.

### Docker

```
docker compose up
```

### Local Machine

```
bundle install
ruby app/main.rb
```
