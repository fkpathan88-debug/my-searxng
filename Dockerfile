FROM searxng/searxng:latest

# हमारी बनाई हुई settings.yml फ़ाइल को कंटेनर के अंदर कॉपी करने के लिए
COPY settings.yml /etc/searxng/settings.yml

ENV SEARXNG_SETTINGS_PATH=/etc/searxng/settings.yml
ENV BIND_ADDRESS=0.0.0.0:8080

EXPOSE 8080
