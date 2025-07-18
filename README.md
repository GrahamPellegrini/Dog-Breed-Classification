<h1 align="center">Dog Breed Classification – ImageNet</h1>

<p align="center">
  <a href="https://www.um.edu.mt/courses/studyunit/CCE3207">
    <img src="https://img.shields.io/badge/University%20of%20Malta-CCE3207-blue?style=for-the-badge&logo=opencv&logoColor=white" alt="CCE3207 Course">
  </a>
  <a href="https://pytorch.org/">
    <img src="https://img.shields.io/badge/Built%20with-PyTorch-red?style=for-the-badge&logo=pytorch" alt="PyTorch">
  </a>
  <a href="https://image-net.org/">
    <img src="https://img.shields.io/badge/Dataset-ImageNet%20Dogs-yellow?style=for-the-badge&logo=data" alt="ImageNet Dogs Dataset">
  </a>
</p>

<p align="center">
  End-to-end pipeline for dog breed classification using deep learning in PyTorch, applied to the ImageNet Dogs dataset. This project was developed as part of the study unit <a href="https://www.um.edu.mt/courses/studyunit/CCE3207"><strong>CCE3207 – Introduction to Computer Vision</strong></a> under the supervision of <a href="https://www.um.edu.mt/profile/christianpgalea">Dr. Christian Galea</a>.
</p>

---

## 🐶 Project Overview

This project implements a full training and evaluation pipeline for a deep learning-based dog breed classification model. The pipeline includes:

- Exploratory data analysis
- Custom dataset loading with bounding box cropping
- Transfer learning using pretrained CNNs
- Model training, validation, and evaluation
- Final predictions on unseen data

The project is implemented within a single annotated Jupyter notebook, demonstrating practical computer vision techniques and model interpretability strategies.

---

## 🧠 Problem Statement

The task involves classifying dog breeds from images in the **ImageNet Dogs** subset. Each image is annotated with a bounding box and a breed label. The challenges addressed include:

- Handling class imbalance across 120+ breeds
- Automating image preprocessing and augmentation
- Efficient training using GPU acceleration
- Managing large-scale image datasets using PyTorch `Dataset` and `DataLoader`

---

## 📂 Folder Structure

```
.
├── Assignment/
│   ├── assignment.ipynb       # Main Jupyter notebook (contains full pipeline)
│   ├── labels.txt             # Mapping of class indices to dog breed labels
│   └── model/                 # Saved model folders (per experiment)
│       ├── resnet18/
│       ├── efficientnet_b0/
│       └── ...
└── README.md
```

---

## 🚀 Key Features

- 📊 **Data Exploration**: Insights into class distribution, image sizes, and bounding box statistics.
- 🧾 **Custom Dataset Class**: Crops and resizes images based on bounding boxes for accurate feature learning.
- 🔁 **Transfer Learning**: Fine-tunes pretrained ResNet and EfficientNet backbones on dog breeds.
- 🧪 **Evaluation Metrics**: Accuracy, confusion matrix, and top-k classification score analysis.
- 🧠 **Model Selection**: Compares multiple CNN backbones and training hyperparameters.

---

## 🛠️ Dependencies

The project uses the following Python libraries:

- `PyTorch`, `torchvision`
- `OpenCV`, `Pillow`, `xml`
- `matplotlib`, `numpy`, `os`

> ⚠️ All code was executed using GPU acceleration on the Networks lab systems provided by the university.

---

## 🧪 How to Run

1. Clone the repository:
```bash
git clone https://github.com/GrahamPellegrini/Dog-Breed-Classification.git
```

2. Open `assignment.ipynb` in JupyterLab or VSCode.

3. Ensure the dataset is available under a valid path:
```
/opt/nfs/shared/images/ImageNetDogs
```
> Alternatively, update the notebook to point to a custom dataset path of your choice.

4. Run all notebook cells sequentially to train and evaluate models.

---

## 📊 Results Snapshot

| Model            | Accuracy | Top-5 Accuracy | Observations                    |
|------------------|----------|----------------|---------------------------------|
| ResNet18         | ~80%     | ~95%           | Fast convergence, good baseline |
| EfficientNet-B0  | ~85%     | ~97%           | Better generalisation, slower training |

> Full training logs and checkpoints are stored under `model/`.

---

---

## 📇 Author

**Graham Pellegrini**  
B.Eng. (Hons) Computer Engineering  
University of Malta  
GitHub: [@GrahamPellegrini](https://github.com/GrahamPellegrini)
