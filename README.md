# Arctic-shipping-technoeconomic-model
* [Repository description](#repository_description)
* [High level model description](#high_level_model_description)
* [Setup](#setup)

## Repository description
This repository contains a techno-economic model that assesses the economic competitiveness of shipping through the Arctic,
considering emission costs, written in MATLAB and a sample of the same model written in Python. I am currently in the process
of migrating the script to Python, which largely entails translating the MATLAB syntax into the correct Python format. As the Python 
version is still a work in progress, only the 'Arctic ice data processor' and 'Main' scripts are functional. Consequently, 
the key output in the Python version is the number of months a ship can transit through the Arctic based off its ice class, this is 
assuming a business as usual 4 degree warming scenario. The MATLAB model produces fully operational metrics that are being reported in my thesis. 

The structure under both versions is modular and this technique was deployed over a monolithic approach to ensure consistency between
different versions of the model. This approach facilitated the validation of this model, through benchmarking each function
against an empirical dataset and it also ensures that it is easier improve the model in future iterations, 
the modular technique can be seen with both MATLAB and Python versions. 

## High level description
The model uses defined Arctic routes and predetermined future Arctic ice projections to ascertain the operating performance of both
open water and ice class ships. The operating performance of the ship is an umbrella term which is inclusive of the ship's energy consumption,
fuel consumption, transport work and emissions. From the operating performance, the commercial performance can be deduced and this pertains to the reference
ship's capital, operating and voyage costs. What the model also does is include the cost of emissions using the theory of externalities
and marginal damage cost values, it then treats these emission costs as an additional cost which is not different from the financial expenses [^1]. This
is done for three Arctic routes and the Suez route. The unit cost per tonne is calculated for each reference vessel and normalised against the Suez value,
therefore values less than one mean the Arctic route is feasible and vice versa for greater than one. 

The technical specifications are then obtained from the IMO 4th GHG study and the Whole Ship Model (WSM), which was built using Python [^2] [^3]. The WSM script is not included in this repository, since it is the intellectual property of the UCL shipping group and its consulting arm UMAS. Nonetheless, WSM was used to obtain the design performance specifications for a range of bulkers, container ships and wet bulkers. 

## Setup
To run the MATLAB model, download the MATLAB repository and open the 'Main' script. Simply click 'Run' on the taskbar to obtain the model's peformance metrics, then
click run again to build illustrations using the model's outputs.

The model will save the outputs to folders 'RQ1' and 'RQ2'. The outputs in RQ1 refer to the difference that 
including emission costs has on the feasibility of Arctic shipping and under the RQ2 directory, the outputs which
are relevant to assessing the overall feasibility of Arctic shipping are stored there. 

To run the Python version, open the 'Main.py' file and simply press 'Run'. As it is still a wrok in progress,
the key output is the number of months an ice class and open water ship can transit through the Arctic in future years,
based off a 4 degree warming scenario. 

### MATLAB
* Download repository 
* Navigate to the local 'Arctic-shipping-technoeconomic-model-main\MATLAB...' directory
* Open the Main.m file using MATLAB
* Press 'Run' once to process the reference vessel performance metrics
* Press 'Run' again to acquire illustrations and to save them to their respective output directories, RQ1 contains illustrations that address how including emission externalities affect the competitiveness of Arctic shipping and RQ2 has illustrations which show the overall feasibility of shipping through the Arctic, inclusive of these externalities

### Python (Spyder 5.0.5)
* Download repository
* Navigate to the local 'Arctic-shipping-technoeconomic-model-main\Python...' directory
* Open the Main.py file 
* Click 'Run' and all the parameters will be processed
* Statements recording the number of months a ship can navigate through the northern sea route and north pole are returned in the kernel


[^1]: Lambert, J. et al. (2021) ‘A techno-economic environmental cost model for Arctic shipping’, Transportation Research Part A: Policy and Practice, 151, pp. 28–51. doi: 10.1016/j.tra.2021.06.022.
[^2]: IMO (2020) Fourth IMO GHG study, IMO. London. doi: 10.1017/CBO9781107415324.004.
[^3]: Calleya, J. et al. (2017) Whole Ship Model – A holistic early- stage simulation tool for designing energy efficient ships. London.

.




