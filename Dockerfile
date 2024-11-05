FROM neptunesoftware/planet9:v23.10.7

# Copy wait-for-it.sh into the container
COPY wait-for-it.sh /wait-for-it.sh

# Make sure the script is executable
RUN chmod +x /wait-for-it.sh

# Set default entrypoint to wait-for-it
ENTRYPOINT ["/wait-for-it.sh"]