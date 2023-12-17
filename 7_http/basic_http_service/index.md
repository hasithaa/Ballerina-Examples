---
title: "Creating a Greeting HTTP Service in Ballerina"
description: "Create a Greeting HTTP Service in Ballerina"
keywords:
    - HTTP service
    - resource function
weight: 70001
tags:
    - http
    - resource
    - service 
date: 2023-07-30
---

{{< example output=false test=true repo="https://github.com/hasithaa/Ballerina-Examples" repoPath="7_http/basic_http_service" hr="down"  >}}

## Overview

This sample contains a simple REST service that accepts HTTP requests at:

1. GET `http://localhost:9090/greet?name={name}`

## Running the sample

1. First, clone or open the code using above given options.
2. Then navigate to the directory and execute the following command to start the service:

    ```bash
    $ ballerina run
    ```

## Testing

{{< admonition tip >}}
As a good practice, you can write unit tests for your code to verify that it meets your expectations. You can use Ballerina's built-in testing framework to write unit tests. 
This example contains unit tests for each resource available in the service. 
The following command executes the unit tests that are available in the `tests` directory:

```bash
bal test
```
{{< /admonition >}}

You can test this service using either a web browser or the `curl` command in the terminal:

1. **Web Browser:** Simply navigate to `localhost:9090/greet?name=yourname` in your browser, replacing `{name}` with any name of your choosing. You should see a greeting message.
   
   e.g., `localhost:9090/greet?name=Ballerina`

2. **Curl:** Open a new terminal window and enter the following command, replacing `{name}` with any name of your choosing:

    ```bash
    curl localhost:9090/greet?name={name}
    ```

    e.g., `curl localhost:9090/greet?name=Ballerina`

    You should see a greeting message in the terminal.

## Stopping the Server

To stop the server, you can press `Ctrl + C` in the terminal where the server is running. This will terminate the Ballerina process and stop the server.
