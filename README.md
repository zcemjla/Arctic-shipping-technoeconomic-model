# Arctic-shipping-technoeconomic-model
* [Repository description](#repository_description)
* [High level model description](#high_level_model_description)
* [Setup](#setup)

## Repository description
This repository contains two versions of the same model, one version is written in MATLAB and the other
is written in Python script. The MATLAB version is a complete version of the latest iteration for a techno-economic
model that I developed to to assess the economic competitiveness of Arctic shipping. I am currently in the process
of migrating the script to Python, which largely entails translating the syntax into the Python language. The Python 
version is still a work in progress, with only the 'Arctic ice data processor' and 'Main' scripts  functional. The structure
under both versions is modular and this technique was deployed over a monolithic approach to ensure consistency between
different versions of the model. This approach facilitated the validation of this model, through benchmarking each function
against an empirical dataset and it also ensures that it is easier improve the model in future iterations, 
the modular technique can be seen with both MATLAB and Python versions. 

## High level description
The model uses defined Arctic routes and predetermined future Arctic ice projections to ascertain the operating performance of both
open water and ice class ships. The operating performance of the ship is an umbrella term which is inclusive of its energy consumption,
fuel consumption and emissions. From the operating performance, the commercial performance can be deduced and this pertains to the reference
ship's capital, operating and voyage costs. What the model also does however is include the cost of emissions using the theory of externalities
and marginal damage cost values, it then treats these emission costs as an additional cost which is not different from the financial expenses [^1]. This
is done for three Arctic routes and the Suez route. The unit cost per tonne is calculated for each reference vessel and normalised against the Suez value,
therefore values less than one mean the Arctic route is feasible and vice versa for greater than one. The Python version aims to take teh natural logarithm
of the normalised metric, with values less than zero meaning the Arctic route is feasible and vice versa for greater than one. 

## Model process description
In terms of the processes, the model defines Arctic routes using longitude and latitude co-ordinates which are then cross referenced with Arctic ice projections, obtained from the CMIP 6 set of experiments [^2]. The technical specifications are then obtained from the IMO 4th GHG study and the Whole Ship Model (WSM), which was built using Python [^3] [^4]. The WSM script is not included in this repository, since it is the intellectual property of the UCL shipping group and its consulting arm UMAS. Nonetheless, WSM was used to obtain the design performance specifications for a range of bulkers, container ships and wet bulkers. Since these vessels pertain to open water ships, the IHS and Clarksons fleet registers are imported into the model so that statistical techniques like regression can be used to find the 

## Setup
To run the MATLAB model, download the MATLAB repository and open the 'Main' script. Simply click 'Run' on the taskbar to obtain the model's peformance metrics, then
click run again to build illustrations using the model's outputs.

The model will save the outputs to folders 'RQ1' and 'RQ2'. The outputs in RQ1 refer to the difference that 
including emission costs has on the feasibility of Arctic shipping and under the RQ2 directory, the outputs which
are relevant to assessing the overall feasibility of Arctic shipping are stored there. 

As the Python model is still a work in progress, it is not functional. However the Arctic ice data processor module works 
correctly and can be tested by inserting a breakpoint in the Main script after this function is called and returns its outputs. 

### MATLAB
* Download repository 
* Open the Main.m file using MATLAB
* Press 'Run' once to process the reference vessel performance metrics
* Press 'Run' again to acquire illustrations and to save them to their respective output directories

### Python (Spyder 5.0.5)
* Download repository
* Open the Main.py file 
* Insert a breakpoint at line 324 the line before the 'PP.Prepocessor' function is called
* Click 'Debug file' 
* Click 'Continue execution to breakpoint' to run to the breakpoint

[^1]: Lambert, J. et al. (2021) ‘A techno-economic environmental cost model for Arctic shipping’, Transportation Research Part A: Policy and Practice, 151, pp. 28–51. doi: 10.1016/j.tra.2021.06.022.

.




