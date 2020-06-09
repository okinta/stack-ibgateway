FROM okinta/ibgateway

# Override the entrypoint so we can inject our custom configuration
COPY entrypoint.sh /custom-entrypoint.sh
RUN chmod o+x /custom-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/tini", "--", "/custom-entrypoint.sh"]
CMD ["gateway"]
