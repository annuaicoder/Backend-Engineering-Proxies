
# 🛡️ Understanding Proxies in Backend Engineering

A **proxy** is a server that sits between a client and a destination server. It intercepts requests, processes or modifies them, and then forwards them to the appropriate destination.

---

## 📘 Table of Contents

1. [Forward Proxy](#forward-proxy)
2. [Reverse Proxy](#reverse-proxy)
3. [Key Differences](#key-differences)
4. [Use Cases](#use-cases)
5. [Example Tools](#example-tools)
6. [How to Set Up (Quick Examples)](#how-to-set-up-quick-examples)
7. [Security Considerations](#security-considerations)
8. [Visual Diagrams](#visual-diagrams)

---

## 🔁 Forward Proxy

A **forward proxy** acts on behalf of the **client**. It sits between the client and the internet, forwarding requests and optionally modifying them.

**Typical Use Cases:**
- Bypassing geo-blocks
- Content filtering
- Hiding client IP addresses

**Example:**
Client → Forward Proxy → Target Server

yaml
Copy
Edit

### Real-World Example
A company firewall might use a forward proxy to prevent employees from accessing certain websites.

---

## 🔄 Reverse Proxy

A **reverse proxy** sits in front of **backend servers**, acting on behalf of them. It intercepts incoming requests and forwards them to the appropriate server.

**Typical Use Cases:**
- Load balancing
- SSL termination
- Caching/static content delivery
- Protecting backend services

**Example:**
Client → Reverse Proxy → App Server
→ Auth Server
→ Static Server

yaml
Copy
Edit

---

## 🔍 Key Differences

| Feature              | Forward Proxy           | Reverse Proxy           |
|----------------------|-------------------------|--------------------------|
| Position             | Between client & server | Between server & client |
| Used by              | Clients (e.g., browsers)| Servers (e.g., Nginx)   |
| Goal                 | Hide clients            | Hide servers             |
| Typical Use          | Privacy, Filtering      | Load Balancing, SSL     |

---

## ⚙️ Use Cases

### Forward Proxies
- Anonymous browsing
- Bypassing IP bans or censorship
- Filtering unwanted content

### Reverse Proxies
- Routing traffic to microservices
- Load balancing user traffic
- DDoS protection
- Serving cached/static content (e.g., CDN)

---

## 🧰 Example Tools

| Tool     | Type            | Notes                     |
|----------|------------------|---------------------------|
| Squid    | Forward Proxy    | Often used in networks    |
| Nginx    | Reverse Proxy    | High-performance, flexible|
| HAProxy  | Reverse Proxy    | Load balancing focus      |
| Apache   | Both             | Versatile but heavier     |
| Caddy    | Reverse Proxy    | Auto HTTPS, simple config |

---

## 🚀 How to Set Up (Quick Examples)

### Nginx as Reverse Proxy
```nginx
server {
    listen 80;
    location / {
        proxy_pass http://localhost:3000;
    }
}
Squid as Forward Proxy
# Example: Start Squid (on Ubuntu)
sudo apt install squid
sudo systemctl start squid
🔒 Security Considerations
🔐 Forward proxies can be misused for anonymity or botnets.

🛡️ Reverse proxies can become a single point of failure if not hardened.

Use firewalls, rate limiting, and TLS to protect both proxy types.

🖼️ Visual Diagrams
Forward Proxy
[Client] ---> [Forward Proxy] ---> [Internet/Server]
Reverse Proxy
[Client] ---> [Reverse Proxy] ---> [App Server]
                                  ---> [API Server]
                                  ---> [Static Server]
🧠 Summary
Forward Proxies protect or control the client.

Reverse Proxies protect or control the server.

Each plays a critical role in modern backend architecture, especially in microservices, DevOps, and security.

✍️ Author
Created by @codewithanas / @annuaicoder, for educational use in the Reverse Proxy Deep Dive repo.


