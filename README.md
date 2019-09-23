# ansible
The ansible image contains a vanilla installation of Ansible. No additional plugins or modules are installed. The default `ENTRYPOINT` for instantiated containers is the ansible command. Additional arguments may be passed to ansible by specifying additional parameters when a container is instantiated.

Supporting files, tasks, playbooks, modules, plug-ins, etc. should be installed/configured by images inheriting from this image.

