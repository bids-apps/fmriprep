FROM alpine

COPY version /version
COPY run_fmriprep.sh /run_fmriprep.sh
RUN chmod a+x /run_fmriprep.sh

ENTRYPOINT ["/run_fmriprep.sh"]
