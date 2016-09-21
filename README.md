## The fMRIprep BIDS App

This is the BIDS-App version of fMRIprep

### Description
fMRIprep is a functional magnetic resonance imaging (fMRI) data pre-processing pipeline.
It performs basic processing steps (coregistration, normalization, unwarping, noise 
component extraction, segmentation, skullstripping etc.) providing outputs that make running
a variety of group level analyses (task based or resting state fMRI, graph theory measures, 
surface or volume, etc.) easy. fMRIrep is build around three principles:

  * Robustness - the pipeline adapts the preprocessing steps depending on the input dataset and 
    should provide results as good as possible independently of scanner make, scanning parameters 
    or presence of additional correction scans (such as fieldmaps)
  * Ease of use - thanks to dependance on the BIDS standard manual parameter input is reduced to a 
    minimum allow the pipelien to run in an automatic fashion.
  * "Glass box" philosophy - automation should not mean that one should not visually inspect the 
    results or understand the methods. Thus fMRIprep provides for each subject visual reports 
    detailing the accuracy of the most importatnt processing steps. This combined with the documentation 
    can help researchers to understand the process and decide which subjects should be kept for the 
    group level analysis.

### Documentation
http://fmriprep.readthedocs.io

### How to report errors
The documentation of this project is found here: http://fmriprep.readthedocs.org/en/latest/.

If you have a problem or would like to ask a question about how to use fmriprep, please 
submit a question to NeuroStars.org with an fmriprep tag. NeuroStars.org is a platform similar 
to StackOverflow but dedicated to neuroinformatics.

All previous fmriprep questions are available here: http://neurostars.org/t/fmriprep/

To participate in the fmriprep development-related discussions please use the following mailing 
list: http://mail.python.org/mailman/listinfo/neuroimaging Please add [fmriprep] to the subject 
line when posting on the mailing list.

All bugs, concerns and enhancement requests for this software can be submitted here: 
https://github.com/poldracklab/fmriprep/issues.

### Acknowledgements
TBD

### Usage
To run it in participant level mode (for one participant):

    docker run -i --rm \
		-v /Users/filo/data/ds005:/bids_dataset:ro \
		-v /Users/filo/outputs:/outputs \
		bids/fmriprep \
		/bids_dataset /outputs participant --participant_label 01

Remove the `--participant_label <ids-list>` argument to get all subjects
processed.

This app does not have a group level

### Special considerations
None foreseen
