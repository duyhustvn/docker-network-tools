FROM alpine:latest

# Install common network & troubleshooting tools
RUN apk add --no-cache \
    # HTTP/HTTPS and file transfers
    curl \                      

    # DNS utilities
    # dig, nslookup, host
    bind-tools \                    

    # ICMP / network testing
    # ping, ping6
    iputils \                       
    # full traceroute
    traceroute \                    

    # TCP/UDP connectivity tools
    # telnet, tftp, nc (netcat), traceroute-lite
    busybox-extras \                
    # advanced TCP/UDP testing & port forwarding
    socat \                         
    # port scanning, service detection
    nmap \                          

    # Interface and routing tools
    # ip (addr, link, route), ss
    iproute2 \                      
    # ifconfig, netstat, arp
    net-tools \                     

    # Packet capture & analysis
    # packet capture tool
    tcpdump \                       

    # Extra utilities for debugging
    bash 

CMD ["/bin/bash"]
