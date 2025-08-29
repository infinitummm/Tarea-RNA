#!/usr/bin/env wolframscript
(* ::Package:: *)


SetOptions[NetTrain, TargetDevice -> "CPU"];

andData = {{0, 0} -> 0, {0, 1} -> 0, {1, 0} -> 0, {1, 1} -> 1};

andNet = NetChain[{
  LinearLayer[1],
  ElementwiseLayer[LogisticSigmoid]
}];
andTrainedNet = NetTrain[andNet, andData, MaxTrainingRounds -> 1000];

Print["--- Compuerta AND ---"];
Manipulate[
  Row[{
    "Entrada: ", {input1, input2},
    " Salida: ", Round[andTrainedNet[{input1, input2}]] 
  }],
  {{input1, 0, "Entrada 1"}, {0, 1}},
  {{input2, 0, "Entrada 2"}, {0, 1}}
]

orData = {{0, 0} -> 0, {0, 1} -> 1, {1, 0} -> 1, {1, 1} -> 1};

orNet = NetChain[{
  LinearLayer[1],
  ElementwiseLayer[LogisticSigmoid]
}];
orTrainedNet = NetTrain[orNet, orData, MaxTrainingRounds -> 5000]; 

Print["\n--- Compuerta OR ---"];
Manipulate[
  Row[{
    "Entrada: ", {input1, input2},
    " Salida: ", Round[orTrainedNet[{input1, input2}]] 
  }],
  {{input1, 0, "Entrada 1"}, {0, 1}},
  {{input2, 0, "Entrada 2"}, {0, 1}}
]
xorData = {{0, 0} -> 0, {0, 1} -> 1, {1, 0} -> 1, {1, 1} -> 0};

xorNet = NetChain[{
  LinearLayer[2],
  ElementwiseLayer[LogisticSigmoid],
  LinearLayer[1],
  ElementwiseLayer[LogisticSigmoid] 
}];
xorTrainedNet = NetTrain[xorNet, xorData,
  MaxTrainingRounds -> 5000,
  Method -> {"SGD", "LearningRate" -> 0.1}
];

Print["\n--- Compuerta XOR ---"];
Manipulate[
  Row[{
    "Entrada: ", {input1, input2},
    " Salida: ", Round[xorTrainedNet[{input1, input2}]] 
  }],
  {{input1, 0, "Entrada 1"}, {0, 1}},
  {{input2, 0, "Entrada 2"}, {0, 1}}
]






