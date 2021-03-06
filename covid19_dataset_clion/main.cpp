//
// Created by root on 22/03/2020.
//


#include <stdio.h>
#include <stdlib.h>

short age_own, hel_cod, job_own, atc_idx, sto_ckk = 0;
// age, health condition, job type, how you conbact COVID19, stocking food or not

short age_own_point[4] = {1, 3, 6, 12};
short hel_cod_point[4] = {1, 3, 4, 10};
short job_own_point[3] = {1, 3, 6};
short atc_idx_point[5] = {1, 2, 3, 6, 12};
short sto_ckk_point[2] = {3, 1};
short age_own_point_subtotal = 0;
short hel_cod_point_subtotal = 0;
short job_own_point_subtotal = 0;
short atc_idx_point_subtotal = 0;
short sto_ckk_point_subtotal = 0;
short point_total = 0;
short co_inpact = 0;
// how does covid affect your health

short threthold_point[4] = {7, 12, 18, 22};

short size_datapoint = 0;
short seed = 15;

void welcome_screen() {
    printf("===================================================== \n");
    printf("COVID-19 Personal Inpacts Dataset Generator \n");
    printf("===================================================== \n");
}

bool inRange(short val, short minimum, short maximum) {
    return ((minimum <= val) && (val <= maximum));
}

int bin_convert(short val, short size) {
    short k = 0;
    for (short c = size - 1; c >= 0; c--) {
        k = val >> c;
        if (k & 1)
            printf("1");
        else
            printf("0");
    }
    printf(" \t");

}

int main() {
    welcome_screen();
    printf("Enter a random number: ");
    scanf("%d", &seed);
    printf("Enter your how many datapoints: ");
    scanf("%d", &size_datapoint);
    printf("===================================================== \n");
    printf("\n");

    for (int j = 0; j < size_datapoint; ++j) {
        for (int i = 0; i < seed; ++i) {
            age_own = rand() % (4) + 1;
            hel_cod = rand() % (4) + 1;
            job_own = rand() % (3) + 1;
            atc_idx = rand() % (5) + 1;
            sto_ckk = rand() % (2) + 1;
        }
        printf("Sub Type: age_own, hel_cod, job_own, atc_idx, sto_ckk\n");
        printf("\t\t\t\t%d ", age_own);
        printf("\t\t%d ", hel_cod);
        printf("\t\t%d ", job_own);
        printf("\t\t%d ", atc_idx);
        printf("\t\t%d \n", sto_ckk);
        age_own_point_subtotal = age_own_point[age_own - 1];
        hel_cod_point_subtotal = hel_cod_point[hel_cod - 1];
        job_own_point_subtotal = job_own_point[job_own - 1];
        atc_idx_point_subtotal = atc_idx_point[atc_idx - 1];
        sto_ckk_point_subtotal = sto_ckk_point[sto_ckk - 1];
        point_total =
                age_own_point_subtotal + hel_cod_point_subtotal + job_own_point_subtotal + atc_idx_point_subtotal +
                sto_ckk_point_subtotal;
//        printf("%d ", age_own_point_subtotal);
//        printf("%d ", hel_cod_point_subtotal);
//        printf("%d ", job_own_point_subtotal);
//        printf("%d ", atc_idx_point_subtotal);
//        printf("%d ", sto_ckk_point_subtotal);
        printf("Sub Points: age_own, hel_cod, job_own, atc_idx, sto_ckk\n");
        printf("\t\t\t\t%d ", age_own_point_subtotal);
        printf("\t\t%d ", hel_cod_point_subtotal);
        printf("\t\t%d ", job_own_point_subtotal);
        printf("\t\t%d ", atc_idx_point_subtotal);
        printf("\t\t%d \n", sto_ckk_point_subtotal);
        printf("Total points: %d \n", point_total);

        if (inRange(point_total, 0, threthold_point[0])) co_inpact = 1;
        else if (inRange(point_total, threthold_point[0] + 1, threthold_point[1])) co_inpact = 2;
        else if (inRange(point_total, threthold_point[1] + 1, threthold_point[2])) co_inpact = 3;
        else if (inRange(point_total, threthold_point[2] + 1, threthold_point[3])) co_inpact = 4;
        else if (inRange(point_total, threthold_point[3] + 1, 99)) co_inpact = 5;

//        FILE *fp;
//        fp = fopen("test.txt", "w+");
//        fprintf(fp, "This is testing for fprintf...\n");
//        fputs("This is testing for fputs...\n", fp);
//        fclose(fp);
        printf("Output: COVID-19 inpact index: %d \n", co_inpact);

        printf("Binarized datapoint: age_own, hel_cod, job_own,  atc_idx,  sto_ckk, co_inpact \n");
        printf("\t\t\t\t\t");
        bin_convert(age_own, 3);
        printf("\t");
        bin_convert(hel_cod, 3);
        printf("\t");
        bin_convert(job_own, 2);
        printf("\t");
        bin_convert(atc_idx, 3);
        printf("\t");
        bin_convert(sto_ckk, 2);
        printf("\t");
        bin_convert(co_inpact, 3);
        printf("\n");
        printf("------------------------------------\n");
        printf("\n");

    }


    return 0;
}



