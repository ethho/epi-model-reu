# 20200625_reu_mentoring
Ethan Ho June 25, 2020

* Project ideas: Kelly
    * Are pets dead-end spillover hosts or infectious hosts?
    * How does variabiligy in SARS-CoV-2 phylogenic subtypes drive transmission?
        * Is it possible to tease out effect of viral phenotype from an observed R(t)?
        * How about metrics other than R(0) and R(t)?

## COVID in Domestic Animals

### Literature

* [Comparison of spike protein in pets vs. humans vs. intermediate hosts](https://jvi.asm.org/content/early/2020/05/14/JVI.00831-20.abstract)
* [Cats in Wuhan test positive by serological test](https://www.biorxiv.org/content/10.1101/2020.04.01.021196v1.abstract)
    * n = 102
    * Neutralization titers were higher for cats with COVID-19 positive owners than for hospital or stray cats
* [SCV-1 disease progression in cats and ferrets (2003)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7094990/)
    * We **could** assume that incubation/recovery periods in cats are the same in SARS-CoV-2 and SCV
* [French cats contract COVID-19 from their positive owners](https://onlinelibrary.wiley.com/doi/full/10.1111/tbed.13659?casa_token=d0tZrTWu01IAAAAA%3A6h8pHPmlakz_yLJTTpkry6LL-bktehzYU_7iiN1iJr_2-ChggqCJw4Hiep1dJQVo5lMA6sgNgErBVYjT)
    * In their opinion: "There is currently no evidence that cats can spread COVID‐19 and owners should not abandon their pets or compromise their welfare."
    * There is no evidence for cats being infectious hosts as of yet.
* [Transmission of SARS-CoV-2 in Domestic Cats](https://www.nejm.org/doi/10.1056/NEJMc2013400)
    * Observed transmission **between** domestic cats
* [H7N2 influenza outbreak in NYC cat shelters](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5708219/)
* [Zookeeper infects tiger in NYC](https://www.aphis.usda.gov/aphis/newsroom/news/sa_by_date/sa-2020/ny-zoo-covid-19)
* [Science: Susceptibility of ferrets, cats, dogs, and other domesticated animals to SARS–coronavirus 2](https://science.sciencemag.org/content/368/6494/1016)
    * Airborne transmission between domestic cats is possible
    * Dogs have reduced susceptibility
    * "Ferrets and cats differ by only two amino acids in the SARS-CoV-2 spike-contacting regions of ACE2 (table S1); therefore, the underlying mechanism that prevents the replication of SARS-CoV-2 in the lower respiratory tract of ferrets (but not cats) remains to be investigated."
    * [Cited by](https://scholar.google.com/scholar?cites=734169500467094649&as_sdt=4005&sciodt=0,6&hl=en)
* [Structural study of cross-species ACE2 receptor homology][1]
    * "The approach we used for ACE2 can be extended to other cellular proteins known to be involved in coronavirus infection and immunity to better understand infection, transmission, inflammatory responses and disease progression."
* [Transmembrane serine proteases cleave a specific S protein sequence](https://www.biorxiv.org/content/10.1101/2020.02.08.926006v3.full)
    * After viral S protein binding host ACE2 receptor, these serine proteases (TMPRSSs) cleave the S protein resulting in host cell membrane fusion.
    * Insertion of a specific sequence into the viral S protein improves cleavage efficiency
* [Review of SARS and MERS animal viruses](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4793273/)
* [(Viral) homology-based protein docking between spike and ACE2](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7221370/)
* [An earlier (March) homology study of ACE2](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7081895/)

### Takeaways

* Many non-human animals such as ferrets, cats, and bats are capable of serving as infectious intermediate hosts.
* Concerning domesticated animals, cats and ferrets appear to be the most susceptible to infection.
* Dogs appear to be less susceptible.
* Potential idea: extrapolate on the [Damas et al][1] homology study
    * The Damas study uses a multi-faceted approach to computing the risk score. There are also simpler "score" analyses that are cited in the Damas paper.
    * Replicate the "susceptibilty score" calculation, but for a different disease target
    * What is the sequence homology of TMPRSSs between different mammals? Would the risk score for a given species be the same for ACE2 and TMPRSS?

## Damas et al Project

### Big Science Questions

#### The same question at different scales:

* How does genetic variation influence interactions between host and virus?
* How does genetic variation in the host affect its susceptibility to viral infection?
* How does variation in proteins involved in membrane fusion affect the ability of a viral particle to infiltrate cells?
* Does variation in trans-membrane serine proteases (TMPRSSs) result in varying cleavage efficiencies of the SARS-CoV-2 spike protein (S protein)?
* A similar, equally important question: does variation in the _viral_ spike protein affect cleavage efficiency?

#### What do we mean by "variation"?

* Genetic variation in host proteins
    1. How similar is the sequence of TMPRSS2 _between_ different species?
        i. Potential domesticated intermediate hosts: dogs, cats, cattle
        ii. Intemediate hosts from wild animal populations: pangolin, bats, mice
    1. How similar is the sequence of TMPRSS2 _within_ a species?
        i. Presumably, this would be humans
* Genetic variation in viral proteins
    1. Do different variants of S protein more or less susceptible to cleavage by the host TMPRSS2?

### Cellular Context

![Role of TMPRSS2 in SARS-CoV-2 disease progression](file:assets/img/tmprss1.jpg)

### Literature highlights

* [Damas et al][1]
    * Comparative genomic, structural, and evolutionary analysis of ACE2
        * Genomic
            * Ranked homologs _low_ to _high_ depending on % identity to human ACE2, looking only at residues of interest
        * Structural
            * Starting from structure of human ACE2 bound to S protein, SSMs were scored based on estimated favorability of interaction
            * "Favorability" is determined by finding the local rotamer minimum with Chimera, then assigning neutral, weakened, or unfavorable at each site, via visual inspection
            * Identified from this structure a number of residues of interest in human ACE2
            * Looked at ACE2 homology _within_ humans as well
* [Meng et al](https://www.biorxiv.org/content/10.1101/2020.02.08.926006v3.full)
    * Identifies important binding residues in S protein priming, such as catalytic triad and binding pocket Arg
* [TMPRSS SNPs that alter SARS-CoV-2 susceptibility between human populations](https://www.tandfonline.com/doi/full/10.1080/07391102.2020.1767690?casa_token=Xu-m0LjauA0AAAAA%3AmZAUfJtfonZ5UVbgTqciAlx0i5KR5as2B_npfSoksujXioy2UpBwMl7Dc227pKy5F4m_F6WawTdT6yY)
    * An _in silico_ structural analysis
    * Tools that were used to assess TMPRSS _function_, given _sequence_:
        * [Phyre2](http://www.sbg.bio.ic.ac.uk/%E2%88%BCphyre2/html/page.cgi?id=index)
            * Also used for determining how each variant would disrupt 2º structure
        * [SIFT](https://sift.bii.a-star.edu.sg/)
        * [POLYPHEN-2](http://genetics.bwh.harvard.edu/pph2/)
        * [PROVEAN](http://provean.jcvi.org/index.php)
* [S protein is primed by TMPRSS2](https://www.sciencedirect.com/science/article/pii/S0092867420302294)

### How well conserved is TMPRSS2 between mammals?

* TMPRSS2 Uniprot accession: [O15393](https://www.uniprot.org/uniprot/O15393)
    * Two EggNOG accessions linked from UniProt:
        * [KOG3627](http://eggnog45.embl.de/#/app/results?seqid=O15393&target_nogs=KOG3627)
        * [COG5640](http://eggnog45.embl.de/#/app/results?seqid=O15393&target_nogs=COG5640)
    * Phylogeny databases such as EggNOG provide sequence homology for:
        * Canis lupus familiaris (dog)
        * Felis catus (cat)
        * ...and many more organisms across domains
* A [quick BLASTp](https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastSearch&VIEW_SEARCH=on&UNIQ_SEARCH_NAME=A_SearchOptions_1joUtH_2o8r_dtOfJ9tI3Ex_GTW6B_25jyAa) shows high sequence identity for:
    * Mice
    * Cattle
    * Other epidemiologically relevant species such as polar bear :)





[1]: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7263403/
