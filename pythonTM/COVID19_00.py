#!/usr/bin/python

import numpy as np

import pyximport; pyximport.install(setup_args={
                              "include_dirs":np.get_include()},
                            reload_support=True)
import MultiClassTsetlinMachine


import argparse
parser = argparse.ArgumentParser(description='A tutorial of argparse!')
parser.add_argument("--c")
parser.add_argument("--state")
parser.add_argument("--t")
parser.add_argument("--s")
parser.add_argument("--e")


args = parser.parse_args()
c = args.c
state = args.state
t = args.t
s = args.s
e = args.e

# print 'Run Start'
# print 'Clauses = ', c
# print 'States = ', state
# print 'T =', t
# print 'S =', s
# print 'Epoch =', e

# Ensembles

ensemble_size = 10000
#700

# Parameters for the Tsetlin Machine
T = int(t)
s = float(s)
number_of_clauses = int(c)
states = int(state)

# Parameters of the pattern recognition problem
number_of_features = 13
number_of_classes = 5

# Training configuration
epochs = int(e)

# Loading of training and test data
data = np.loadtxt("covid19-00.txt").astype(dtype=np.int32)

accuracy_training = np.zeros(ensemble_size)
accuracy_test = np.zeros(ensemble_size)

for ensemble in xrange(ensemble_size):
	# print "ENSEMBLE", ensemble + 1
	# print 

	np.random.shuffle(data)

	X_training = data[:int(data.shape[0]*0.8),0:13] # Input features
	y_training = data[:int(data.shape[0]*0.8),13] # Target value

	X_test = data[int(data.shape[0]*0.8):,0:13] # Input features
	y_test = data[int(data.shape[0]*0.8):,13] # Target value

	# This is a multiclass variant of the Tsetlin Machine, capable of distinguishing between multiple classes
	tsetlin_machine = MultiClassTsetlinMachine.MultiClassTsetlinMachine(number_of_classes, number_of_clauses, number_of_features, states, s, T, boost_true_positive_feedback = 1)

	# Training of the Tsetlin Machine in batch mode. The Tsetlin Machine can also be trained online
	tsetlin_machine.fit(X_training, y_training, y_training.shape[0], epochs=epochs)

	# Some performacne statistics
	accuracy_test[ensemble] = tsetlin_machine.evaluate(X_test, y_test, y_test.shape[0])
	accuracy_training[ensemble] = tsetlin_machine.evaluate(X_training, y_training, y_training.shape[0])
	# if ensemble == 999:
	print " accuracy on test : %.1f +/- %.1f" % (np.mean(100*accuracy_test[:ensemble+1]), 1.96*np.std(100*accuracy_test[:ensemble+1])/np.sqrt(ensemble+1)) ,
	print " accuracy on training : %.1f +/- %.1f" % (np.mean(100*accuracy_training[:ensemble+1]), 1.96*np.std(100*accuracy_training[:ensemble+1])/np.sqrt(ensemble+1))
	# print

