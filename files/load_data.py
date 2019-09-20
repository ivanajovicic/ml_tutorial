import pandas as pd
import cudf

pd_X_train = pd.read_csv('X_train.csv',  delimiter=',')
pd_X_test = pd.read_csv('X_test.csv',  delimiter=',')
pd_y_train = pd.read_csv('y_train.csv',  delimiter=',')
pd_y_test = pd.read_csv('y_test.csv',  delimiter=',')
f = open('X_train.csv'); colNames = f.readline().strip().split(','); f.close()


cudf_X_train = cudf.read_csv('X_train.csv', delimiter=',' ,names=colNames)
cudf_X_test = cudf.read_csv('X_test.csv', delimiter=',', names=colNames)
cudf_y_train = cudf.read_csv('y_train.csv')
cudf_y_test = cudf.read_csv('y_test.csv')
