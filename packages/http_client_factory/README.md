# Http Client Factory

A very simple utility library that allows api clients in the project to create
an http client native to the platform: iOS, macOS, Android, or Web.

Using native clients is important for two main reasons:

  - It supports proxies, VPNs, etc much better for end-users
  - Since it supports proxies, it enables using developer tools such as mitm
    proxy, Charles Proxy, or ProxyMan
