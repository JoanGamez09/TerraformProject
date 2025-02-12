# Terraform - Static Website Deployment on S3

## Project Description
This project uses Terraform to deploy a static website on a AWS S3. An S3 bucket is created to host the website, and a public URL is automatically generated to access the webpage.

---

## Technologies Used
- **Terraform** (for infrastructure as code)
- **S3** (to host the static website)

---

## Steps

### 1️⃣ **AWS Region Configuration**
The project is configured to run exclusively in the us-east-1 region. The provided region is validated to ensure it is correct before proceeding with resource creation.

### 2️⃣ **S3 Bucket Creation**
Terraform defines an `s3_website` module that creates an S3 bucket where the website will be stored. The bucket is named dynamically based on the Terraform workspace.

### 3️⃣ **Uploading the Website**
The bucket is configured to serve static files, with `index.html` as the main page.

### 4️⃣ **Generation of Outputs**
After deployment, Terraform displays the following outputs:
- **Bucket ARN**
- **Bucket Name**
- **Public Website URL**
---
