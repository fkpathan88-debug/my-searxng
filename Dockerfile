FROM searxng/searxng:latest

# Render के Port (10000) के साथ SearXNG को बाइंड करने के लिए
ENV SEARXNG_SETTINGS_PATH=/etc/searxng/settings.yml
ENV BIND_ADDRESS=0.0.0.0:10000

EXPOSE 10000
