# dataset snapshots

    Code
      head(tb_all, n = 20)
    Output
      # A tibble: 20 x 6
         country     country_code g_whoregion  year variable           value
         <chr>       <chr>        <chr>       <dbl> <chr>              <dbl>
       1 Afghanistan AFG          EMR          2018 budget_lab       2543262
       2 Afghanistan AFG          EMR          2018 budget_oth            NA
       3 Afghanistan AFG          EMR          2018 budget_staff      761828
       4 Afghanistan AFG          EMR          2018 cf_lab           2473391
       5 Afghanistan AFG          EMR          2018 cf_staff          741545
       6 Afghanistan AFG          EMR          2018 cf_tot_domestic   533779
       7 Afghanistan AFG          EMR          2018 cf_tot_gf        3178499
       8 Afghanistan AFG          EMR          2018 cf_tot_grnt      2523675
       9 Afghanistan AFG          EMR          2018 cf_tot_sources  10698483
      10 Afghanistan AFG          EMR          2018 cf_tot_usaid     4462530
      11 Afghanistan AFG          EMR          2019 budget_lab       2797414
      12 Afghanistan AFG          EMR          2019 budget_oth       5344361
      13 Afghanistan AFG          EMR          2019 budget_staff      915527
      14 Afghanistan AFG          EMR          2019 cf_lab           2208668
      15 Afghanistan AFG          EMR          2019 cf_staff          871931
      16 Afghanistan AFG          EMR          2019 cf_tot_domestic   511854
      17 Afghanistan AFG          EMR          2019 cf_tot_gf        6533095
      18 Afghanistan AFG          EMR          2019 cf_tot_grnt      3608394
      19 Afghanistan AFG          EMR          2019 cf_tot_sources  13419792
      20 Afghanistan AFG          EMR          2019 cf_tot_usaid     2766449

---

    Code
      head(tb_budget, n = 20)
    Output
      # A tibble: 20 x 6
         country     country_code g_whoregion  year variable           value
         <chr>       <chr>        <chr>       <dbl> <chr>              <dbl>
       1 Afghanistan AFG          EMR          2018 budget_lab       2543262
       2 Afghanistan AFG          EMR          2018 budget_oth            NA
       3 Afghanistan AFG          EMR          2018 budget_staff      761828
       4 Afghanistan AFG          EMR          2018 cf_lab           2473391
       5 Afghanistan AFG          EMR          2018 cf_staff          741545
       6 Afghanistan AFG          EMR          2018 cf_tot_domestic   533779
       7 Afghanistan AFG          EMR          2018 cf_tot_gf        3178499
       8 Afghanistan AFG          EMR          2018 cf_tot_grnt      2523675
       9 Afghanistan AFG          EMR          2018 cf_tot_sources  10698483
      10 Afghanistan AFG          EMR          2018 cf_tot_usaid     4462530
      11 Afghanistan AFG          EMR          2019 budget_lab       2797414
      12 Afghanistan AFG          EMR          2019 budget_oth       5344361
      13 Afghanistan AFG          EMR          2019 budget_staff      915527
      14 Afghanistan AFG          EMR          2019 cf_lab           2208668
      15 Afghanistan AFG          EMR          2019 cf_staff          871931
      16 Afghanistan AFG          EMR          2019 cf_tot_domestic   511854
      17 Afghanistan AFG          EMR          2019 cf_tot_gf        6533095
      18 Afghanistan AFG          EMR          2019 cf_tot_grnt      3608394
      19 Afghanistan AFG          EMR          2019 cf_tot_sources  13419792
      20 Afghanistan AFG          EMR          2019 cf_tot_usaid     2766449

---

    Code
      head(tb_community, n = 20)
    Output
      # A tibble: 20 x 6
         country     country_code g_whoregion  year variable               value
         <chr>       <chr>        <chr>       <dbl> <chr>                  <dbl>
       1 Afghanistan AFG          EMR          2013 bmu                       NA
       2 Afghanistan AFG          EMR          2013 bmu_community_impl        NA
       3 Afghanistan AFG          EMR          2013 bmu_ref_data              NA
       4 Afghanistan AFG          EMR          2013 bmu_rxsupport_data       661
       5 Afghanistan AFG          EMR          2013 bmu_rxsupport_data_coh    NA
       6 Afghanistan AFG          EMR          2013 notified_ref              NA
       7 Afghanistan AFG          EMR          2013 notified_ref_community    NA
       8 Afghanistan AFG          EMR          2014 bmu                      722
       9 Afghanistan AFG          EMR          2014 bmu_community_impl        NA
      10 Afghanistan AFG          EMR          2014 bmu_ref_data             661
      11 Afghanistan AFG          EMR          2014 bmu_rxsupport_data       506
      12 Afghanistan AFG          EMR          2014 bmu_rxsupport_data_coh   811
      13 Afghanistan AFG          EMR          2014 notified_ref           15946
      14 Afghanistan AFG          EMR          2014 notified_ref_community  1088
      15 Afghanistan AFG          EMR          2015 bmu                      708
      16 Afghanistan AFG          EMR          2015 bmu_community_impl       539
      17 Afghanistan AFG          EMR          2015 bmu_ref_data             539
      18 Afghanistan AFG          EMR          2015 bmu_rxsupport_data       750
      19 Afghanistan AFG          EMR          2015 bmu_rxsupport_data_coh 37001
      20 Afghanistan AFG          EMR          2015 notified_ref           35878

---

    Code
      head(tb_dictionary, n = 20)
    Output
      # A tibble: 20 x 3
         dataset      variable               definition                               
         <chr>        <chr>                  <chr>                                    
       1 tb_budget    budget_lab             Budget required for laboratory infrastru~
       2 tb_budget    budget_oth             Budget required for all other budget lin~
       3 tb_budget    budget_staff           Budget required for National TB Programm~
       4 tb_budget    cf_lab                 Expected funding for laboratory infrastr~
       5 tb_budget    cf_staff               Expected funding for National TB Program~
       6 tb_budget    cf_tot_domestic        Expected funding from domestic sources, ~
       7 tb_budget    cf_tot_gf              Expected funding from the Global Fund to~
       8 tb_budget    cf_tot_grnt            Expected funding from other sources (US ~
       9 tb_budget    cf_tot_sources         Total expected funding from all sources ~
      10 tb_budget    cf_tot_usaid           Expected funding from USAID (US Dollars) 
      11 tb_community bmu                    Number of TB Basic Management Units in t~
      12 tb_community bmu_community_impl     Number of TB Basic Management Units whic~
      13 tb_community bmu_ref_data           Number of Basic Management Units with da~
      14 tb_community bmu_rxsupport_data     Number of Basic Management Units with da~
      15 tb_community bmu_rxsupport_data_coh Total number of patients who started TB ~
      16 tb_community notified_ref           Total number of new and relapse TB cases~
      17 tb_community notified_ref_community Total number of new and relapse TB cases~
      18 tb_estimates c_cdr                  Case detection rate (all forms) [also kn~
      19 tb_estimates c_newinc_100k          Case notification rate, which is the tot~
      20 tb_estimates e_inc_100k             Estimated incidence (all forms) per 100 ~

---

    Code
      head(tb_estimates, n = 20)
    Output
      # A tibble: 20 x 6
         country     country_code g_whoregion  year variable         value
         <chr>       <chr>        <chr>       <dbl> <chr>            <dbl>
       1 Afghanistan AFG          EMR          2000 c_cdr               19
       2 Afghanistan AFG          EMR          2000 c_newinc_100k       36
       3 Afghanistan AFG          EMR          2000 e_inc_100k         190
       4 Afghanistan AFG          EMR          2000 e_inc_num        37000
       5 Afghanistan AFG          EMR          2000 e_mort_100k         68
       6 Afghanistan AFG          EMR          2000 e_pop_num     19542982
       7 Afghanistan AFG          EMR          2001 c_cdr               27
       8 Afghanistan AFG          EMR          2001 c_newinc_100k       51
       9 Afghanistan AFG          EMR          2001 e_inc_100k         189
      10 Afghanistan AFG          EMR          2001 e_inc_num        37000
      11 Afghanistan AFG          EMR          2001 e_mort_100k         63
      12 Afghanistan AFG          EMR          2001 e_pop_num     19688632
      13 Afghanistan AFG          EMR          2002 c_cdr               35
      14 Afghanistan AFG          EMR          2002 c_newinc_100k       66
      15 Afghanistan AFG          EMR          2002 e_inc_100k         189
      16 Afghanistan AFG          EMR          2002 e_inc_num        40000
      17 Afghanistan AFG          EMR          2002 e_mort_100k         57
      18 Afghanistan AFG          EMR          2002 e_pop_num     21000256
      19 Afghanistan AFG          EMR          2003 c_cdr               32
      20 Afghanistan AFG          EMR          2003 c_newinc_100k       61

---

    Code
      head(tb_expenditure, n = 20)
    Output
      # A tibble: 20 x 6
         country     country_code g_whoregion  year variable             value
         <chr>       <chr>        <chr>       <dbl> <chr>                <dbl>
       1 Afghanistan AFG          EMR          2017 rcvd_lab           2463321
       2 Afghanistan AFG          EMR          2017 rcvd_staff          625971
       3 Afghanistan AFG          EMR          2017 rcvd_tot_domestic       NA
       4 Afghanistan AFG          EMR          2017 rcvd_tot_gf        4088013
       5 Afghanistan AFG          EMR          2017 rcvd_tot_grnt      4583464
       6 Afghanistan AFG          EMR          2017 rcvd_tot_sources  12071477
       7 Afghanistan AFG          EMR          2017 rcvd_tot_usaid     3400000
       8 Afghanistan AFG          EMR          2018 rcvd_lab           1471438
       9 Afghanistan AFG          EMR          2018 rcvd_staff          706095
      10 Afghanistan AFG          EMR          2018 rcvd_tot_domestic   551664
      11 Afghanistan AFG          EMR          2018 rcvd_tot_gf        3946378
      12 Afghanistan AFG          EMR          2018 rcvd_tot_grnt      3826357
      13 Afghanistan AFG          EMR          2018 rcvd_tot_sources  12400144
      14 Afghanistan AFG          EMR          2018 rcvd_tot_usaid     4075745
      15 Afghanistan AFG          EMR          2019 rcvd_lab           2165197
      16 Afghanistan AFG          EMR          2019 rcvd_staff         1956088
      17 Afghanistan AFG          EMR          2019 rcvd_tot_domestic   284773
      18 Afghanistan AFG          EMR          2019 rcvd_tot_gf        6573762
      19 Afghanistan AFG          EMR          2019 rcvd_tot_grnt      4826365
      20 Afghanistan AFG          EMR          2019 rcvd_tot_sources  14984900

---

    Code
      head(tb_labs, n = 20)
    Output
      # A tibble: 20 x 6
         country     country_code g_whoregion  year variable              value
         <chr>       <chr>        <chr>       <dbl> <chr>                 <dbl>
       1 Afghanistan AFG          EMR          2009 culture                  NA
       2 Afghanistan AFG          EMR          2009 lab_cul                  NA
       3 Afghanistan AFG          EMR          2009 lab_sm                  596
       4 Afghanistan AFG          EMR          2009 smear                    NA
       5 Afghanistan AFG          EMR          2009 lab_xpert                NA
       6 Afghanistan AFG          EMR          2009 xpert                    NA
       7 Afghanistan AFG          EMR          2009 m_wrd                    NA
       8 Afghanistan AFG          EMR          2009 m_wrd_tests_performed    NA
       9 Afghanistan AFG          EMR          2009 m_wrd_tests_positive     NA
      10 Afghanistan AFG          EMR          2010 culture                  NA
      11 Afghanistan AFG          EMR          2010 lab_cul                   1
      12 Afghanistan AFG          EMR          2010 lab_sm                  600
      13 Afghanistan AFG          EMR          2010 smear                    NA
      14 Afghanistan AFG          EMR          2010 lab_xpert                NA
      15 Afghanistan AFG          EMR          2010 xpert                    NA
      16 Afghanistan AFG          EMR          2010 m_wrd                    NA
      17 Afghanistan AFG          EMR          2010 m_wrd_tests_performed    NA
      18 Afghanistan AFG          EMR          2010 m_wrd_tests_positive     NA
      19 Afghanistan AFG          EMR          2011 culture                  NA
      20 Afghanistan AFG          EMR          2011 lab_cul                   3

---

    Code
      head(tb_notifications, n = 20)
    Output
      # A tibble: 20 x 6
         country     country_code g_whoregion  year variable        value
         <chr>       <chr>        <chr>       <dbl> <chr>           <dbl>
       1 Afghanistan AFG          EMR          1980 conf_rrmdr_tx      NA
       2 Afghanistan AFG          EMR          1980 conf_xdr_tx        NA
       3 Afghanistan AFG          EMR          1980 new_clindx         NA
       4 Afghanistan AFG          EMR          1980 ret_rel_labconf    NA
       5 Afghanistan AFG          EMR          1980 c_newinc        71685
       6 Afghanistan AFG          EMR          1980 new_labconf        NA
       7 Afghanistan AFG          EMR          1981 conf_rrmdr_tx      NA
       8 Afghanistan AFG          EMR          1981 conf_xdr_tx        NA
       9 Afghanistan AFG          EMR          1981 new_clindx         NA
      10 Afghanistan AFG          EMR          1981 ret_rel_labconf    NA
      11 Afghanistan AFG          EMR          1981 c_newinc        71554
      12 Afghanistan AFG          EMR          1981 new_labconf        NA
      13 Afghanistan AFG          EMR          1982 conf_rrmdr_tx      NA
      14 Afghanistan AFG          EMR          1982 conf_xdr_tx        NA
      15 Afghanistan AFG          EMR          1982 new_clindx         NA
      16 Afghanistan AFG          EMR          1982 ret_rel_labconf    NA
      17 Afghanistan AFG          EMR          1982 c_newinc        41752
      18 Afghanistan AFG          EMR          1982 new_labconf        NA
      19 Afghanistan AFG          EMR          1983 conf_rrmdr_tx      NA
      20 Afghanistan AFG          EMR          1983 conf_xdr_tx        NA

---

    Code
      tail(tb_all, n = 20)
    Output
      # A tibble: 20 x 6
         country  country_code g_whoregion  year variable        value
         <chr>    <chr>        <chr>       <dbl> <chr>           <dbl>
       1 Zimbabwe ZWE          AFR          2019 c_newinc        21008
       2 Zimbabwe ZWE          AFR          2019 new_labconf     10061
       3 Zimbabwe ZWE          AFR          2020 conf_rrmdr_tx      NA
       4 Zimbabwe ZWE          AFR          2020 conf_xdr_tx        NA
       5 Zimbabwe ZWE          AFR          2020 new_clindx       5913
       6 Zimbabwe ZWE          AFR          2020 ret_rel_labconf   329
       7 Zimbabwe ZWE          AFR          2020 c_newinc        15728
       8 Zimbabwe ZWE          AFR          2020 new_labconf      8072
       9 Zimbabwe ZWE          AFR          2021 conf_rrmdr_tx      NA
      10 Zimbabwe ZWE          AFR          2021 conf_xdr_tx        NA
      11 Zimbabwe ZWE          AFR          2021 new_clindx       6228
      12 Zimbabwe ZWE          AFR          2021 ret_rel_labconf   329
      13 Zimbabwe ZWE          AFR          2021 c_newinc        16310
      14 Zimbabwe ZWE          AFR          2021 new_labconf      8311
      15 Zimbabwe ZWE          AFR          2022 conf_rrmdr_tx      NA
      16 Zimbabwe ZWE          AFR          2022 conf_xdr_tx        NA
      17 Zimbabwe ZWE          AFR          2022 new_clindx       6655
      18 Zimbabwe ZWE          AFR          2022 ret_rel_labconf   318
      19 Zimbabwe ZWE          AFR          2022 c_newinc        18222
      20 Zimbabwe ZWE          AFR          2022 new_labconf      9696

---

    Code
      tail(tb_budget, n = 20)
    Output
      # A tibble: 20 x 6
         country  country_code g_whoregion  year variable           value
         <chr>    <chr>        <chr>       <dbl> <chr>              <dbl>
       1 Zimbabwe ZWE          AFR          2022 budget_lab       3557975
       2 Zimbabwe ZWE          AFR          2022 budget_oth             0
       3 Zimbabwe ZWE          AFR          2022 budget_staff     2242980
       4 Zimbabwe ZWE          AFR          2022 cf_lab           1800050
       5 Zimbabwe ZWE          AFR          2022 cf_staff         2058819
       6 Zimbabwe ZWE          AFR          2022 cf_tot_domestic  1000000
       7 Zimbabwe ZWE          AFR          2022 cf_tot_gf        9487457
       8 Zimbabwe ZWE          AFR          2022 cf_tot_grnt      1301355
       9 Zimbabwe ZWE          AFR          2022 cf_tot_sources  14847642
      10 Zimbabwe ZWE          AFR          2022 cf_tot_usaid     3058830
      11 Zimbabwe ZWE          AFR          2023 budget_lab       4840102
      12 Zimbabwe ZWE          AFR          2023 budget_oth         19820
      13 Zimbabwe ZWE          AFR          2023 budget_staff     2164756
      14 Zimbabwe ZWE          AFR          2023 cf_lab           3644102
      15 Zimbabwe ZWE          AFR          2023 cf_staff         2164756
      16 Zimbabwe ZWE          AFR          2023 cf_tot_domestic  1000000
      17 Zimbabwe ZWE          AFR          2023 cf_tot_gf        5774773
      18 Zimbabwe ZWE          AFR          2023 cf_tot_grnt           NA
      19 Zimbabwe ZWE          AFR          2023 cf_tot_sources  16153683
      20 Zimbabwe ZWE          AFR          2023 cf_tot_usaid     9378910

---

    Code
      tail(tb_community, n = 20)
    Output
      # A tibble: 20 x 6
         country  country_code g_whoregion  year variable               value
         <chr>    <chr>        <chr>       <dbl> <chr>                  <dbl>
       1 Zimbabwe ZWE          AFR          2020 bmu_community_impl      1616
       2 Zimbabwe ZWE          AFR          2020 bmu_ref_data            1616
       3 Zimbabwe ZWE          AFR          2020 bmu_rxsupport_data      1650
       4 Zimbabwe ZWE          AFR          2020 bmu_rxsupport_data_coh 16041
       5 Zimbabwe ZWE          AFR          2020 notified_ref           16019
       6 Zimbabwe ZWE          AFR          2020 notified_ref_community  1788
       7 Zimbabwe ZWE          AFR          2021 bmu                     1650
       8 Zimbabwe ZWE          AFR          2021 bmu_community_impl      1650
       9 Zimbabwe ZWE          AFR          2021 bmu_ref_data            1650
      10 Zimbabwe ZWE          AFR          2021 bmu_rxsupport_data       220
      11 Zimbabwe ZWE          AFR          2021 bmu_rxsupport_data_coh 16576
      12 Zimbabwe ZWE          AFR          2021 notified_ref           16541
      13 Zimbabwe ZWE          AFR          2021 notified_ref_community  2174
      14 Zimbabwe ZWE          AFR          2022 bmu                      220
      15 Zimbabwe ZWE          AFR          2022 bmu_community_impl       220
      16 Zimbabwe ZWE          AFR          2022 bmu_ref_data             220
      17 Zimbabwe ZWE          AFR          2022 bmu_rxsupport_data        NA
      18 Zimbabwe ZWE          AFR          2022 bmu_rxsupport_data_coh    NA
      19 Zimbabwe ZWE          AFR          2022 notified_ref           18222
      20 Zimbabwe ZWE          AFR          2022 notified_ref_community  2775

---

    Code
      tail(tb_dictionary, n = 20)
    Output
      # A tibble: 20 x 3
         dataset          variable              definition                            
         <chr>            <chr>                 <chr>                                 
       1 tb_expenditure   rcvd_tot_domestic     Funding received from domestic source~
       2 tb_expenditure   rcvd_tot_gf           Funding received from the Global Fund~
       3 tb_expenditure   rcvd_tot_grnt         Funding received from other sources (~
       4 tb_expenditure   rcvd_tot_sources      Total funding received from all sourc~
       5 tb_expenditure   rcvd_tot_usaid        Funding received from USAID (US Dolla~
       6 tb_labs          culture               Number of sites providing TB diagnost~
       7 tb_labs          lab_cul               Number of laboratories providing TB d~
       8 tb_labs          lab_sm                Number of laboratories providing TB d~
       9 tb_labs          lab_xpert             Number of laboratories providing TB d~
      10 tb_labs          m_wrd                 Number of sites providing TB diagnost~
      11 tb_labs          m_wrd_tests_performed Total number of diagnostic tests perf~
      12 tb_labs          m_wrd_tests_positive  Number of positive results among the ~
      13 tb_labs          smear                 Number of sites providing TB diagnost~
      14 tb_labs          xpert                 Number of sites providing TB diagnost~
      15 tb_notifications c_newinc              Total of new and relapse cases and ca~
      16 tb_notifications conf_rrmdr_tx         Number of laboratory-confirmed rifamp~
      17 tb_notifications conf_xdr_tx           Number of laboratory-confirmed XDR-TB~
      18 tb_notifications new_clindx            New pulmonary clinically diagnosed TB~
      19 tb_notifications new_labconf           New pulmonary bacteriologically confi~
      20 tb_notifications ret_rel_labconf       Relapse  pulmonary bacteriologically ~

---

    Code
      tail(tb_estimates, n = 20)
    Output
      # A tibble: 20 x 6
         country  country_code g_whoregion  year variable         value
         <chr>    <chr>        <chr>       <dbl> <chr>            <dbl>
       1 Zimbabwe ZWE          AFR          2019 e_mort_100k         43
       2 Zimbabwe ZWE          AFR          2019 e_pop_num     15354608
       3 Zimbabwe ZWE          AFR          2020 c_cdr               54
       4 Zimbabwe ZWE          AFR          2020 c_newinc_100k      100
       5 Zimbabwe ZWE          AFR          2020 e_inc_100k         185
       6 Zimbabwe ZWE          AFR          2020 e_inc_num        29000
       7 Zimbabwe ZWE          AFR          2020 e_mort_100k         42
       8 Zimbabwe ZWE          AFR          2020 e_pop_num     15669666
       9 Zimbabwe ZWE          AFR          2021 c_cdr               53
      10 Zimbabwe ZWE          AFR          2021 c_newinc_100k      102
      11 Zimbabwe ZWE          AFR          2021 e_inc_100k         194
      12 Zimbabwe ZWE          AFR          2021 e_inc_num        31000
      13 Zimbabwe ZWE          AFR          2021 e_mort_100k         48
      14 Zimbabwe ZWE          AFR          2021 e_pop_num     15993524
      15 Zimbabwe ZWE          AFR          2022 c_cdr               55
      16 Zimbabwe ZWE          AFR          2022 c_newinc_100k      112
      17 Zimbabwe ZWE          AFR          2022 e_inc_100k         204
      18 Zimbabwe ZWE          AFR          2022 e_inc_num        33000
      19 Zimbabwe ZWE          AFR          2022 e_mort_100k         51
      20 Zimbabwe ZWE          AFR          2022 e_pop_num     16320537

---

    Code
      tail(tb_expenditure, n = 20)
    Output
      # A tibble: 20 x 6
         country  country_code g_whoregion  year variable             value
         <chr>    <chr>        <chr>       <dbl> <chr>                <dbl>
       1 Zimbabwe ZWE          AFR          2020 rcvd_staff         2094381
       2 Zimbabwe ZWE          AFR          2020 rcvd_tot_domestic     3000
       3 Zimbabwe ZWE          AFR          2020 rcvd_tot_gf        5566474
       4 Zimbabwe ZWE          AFR          2020 rcvd_tot_grnt       942938
       5 Zimbabwe ZWE          AFR          2020 rcvd_tot_sources   9226433
       6 Zimbabwe ZWE          AFR          2020 rcvd_tot_usaid     2714021
       7 Zimbabwe ZWE          AFR          2021 rcvd_lab           2891600
       8 Zimbabwe ZWE          AFR          2021 rcvd_staff         1596263
       9 Zimbabwe ZWE          AFR          2021 rcvd_tot_domestic   845670
      10 Zimbabwe ZWE          AFR          2021 rcvd_tot_gf        7527940
      11 Zimbabwe ZWE          AFR          2021 rcvd_tot_grnt      1890543
      12 Zimbabwe ZWE          AFR          2021 rcvd_tot_sources  20640324
      13 Zimbabwe ZWE          AFR          2021 rcvd_tot_usaid    10376171
      14 Zimbabwe ZWE          AFR          2022 rcvd_lab           3101457
      15 Zimbabwe ZWE          AFR          2022 rcvd_staff         3134136
      16 Zimbabwe ZWE          AFR          2022 rcvd_tot_domestic   800000
      17 Zimbabwe ZWE          AFR          2022 rcvd_tot_gf        7230952
      18 Zimbabwe ZWE          AFR          2022 rcvd_tot_grnt      1659228
      19 Zimbabwe ZWE          AFR          2022 rcvd_tot_sources  20149771
      20 Zimbabwe ZWE          AFR          2022 rcvd_tot_usaid    10459591

---

    Code
      tail(tb_labs, n = 20)
    Output
      # A tibble: 20 x 6
         country  country_code g_whoregion  year variable               value
         <chr>    <chr>        <chr>       <dbl> <chr>                  <dbl>
       1 Zimbabwe ZWE          AFR          2020 m_wrd_tests_performed     NA
       2 Zimbabwe ZWE          AFR          2020 m_wrd_tests_positive      NA
       3 Zimbabwe ZWE          AFR          2021 culture                    2
       4 Zimbabwe ZWE          AFR          2021 lab_cul                   NA
       5 Zimbabwe ZWE          AFR          2021 lab_sm                    NA
       6 Zimbabwe ZWE          AFR          2021 smear                    210
       7 Zimbabwe ZWE          AFR          2021 lab_xpert                 NA
       8 Zimbabwe ZWE          AFR          2021 xpert                     NA
       9 Zimbabwe ZWE          AFR          2021 m_wrd                    165
      10 Zimbabwe ZWE          AFR          2021 m_wrd_tests_performed  74311
      11 Zimbabwe ZWE          AFR          2021 m_wrd_tests_positive    7723
      12 Zimbabwe ZWE          AFR          2022 culture                    2
      13 Zimbabwe ZWE          AFR          2022 lab_cul                   NA
      14 Zimbabwe ZWE          AFR          2022 lab_sm                    NA
      15 Zimbabwe ZWE          AFR          2022 smear                    220
      16 Zimbabwe ZWE          AFR          2022 lab_xpert                 NA
      17 Zimbabwe ZWE          AFR          2022 xpert                     NA
      18 Zimbabwe ZWE          AFR          2022 m_wrd                    164
      19 Zimbabwe ZWE          AFR          2022 m_wrd_tests_performed 100092
      20 Zimbabwe ZWE          AFR          2022 m_wrd_tests_positive   10114

---

    Code
      tail(tb_notifications, n = 20)
    Output
      # A tibble: 20 x 6
         country  country_code g_whoregion  year variable        value
         <chr>    <chr>        <chr>       <dbl> <chr>           <dbl>
       1 Zimbabwe ZWE          AFR          2019 c_newinc        21008
       2 Zimbabwe ZWE          AFR          2019 new_labconf     10061
       3 Zimbabwe ZWE          AFR          2020 conf_rrmdr_tx      NA
       4 Zimbabwe ZWE          AFR          2020 conf_xdr_tx        NA
       5 Zimbabwe ZWE          AFR          2020 new_clindx       5913
       6 Zimbabwe ZWE          AFR          2020 ret_rel_labconf   329
       7 Zimbabwe ZWE          AFR          2020 c_newinc        15728
       8 Zimbabwe ZWE          AFR          2020 new_labconf      8072
       9 Zimbabwe ZWE          AFR          2021 conf_rrmdr_tx      NA
      10 Zimbabwe ZWE          AFR          2021 conf_xdr_tx        NA
      11 Zimbabwe ZWE          AFR          2021 new_clindx       6228
      12 Zimbabwe ZWE          AFR          2021 ret_rel_labconf   329
      13 Zimbabwe ZWE          AFR          2021 c_newinc        16310
      14 Zimbabwe ZWE          AFR          2021 new_labconf      8311
      15 Zimbabwe ZWE          AFR          2022 conf_rrmdr_tx      NA
      16 Zimbabwe ZWE          AFR          2022 conf_xdr_tx        NA
      17 Zimbabwe ZWE          AFR          2022 new_clindx       6655
      18 Zimbabwe ZWE          AFR          2022 ret_rel_labconf   318
      19 Zimbabwe ZWE          AFR          2022 c_newinc        18222
      20 Zimbabwe ZWE          AFR          2022 new_labconf      9696

