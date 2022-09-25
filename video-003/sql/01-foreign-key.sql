ALTER TABLE title_principal
    ADD CONSTRAINT FK_person
        FOREIGN KEY (nconst) REFERENCES name_basic(nconst);
