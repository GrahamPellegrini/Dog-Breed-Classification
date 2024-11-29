import torch

def check_gpu():
    if torch.cuda.is_available():
        print("CUDA is available. GPU is being used.")
        print(f"GPU Name: {torch.cuda.get_device_name(0)}")
        
        # Perform a simple tensor operation on the GPU
        tensor = torch.rand(10000, 10000).cuda()
        result = tensor * tensor
        
        print(f"Memory Allocated: {torch.cuda.memory_allocated(0)} bytes")
        print(f"Memory Cached: {torch.cuda.memory_reserved(0)} bytes")
    else:
        print("CUDA is not available. GPU is not being used.")

if __name__ == "__main__":
    check_gpu()