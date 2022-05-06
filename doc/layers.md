# Galleon layers defined by the cloud feature-pack

## cloud-default-config

A layer that allows to provision the configuration that used to be present in the default server located in EAP 7.4 s2i builder image.

NB: When provisioning this layer, all the server JBoss Modules modules, even not in use by the server configuration, are installed.

# WildFly Galleon layers adjusted by the cloud feature-pack

## base-server

The socket binding port offset can only be configured using the ``PORT_OFFSET`` env variable. 
``jboss.socket.binding.port-offset`` can't be used. The interface `bindAll` (0.0.0.0) is added to the configuration.

## ejb-dist-cache

jgroups `ee` channel uses the `tcp` stack instead of `udp`. `PING` and `MPING` protocols are removed.

## jpa

The hibernate cache-container default cache is `local-query`.

## jpa-distributed

The hibernate cache-container default cache is `local-query`. 
jgroups `ee` channel uses the `tcp` stack instead of `udp`. `PING` and `MPING` protocols are removed.

## logging

The logs are routed to the console.

## mail

The `mail-smtp` remote-destination host can be configured using the `OPENSHIFT_SMTP_HOST` env variable.

## management

The management-console is disabled.

## transactions

The `node-identifier` is set to the value of the `jboss.node.name` system property. The value of  
`jboss.node.name` is automatically computed at server startup.
The `recovery-listener` is enabled.

## undertow

The default `http-listener` has `proxy-address-forwarding` set to true. `http` and `https` socket-binding use the `bindAll` interface.

## webservices

`wsdl-host` is set to `jbossws.undefined.host`. `modify-wsdl-address` is set to `true`.

## web-clustering

The jgroups `ee` channel uses the `tcp` stack instead of `udp`. `PING` and `MPING` protocols are removed.
The infinispan `web` cache container default cache is a replicated cache (`repl` cache added by this layer).

