SWE 645 – Assignment 1
Name: Mona Gurung

--------------------------------------------
Project Title:
Student Homepage and Survey Application
--------------------------------------------

Description:
This project consists of a student homepage and a student survey form created using HTML and CSS.
The homepage contains basic information and a link to the survey page. The survey form collects
student information and feedback about the university. The application is deployed using
Amazon S3 static website hosting and also on an Amazon EC2 instance.

--------------------------------------------
Files Included:
--------------------------------------------
- index.html       : Student homepage
- survey.html      : Student survey form
- error.html       : Custom 404 error page
- aws.jpg
- css.jpg
- header.jpg
- html.jpg
- static.jpg
- README.txt       : Project documentation

--------------------------------------------
Part 1: Local Setup
--------------------------------------------
1. The HTML files were created using a W3.CSS template.
2. index.html serves as the homepage.
3. survey.html contains the student survey form and is linked from index.html.
4. All files were tested locally in a web browser to ensure proper functionality.

--------------------------------------------
Part 2: Deployment on Amazon S3
--------------------------------------------
Steps to create and configure S3 bucket:
1. Log in to AWS Management Console.
2. Navigate to S3 service.
3. Create a new bucket with a unique name.
4. Disable "Block all public access".
5. Enable static website hosting.
6. Upload index.html, survey.html, error.html, and image files.
7. Set index.html as the index document and error.html as the error document.
8. Make files publicly accessible.

S3 Website URL:
http://swe645-mona-gurung-assignment1.s3-website-us-east-1.amazonaws.com

--------------------------------------------
Part 3: Deployment on Amazon EC2
--------------------------------------------
Steps to create and configure EC2 instance:
1. Log in to AWS Management Console.
2. Navigate to EC2 service.
3. Launch a new EC2 instance using Amazon Linux 2023.
4. Configure security group to allow HTTP access (port 80).
5. Connect to the instance using SSH.
6. Install Apache web server (httpd).
7. Upload index.html, survey.html, error.html, and image files using SCP.
8. Move files to /var/www/html directory.
9. Configure custom 404 error page.
10. Restart the Apache service and verify deployment.

EC2 Website URL:
http://3.85.14.194

--------------------------------------------
Testing:
--------------------------------------------
- Verified homepage loads correctly.
- Verified survey page is accessible from homepage.
- Verified all required form elements function properly.
- Verified application is accessible via S3 and EC2 URLs.
- Verified custom error page by accessing a random invalid URL 
  (e.g., http://3.85.14.194/random), which correctly displays error.html.

--------------------------------------------
Notes:
--------------------------------------------
All files include comments at the top describing their purpose.
The application was tested locally and after deployment to both Amazon S3 and Amazon EC2 before submission.
