# 20200703_mentoring_brainstorm

## Planned Modules / Tutorials

These modules are project-driven. This list does not contain other modules / tutorials for learning general HPC, data science, and software skills.

* **Module 1**: EggNOG descriptive stats demo
    * Mentor: Kelly P
    * Can you write a Python function that does the same thing as this notebook?
        * Returns list of Bio.Sequence instances
* **Module 2**: Sequence similarity module
    * Mentor: Ethan
    * Prerequisites
        * Reading on PSSMs
    * Compare human homolog to a different sequence
        * Compute a [log odds substitution matrix](http://biopython.org/DIST/docs/tutorial/Tutorial.html#sec390)
        * What are the log odds of the following polymorphisms?
            * Hydrophobic -> hydrophilic and vice versa
            * Aromatic -> non-aromatic and vice versa
        * Construct a more generalized PSSM for the above categories of "penalized polymorphisms"
    * Homework: repeat analysis with a different homolog
        * Generate a generalized PSSM for a different type of penalized polymorphism, such as acidic -> basic residues
* **Module 3**: Structure similarity module: what do these polymorphisms **look** like?
    * Overarching question: how do the above examined polymorphisms affect protein structure?
    * **Module 3a**: qualitative
        * Mentor: Ethan
        * Prerequisites
            * Reading on significance of single site mutations (hydrophobicity, side chain volumes, etc.)
        * Given list of residues of interest, what is the structural context of these residues?
            * Swiss-Prot structure -> NGL in Jupyter
        * Let's look at some of the substitutions qualitatively...
            * Y -> R
            * C -> A
            * Catalytic triad
        * Qualitatively, how do you think this would change:
            * Secondary structure
            * Tertiary structure
            * Substrate specificity: where is the binding site?...
        * Homework: dataframe of amino acid properties
            * `df.columns`: amino acid, 1-letter ID, is_hydrophobic, side-chain volume, charge, is_aromatic
    * **Module 3b**: develop a semi-quantitative model
        * Mentor: Ethan
        * Pre-requisites
            * PSSM from the seq. align module
                * Can use re-aligned sequences from ClustalW (Jaimie module)
                * We should have a log odds PSSM for each homolog, and each category of penalized mutation
            * From **3a**: a pandas DataFrame containing amino acid properties
        * Estimate the functional similarity of each homolog to human TMPRSS2
            * The main assumption we make here is that the biophysical differences at residue level affect overall structure, and thus overall function, of the protease.
        * Assign weights
            * Each category of penalized polymorphism (change in hydrophobicity, size, charge, etc.) is assigned a weight
                * `sum(weights) == 1.`
            * Penalized single site polymorphisms, ordered by significance
                * Hydrophobicity
                * Amino acid volumes
                * Charge
                * These are well-studied in literature, usually in the context of fold prediction
                    * [George Rose](https://onlinelibrary.wiley.com/doi/abs/10.1002/prot.340220202) is a good starting point.
        * Homework: write a function `functional_similarity_score`
            * Args: amino acid properties dataframe, dictionary of weights for each category of penalized polymorphism, reference sequence, sequence to compare
            * Returns: integer estimation of functional similarity to reference sequence
    * **Optional Module 3c**: compare to other models
        * How does our semi-quantitative model compare to others'?
            * [SIFT](http://www.sbg.bio.ic.ac.uk/~phyre2/html/page.cgi?id=index)
        * How much can we trust the Swiss-Prot simulated structure?
            * What is the RMSD between Swiss-Prot and Phyre2 structures?
* **Optional Module 4**: SEIR module
    * Mentor: Kelly P
    * Try to correlate per-species transmission to the outputs of a semi-quantitative model (`functional_similarity_score` or Phyre2), for organisms in which transmission is known (or can be assumed)
        * Get a beta value from this correlation
    * Then use the betas to simulate SEIR for organisms in which transmission is not known

## Misc. Resources

* [PhyreRisk](http://phyrerisk.bc.ic.ac.uk/search?action=fresh-search&searchTerm=O15393) conglomerates metrics on how variants would affect structure/function
