# Minio Setup

1. **XXX:**
    ```bash
    secret-tool store --label="minio_root_password" secret minio_root_password

    secret-tool lookup secret "minio_root_password"

    export MINIO_ROOT_PASSWORD="$(secret-tool lookup secret 'minio_root_password')"
    ```

1. **Start the Container:**
    ```bash
    docker compose up -d
    ```

1. **View Container Logs:**
    ```bash
    docker compose logs -f minio
    ```

1. **Access the Container:**
    ```bash
    docker exec -it minio sh
    ```

1. **Stop the Container:**
    ```bash
    docker compose down
    ```

1. **Create user:**
    ```bash
    XXX
    ```

1. **Create Bucket:**
    ```bash
    XXX
    ```

1. **Create AccessKey:**
    ```bash
    XXX
    ```

1. **Access the Load Balancer:**
    - [https://edge-storage.lan.homelab](https://edge-storage.lan.homelab)
    - [https://edge-storage-01.lan.homelab](https://edge-storage-01.lan.homelab)

[Links](links.md "Links")

[MIT License](LICENSE "MIT License")

### Created by:

1. Luciano Sampaio.
