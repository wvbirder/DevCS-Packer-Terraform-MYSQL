FROM hashicorp/packer:full
 
ADD build.json ./
ADD oci_api_key.pem ./

RUN packer build build.json
