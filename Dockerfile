FROM searxng/searxng:latest

# JSON फॉर्मेट को इनेबल करने के लिए एनवायरनमेंट वेरिएबल
ENV SEARXNG_SETTINGS_PATH=/etc/searxng/settings.yml
ENV BIND_ADDRESS=0.0.0.0:8080

# SearXNG की इंटरनल सेटिंग्स में से API/JSON ब्लॉक को हटाने के लिए कमांड
RUN sed -i 's/formats: \[html\]/formats: \[html, json\]/g' /etc/searxng/settings.yml

EXPOSE 8080
