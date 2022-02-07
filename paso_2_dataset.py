from torch.utils.data import Dataset
from torch.autograd import Variable
import torchvision.transforms as transforms
import torch.nn as nn
import numpy as np
import torch

from typing import List

import csv

#preprocesar los datos
class SignLanguageMNIST(Dataset):
    
    @staticmethod
    def get_label_mapping():
        
        #Asignamos todas las etiquetas a [0, 23] 
        #evolvemos el mapeo de las etiquetas del conjunto de datos [0, 23] a índices de letras [0, 25]
        mapping = list(range(25))
        mapping.pop(9)
        return mapping

    @staticmethod
    def read_label_samples_from_csv(path: str):
        
        #Tomamos la primera columna en CSV ya que es la etiqueta 
        #y los siguientes valores de una imagen 28x28 que son 784 pixeles 
        #son valores de píxeles de imagen 0-255.
        
        mapping = SignLanguageMNIST.get_label_mapping()
        labels, samples = [], []
        with open(path) as f:
            _ = next(f)  # skip header
            for line in csv.reader(f):
                label = int(line[0])
                labels.append(mapping.index(label))
                samples.append(list(map(int, line[1:])))
        return labels, samples

    def __init__(self,
            path: str="data/mnist_entrenar.csv",
            mean: List[float]=[0.485],
            std: List[float]=[0.229]):
        #path es la ruta donde esta el .csv que contiene la etiqueta, 'pixel0', 'pixel1'...
     
        labels, samples = SignLanguageMNIST.read_label_samples_from_csv(path)
        self._samples = np.array(samples, dtype=np.uint8).reshape((-1, 28, 28, 1))
        self._labels = np.array(labels, dtype=np.uint8).reshape((-1, 1))

        self._mean = mean
        self._std = std

    def __len__(self):
        #determinamos cuando termina la iteracion de los datos
        return len(self._labels)

    def __getitem__(self, idx):
        #devolvemos el diccionario que contiene la muestra y la etiqueta
        transform = transforms.Compose([
            transforms.ToPILImage(),
            transforms.RandomResizedCrop(28, scale=(0.8, 1.2)),
            transforms.ToTensor(),
            transforms.Normalize(mean=self._mean, std=self._std)])

        return {
            'image': transform(self._samples[idx]).float(),
            'label': torch.from_numpy(self._labels[idx]).float()
        }


def get_train_test_loaders(batch_size=32):
    #Cargamos el conjunto de datos para verificar nuestras funciones de utilidad
    trainset = SignLanguageMNIST('data/mnist_entrenar.csv')
    trainloader = torch.utils.data.DataLoader(trainset, batch_size=batch_size, shuffle=True)

    testset = SignLanguageMNIST('data/mnist_test.csv')
    testloader = torch.utils.data.DataLoader(testset, batch_size=batch_size, shuffle=False)
    return trainloader, testloader


if __name__ == '__main__':
    loader, _ = get_train_test_loaders(2)
    print(next(iter(loader)))
