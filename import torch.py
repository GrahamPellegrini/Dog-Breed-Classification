import torch

# Check if CUDA is available
cuda_available = torch.cuda.is_available()
print(f"CUDA Available: {cuda_available}")

# Get the name of the CUDA device
if cuda_available:
    device_name = torch.cuda.get_device_name(0)
    print(f"CUDA Device Name: {device_name}")

# Print the CUDA version being used by PyTorch
cuda_version = torch.version.cuda
print(f"PyTorch CUDA Version: {cuda_version}")