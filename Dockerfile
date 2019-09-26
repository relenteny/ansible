#################################################################################################################################
# 
# Copyright 2019 Ray Elenteny
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
# modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software
# is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
# IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#################################################################################################################################
#
# An image with a vanilla installation of Ansible. No additional plugins or modules are installed.
#
#################################################################################################################################
#
# Image path: relenteny/ansible:2.8.5
#
#################################################################################################################################

FROM relenteny/python:3.7.4

LABEL relenteny.repository.url=https://github.com/relenteny/ansible
LABEL relenteny.ansible.version=2.8.5

COPY build/home/alpine /home/alpine/

USER root
RUN chown -R alpine.alpine /home/alpine

USER alpine
RUN /home/alpine/bin/install-requirements.sh /home/alpine/requirements.txt && \
    rm /home/alpine/requirements.txt && \
    chmod +x /home/alpine/bin/*.sh

ENTRYPOINT ["/home/alpine/bin/startup.sh"]
CMD []
