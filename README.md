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
      project = "gcp-solution-architect-design"
      # Get the 'credentials_file.json' from the API & Services section in your GCP account
      credentials = file("keys/.credentials_file.json")  
      region  = var.region_name
      zone    = var.zone_name


    [....]

    }
    ```

    Similarly create all the remaining folder with needed data as mentioned in the attached folder in github.
    Here is the folder structure:
    ```
    # tree gcp-iac/Terraform/
    gcp-iac/Terraform/
    ├── keys
    │   ├── privatekey.pem
    │   └── publickey.pem
    ├── main.tf
    ├── scripts
    │   └── web-install.sh
    ├── terraform.tfvars
    └── variable.tf

    2 directories, 6 files
    ```

    ```
    # terraform init
    # terraform providers
      .
      └── provider.google
    ```

    Now your provision server is ready to communicate with GCP platform related to the services that you have selected wile creating the services key.

    NOTE: Don't forget to create your credentials file under keys directory with '.credentials_file.json' name as a hidden file.   
