FROM debian:buster

# Install OpenSSH server
RUN apt-get update \
    && apt-get install -y --no-install-recommends openssh-server \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user for SSH access
RUN useradd -m -d /home/user -s /bin/bash user \
    && mkdir -p /home/user/.ssh \
    && chown -R user:user /home/user

# Enable passwordless sudo (Optional, for convenience during testing)
RUN apt-get update \
    && apt-get install -y --no-install-recommends sudo \
    && echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Expose SSH port
EXPOSE 22

# Create the privilege separation directory
RUN mkdir /run/sshd

# Start SSH server
CMD ["/usr/sbin/sshd", "-D"]
# # Run the service in the foreground when starting the container
# CMD ["service", "ssh", "start", "-D"]
