FROM quay.io/keycloak/keycloak:latest

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start-dev", 
     "--http-host=0.0.0.0", 
     "--http-port=8080", 
     "--hostname-strict=false", 
     "--hostname-url=https://keycloak-on-render-9r5z.onrender.com"]
