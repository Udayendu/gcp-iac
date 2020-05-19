# Google infrastructure as code using both ansible &amp; terraform.

- For Terraform based automation:

    a. Download teh latest terraform binary for linux operating system:
    ```
    # wget https://releases.hashicorp.com/terraform/0.12.25/terraform_0.12.25_linux_amd64.zip
    ```

    b. Extract it and move to '/usr/bin' location to use it as a command:
    ```
    # unzip terraform_0.12.25_linux_amd64.zip
    # mv terraform /usr/bin
    ```

    c. Create a 'main.tf' in your terraform automation directory and initialize the terrafom to use google as a provider:
    ```
    # vim  main.tf
      
    provider "google" {
      project = "GCP Solution Architect Design"
      # Get the 'credentials_file.json' from the API & Services section in your GCP account
      credentials = file(".credentials_file.json")  
      region  = "asia-south1"
      zone    = "asia-south1-b"
    }
    ```
    ```
    # terraform init
    # terraform providers
      .
      └── provider.google
    ```

    Now your provision server is ready to communicate with GCP platform related to the services that you have selected wile creating the services key.
