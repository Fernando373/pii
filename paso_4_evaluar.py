from torch.utils.data import Dataset
from torch.autograd import Variable
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
import torch
import numpy as np

import onnx
import onnxruntime as ort

from paso_2_dataset import get_train_test_loaders
from paso_3_entrenar import Net


def evaluate(outputs: Variable, labels: Variable) -> float:
    #Comparamos la letra pronosticada por la red neuronal con la letra real, para una sola imagen
    Y = labels.numpy()
    #convertimos las etiquetas en una matriz de NumPy 
    Yhat = np.argmax(outputs, axis=1)
    #comprueba si la clase pronosticada coincide con la clase de la etiqueta
    # np.sum mostrará el número de muestras que se clasificaron correctamente.
    return float(np.sum(Yhat == Y))


def batch_evaluate(
        net: Net,
        dataloader: torch.utils.data.DataLoader) -> float:
    #Evaluamos la red neuronal por lotes, ya que es demasiado grande
    score = n = 0.0
    #batch grupo de imagenes almacenadas como un solo tensor
    for batch in dataloader:
        n += len(batch['image'])
        outputs = net(batch['image'])
        #convierte los resultados en una matriz de NumPy si es necesario
        if isinstance(outputs, torch.Tensor):
            outputs = outputs.detach().numpy()
        score += evaluate(outputs, batch['label'][:, 0])
    return score / n


def validate():
    trainloader, testloader = get_train_test_loaders()
    net = Net().float().eval()
    #Cargamos una red neuronal previamente entrenada y evalúa su rendimiento con respecto 
    #al conjunto de datos del lenguaje de señas proporcionado.
    pretrained_model = torch.load("checkpoint.pth")
    net.load_state_dict(pretrained_model)

    print('=' * 10, 'PyTorch', '=' * 10)
    train_acc = batch_evaluate(net, trainloader) * 100.
    print('Precision de entrenamiento: %.1f' % train_acc)
    test_acc = batch_evaluate(net, testloader) * 100.
    print('Precision de la validacion: %.1f' % test_acc)

    trainloader, testloader = get_train_test_loaders(1)

    # exportamos el modelo a uno binario con onnx
    fname = "lenguaje.onnx"
    dummy = torch.randn(1, 1, 28, 28)
    torch.onnx.export(net, dummy, fname, input_names=['input'])

    # comprobamos el modelo exportado
    model = onnx.load(fname)
    onnx.checker.check_model(model)  # comprobar que el modelo está bien formado

    # crear una sesión ejecutable con el modelo exportado
    ort_session = ort.InferenceSession(fname)
    net = lambda inp: ort_session.run(None, {'input': inp.data.numpy()})[0]

    print('=' * 10, 'ONNX', '=' * 10)
    train_acc = batch_evaluate(net, trainloader) * 100.
    print('Precision de entrenamineto: %.1f' % train_acc)
    test_acc = batch_evaluate(net, testloader) * 100.
    print('Precision de validacion: %.1f' % test_acc)


if __name__ == '__main__':
    validate()
