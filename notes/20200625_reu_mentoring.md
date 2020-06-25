# 20200625_reu_mentoring
Ethan Ho June 25, 2020

* Project ideas: Kelly
    * Are pets dead-end spillover hosts or infectious hosts?
    * How does variabiligy in SARS-CoV-2 phylogenic subtypes drive transmission?
        * Is it possible to tease out effect of viral phenotype from an observed R(t)?
        * How about metrics other than R(0) and R(t)?

### COVID in Domestic Animals

#### Literature

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
* [Structural study of cross-species ACE2 receptor homology](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7263403/)
    * "The approach we used for ACE2 can be extended to other cellular proteins known to be involved in coronavirus infection and immunity to better understand infection, transmission, inflammatory responses and disease progression."
* [Transmembrane serine proteases cleave a specific S protein sequence](https://www.biorxiv.org/content/10.1101/2020.02.08.926006v3.full)
    * After viral S protein binding host ACE2 receptor, these serine proteases (TMPRSSs) cleave the S protein resulting in host cell membrane fusion.
    * Insertion of a specific sequence into the viral S protein improves cleavage efficiency
* [Review of SARS and MERS animal viruses](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4793273/)
* [(Viral) homology-based protein docking between spike and ACE2](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7221370/)
* [An earlier (March) homology study of ACE2](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7081895/)

#### Takeaways

* Many non-human animals such as ferrets, cats, and bats are capable of serving as infectious intermediate hosts.
* Concerning domesticated animals, cats and ferrets appear to be the most susceptible to infection.
* Dogs appear to be less susceptible.
* Little population-scale data on transmission in domesticated animals, as far as I'm aware.
* Potential idea: replicate the [Damas et al](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7263403/) homology study
    * The Damas study uses a multi-faceted approach to computing the risk score. There are also simpler "score" analyses that are cited in this paper.
    * Replicate the "susceptibilty score" calculation, but for a different receptor target
        * TMPRSSs are low-hanging fruit here
    * What is the sequence homology of TMPRSSs between different mammals? Would the risk score for a given species be the same for ACE2 and TMPRSS?
