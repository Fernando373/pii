from torch.utils.data import Dataset
from torch.autograd import Variable
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
import torch

from paso_2_dataset import get_train_test_loaders
#definimos un modelo y lo entrenamos
class Net(nn.Module):
    def __init__(self):
        super(Net, self).__init__()
        #red neuronal de PyTorch con capas convulcionales, seguida de 3 capas conectadas
        self.conv1 = nn.Conv2d(1, 6, 3)
        self.pool = nn.MaxPool2d(2, 2)
        self.conv2 = nn.Conv2d(6, 6, 3)
        self.conv3 = nn.Conv2d(6, 16, 3)
        self.fc1 = nn.Linear(16 * 5 * 5, 120)
        self.fc2 = nn.Linear(120, 48)
        self.fc3 = nn.Linear(48, 24)

    def forward(self, x):
        x = F.relu(self.conv1(x))
        x = self.pool(F.relu(self.conv2(x)))
        x = self.pool(F.relu(self.conv3(x)))
        x = x.view(-1, 16 * 5 * 5)
        x = F.relu(self.fc1(x))
        x = F.relu(self.fc2(x))
        x = self.fc3(x)
        return x

def main():
    #iniciamos la red neuronal
    net = Net().float()
    criterion = nn.CrossEntropyLoss()
    #definimos una funcion de perdida  y los hiperparametros
    optimizer = optim.SGD(net.parameters(), lr=0.01, momentum=0.9)
    scheduler = optim.lr_scheduler.StepLR(optimizer, step_size=20, gamma=0.1)

    #entrenara por dos periodos 
    trainloader, _ = get_train_test_loaders()
    for epoch in range(22):  # recorremos el conjunto de datos varias veces
        train(net, criterion, optimizer, trainloader, epoch)
        scheduler.step()
    #los parámetros del modelo se guardarán
    torch.save(net.state_dict(), "checkpoint.pth")

def train(net, criterion, optimizer, trainloader, epoch):
    running_loss = 0.0
    for i, data in enumerate(trainloader, 0):
        #extraemos image y label del cargador del conjunto de datos
        inputs = Variable(data['image'].float())
        labels = Variable(data['label'].long())
        optimizer.zero_grad()

        # Propagacion hacia adelante forward + backward + optimize
        outputs = net(inputs)
        loss = criterion(outputs, labels[:, 0])
        loss.backward()
        optimizer.step()

        # mostramos las estadisticas
        running_loss += loss.item()
        if i % 100 == 0:
            print('[%d, %5d] perdida: %.6f' % (epoch, i, running_loss / (i + 1)))
            
if __name__ == '__main__':
    #invocamos la funcion main
    main()
