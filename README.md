# File Upload Server

## Overview
A simple file upload server with FTP backend. This project is a demo for learning how block storages work.

## Features
- Serve multiple users
- File operations:
   - Upload / Download files
   - Delete files

## Setup and Installation
### Prerequisites
- Java Version 11+
- Maven installed

### Steps
1. Clone the repository:
```bash
$ git clone https://github.com/hpmtrung/fus.git
$ cd fus
```
2. Build the project:
```bash
$ mvn clean install  
```
3. Run the application:
```bash
$ mvn spring-boot:run
```

## References
- [Design S3 storage system - Bytebytego](https://blog.bytebytego.com/p/design-a-s3-like-storage-system)