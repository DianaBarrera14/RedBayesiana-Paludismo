// Bayesian Network
//   Elvira format 

bnet  "RedBayesiana_Barrera_Diana" { 

// Network Properties

kindofgraph = "directed";
visualprecision = "0.00";
version = 1.0;
default node states = (present , absent);

// Variables 

node PALUDISMO(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =166;
pos_y =95;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("present" "absent");
}

node GOTA_GRUESA(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =503;
pos_y =94;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("positive" "negative");
}

// Links of the associated graph:

link PALUDISMO GOTA_GRUESA;

//Network Relationships: 

relation PALUDISMO { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.003 0.997 );
}

relation GOTA_GRUESA PALUDISMO { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.992 6.0E-4 0.008 0.9994 );
}

}
