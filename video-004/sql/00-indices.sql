create index title_principal_nconstAndJob_index
    on title_principal (nconst, job);

create index title_principal_job_index
    on title_principal (job);
