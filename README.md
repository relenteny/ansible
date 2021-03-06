# ansible

The ansible image contains a vanilla installation of Ansible. No additional plugins or modules are installed. The `ENTRYPOINT` is defined as a the script `/home/alpine/bin/startup.sh`. Arguments are passed to the script as command parameters. Based on the first parameter passed to the contain, the script determines that action to take. Parameters supported include:

* `--direct` - specifies that startup script should directly invoke `ansible`. Any parameters provided beyond `--direct` become parameters to `ansible`.
* `--script` - specifies that the startup script is to execute the remaining parameters as a shell script and its parameters. This may be useful for performing setup and configuration tasks before `ansible` is invoked. The startup script will not invoke `ansible`. `ansible` should be invoked as part of the specified script's tasks.
* `--shell` - specifies that the container is to be started with an interactive shell. This would typically be used with the the Docker or Kubernetes invocation pattern for interactive shells (e.g. `docker run -it` ...)
