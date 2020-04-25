FROM okinta/ibgateway

# Override the entrypoint so we can inject our custom configuration
USER root
COPY entrypoint.sh /custom-entrypoint.sh
RUN chmod o+x /custom-entrypoint.sh
USER ibgateway

ENTRYPOINT ["/usr/local/bin/tini", "--", "/custom-entrypoint.sh"]
CMD ["gateway"]
