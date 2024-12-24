import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Misc extends StatelessWidget {
  const Misc(this.title, {super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    //if (title == 'National Program') {
    const String heading1 = 'National AIDS Control Program (NACP)';
    const String heading2 = 'National Tuberculosis Elimination Program';
    const String heading3 =
        'National Vector Borne Disease Control Program (NVBDCP)';
    const String content1a =
        '1. NACO	Guidelines for Antiretroviral therapy for HIV-infected Adults and Adolescents 2013';
    const String content1b =
        '2. Guidelines for Prevention and Management of Common Opportunistic Infections/Malignancies among HIV-Infected Adult and Adolescent 2007';
    const String content1c =
        '3. National Guidelines on Prevention, Management and Control of Reproductive Tract Infections and Sexually Transmitted Infections 2014';
    const String content2a =
        '1. Central Tuberculosis Division: National Tuberculosis Elimination Program';
    const String content2b =
        '2. Guidelines for programmatic management of tuberculosis treatment in India';
    const String content2c =
        '3. Guidelines for TB services at Health and Wellness Centres';
    const String content2d =
        '4. Guidelines for programmatic management of drug-resistant tuberculosis in India';
    const String content3a = '1. Dengue Clinical Management Guidelines';
    const String content3b = '2. Chikungunya Clinical Management Guidelines';
    const String content3c =
        '3. Diagnosis and Treatment of Malaria Guidelines 2013';
    const String content3d = '4. National Drug Policy on Malaria 2013';
    const String content3e =
        '5. Operational Guidelines on Kala-Azar (Visceral Leishmaniasis) Elimination in India 2015';
    const String content3f =
        '6. Diagnosis and Treatment of Kala-Azar (Visceral Leishmaniasis) in India';
    const String content3g =
        '7. National Guidelines Diagnosis, Case Management Prevention and Control of Leptospirosis 2015';
    const String content3h =
        '8. Operational Guidelines on Disability Prevention & Medical Rehabilitation under National Leprosy Eradication Program';
    const String content3i =
        '9. Guidelines on clinical management of acute encephalitis syndrome including Japanese encephalitis';
    const String content3j =
        '10. Guidelines on Filariasis Control in India & Its Elimination';
    //}
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title == 'National Program') ...[
                const SizedBox(
                  height: 20,
                ),
                Text(
                  heading1,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://naco.gov.in/sites/default/files/Antiretroviral%20Therapy%20Guidelines%20for%20HIV-Infected%20Adults%20and%20Adolescents%20May%202013%281%29_0.pdf')),
                  child: Text(
                    content1a,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://naco.gov.in/sites/default/files/Guidelines%20for%20Prevention%20and%20Management%20of%20common%20opportunistic%20infections.pdf')),
                  child: Text(
                    content1b,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.naco.gov.in/sites/default/files/National%20RTI%20STI%20technical%20guidelines%20Sep2014_0.pdf')),
                  child: Text(
                    content1c,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //                                      2nd heading
                Text(
                  heading2,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://tbcindia.gov.in/index1.php?lang=1&level=1&sublinkid=4571&lid=3176')),
                  child: Text(
                    content2a,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://tbcindia.gov.in/showfile.php?lid=3625')),
                  child: Text(
                    content2b,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://tbcindia.gov.in/showfile.php?lid=3575')),
                  child: Text(
                    content2c,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://tbcindia.gov.in/showfile.php?lid=3590')),
                  child: Text(
                    content2d,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //                         heading 3
                Text(
                  heading3,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://ncvbdc.mohfw.gov.in/WriteReadData/l892s/Dengue-National-Guidelines-2014.pdf')),
                  child: Text(
                    content3a,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://ncvbdc.mohfw.gov.in/WriteReadData/l892s/77728737401531912419.pdf')),
                  child: Text(
                    content3b,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'http://nvbdcp.gov.in/Doc/Diagnosis-Treatment-Malaria-2013.pdf')),
                  child: Text(
                    content3c,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://ncvbdc.mohfw.gov.in/WriteReadData/l892s/National-Drug-Policy-2013.pdf')),
                  child: Text(
                    content3d,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'http://nvbdcp.gov.in/Doc/opertional-guideline-KA-2015.pdf')),
                  child: Text(
                    content3e,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://ncvbdc.mohfw.gov.in/WriteReadData/l892s/Guidelines-Diagnosis-Treatment-KA.pdf')),
                  child: Text(
                    content3f,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://ncdc.mohfw.gov.in/WriteReadData/l892s/41067548621535210912.pdf')),
                  child: Text(
                    content3g,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'http://clinicalestablishments.gov.in/WriteReadData/516.pdf')),
                  child: Text(
                    content3h,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://ncvbdc.mohfw.gov.in/WriteReadData/l892s/Revised_guidelines_on_AES_JE.pdf')),
                  child: Text(
                    content3i,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://ncvbdc.mohfw.gov.in/WriteReadData/l892s/43461824631532409675.pdf')),
                  child: Text(
                    content3j,
                    style: GoogleFonts.aBeeZee(
                        //decoration: TextDecoration.underline,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
              //                           references page
              if (title == 'References') ...[
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'http://www.who.int/medicines/areas/rational_use/en/')),
                  child: Text(
                    '1. World Health Organization. Rational use of medicines',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse('')),
                  child: Text(
                    '2. Indian Council of Medical Research. Treatment Guidelines for antimicrobial use in common syndromes. Indian Counc Med Res Dep Heal Res New Delhi, India',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/search?search=typhoid%20fever%20treatment&sp=1&searchType=PLAIN_TEXT&source=USER_INPUT&searchControl=TOP_PULLDOWN&searchOffset=1&autoComplete=true&language=en&max=10&index=&autoCompleteTerm')),
                  child: Text(
                    '3. Andrews J, John J, Charles RC. Enteric (typhoid and paratyphoid) fever: Treatment and prevention',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/gram-negative-bacillary-bacteremia-in-adults?search=Empiric%20therapy%20for%20suspected%20Gram-negative%20infections%20(e.g.%20pyelonephritis%20or%20intra-abdominal%20infections)&sectionRank=1&usage_type=default&anchor=H12&source=machineLearning&selectedTitle=2~150&display_rank=2#H12')),
                  child: Text(
                    '4. Moehring R, Anderson DJ. Gram-negative bacillary bacteremia in adults',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/scrub-typhus?search=scrub%20typhus%20treatment&sectionRank=1&usage_type=default&anchor=H3&source=machineLearning&selectedTitle=1~19&display_rank=1#H3')),
                  child: Text(
                    '5. McClain MT. Scrub Typhus',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/other-spotted-fever-group-rickettsial-infections?search=Rickettsia%20infections%20treatment&sectionRank=3&usage_type=default&anchor=H28326361&source=machineLearning&selectedTitle=1~93&display_rank=1#H1053039499')),
                  child: Text(
                    '6. Sexton DJ, McClain MT. Other spotted fever group rickettsial infections',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/leptospirosis-treatment-and-prevention?search=leptospirosis%20treatment&sectionRank=1&usage_type=default&anchor=H7863193&source=machineLearning&selectedTitle=1~86&display_rank=1#H7863015')),
                  child: Text(
                    '7. Nick Day DM, Edwards MS. Leptospirosis: Treatment and prevention',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse('')),
                  child: Text(
                    '8. Venkatesh S, Chauhan LS, Gadpayle AK, Jain TS, Ghafur A, Wattal C. National treatment guidelines for antimicrobial use in infectious diseases. India: National Centre For Disease Control, MOHFW, Government of India',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/treatment-of-community-acquired-pneumonia-in-adults-in-the-outpatient-setting?search=Community%20acquired%20Pneumonia&source=search_result&selectedTitle=1~150&usage_type=default&display_rank=1#')),
                  child: Text(
                    '9. File Jr TM, Bartlett JG, Thorner AR. Treatment of community-acquired pneumonia in adults in the outpatient setting',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/uncomplicated-acute-sinusitis-and-rhinosinusitis-in-adults-treatment?search=Acute%20bacterial%20rhinosinusitis%20treatment&source=search_result&selectedTitle=2~73&usage_type=default&display_rank=2#H547040381')),
                  child: Text(
                    '10. Patel ZM, Hwang PH. Uncomplicated acute sinusitis and rhinosinusitis in adults: Treatment',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://uptodate.com/contents/acute-simple-cystitis-in-females?search=Treatment%20of%20Acute%20uncomplicated%20Cystitis&source=search_result&selectedTitle=1~150&usage_type=default&display_rank=1')),
                  child: Text(
                    '11. Gupta K. Acute simple cystitis in females',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/acute-complicated-urinary-tract-infection-including-pyelonephritis-in-adults?search=Treatment%20of%20Acute%20uncomplicated%20Pyelonephritis&source=search_result&selectedTitle=2~100&usage_type=default&display_rank=2')),
                  child: Text(
                    '12. Gupta K, Hooton TM. Acute complicated urinary tract infection (including pyelonephritis) in adults',
                    style: GoogleFonts.aBeeZee(
                        //decoration: TextDecoration.underline,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/acute-bacterial-prostatitis?search=Treatment%20of%20Acute%20prostatitis&sectionRank=3&usage_type=default&anchor=H1669378575&source=machineLearning&selectedTitle=1~27&display_rank=1#H13503301')),
                  child: Text(
                    '13. Meyrier A, Fekete T. Acute bacterial prostatitis',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/acute-infectious-cystitis-management-and-prognosis-in-children-older-than-two-years-and-adolescents?search=Treatment%20of%20Uncomplicated%20UTI%20in%20children&source=search_result&selectedTitle=1~150&usage_type=default&display_rank=1#')),
                  child: Text(
                    '14. Palazzi DL, Campbell JR. Acute infectious cystitis: Management and prognosis in children older than two years and adolescents',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/search?search=Treatment%20of%20Asymptomatic%20Bacteriuria%20in%20pregnant%20women&sp=0&searchType=PLAIN_TEXT&source=USER_INPUT&searchControl=TOP_PULLDOWN&searchOffset=1&autoComplete=false&language=en&max=10&index=&autoCompleteTerm')),
                  child: Text(
                    '15. Gupta K. Urinary tract infections and asymptomatic bacteriuria in pregnancy',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/candida-vulvovaginitis-in-adults-treatment-of-acute-infection?search=candidiasis%20treatment&source=search_result&selectedTitle=2~150&usage_type=default&display_rank=2')),
                  child: Text(
                    '16. Sobel JD, Kauffman CA. Candida vulvovaginitis in adults: Treatment of acute infection',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/search?search=Bacterial%20vaginosis%20treatment&sp=0&searchType=PLAIN_TEXT&source=USER_INPUT&searchControl=TOP_PULLDOWN&searchOffset=1&autoComplete=false&language=en&max=10&index=&autoCompleteTerm')),
                  child: Text(
                    '17. Bacterial vaginosis (BV) initial treatment',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/trichomoniasis-treatment?search=Trichimoniasis&source=search_result&selectedTitle=2~93&usage_type=default&display_rank=2')),
                  child: Text(
                    '18. Sobel JD. Trichomoniasis: Treatment',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse('')),
                  child: Text(
                    '19. McGowin CL, Radtke AL, Abraham K, Martin DH, Herbst-Kralovetz M. Mycoplasma genitalium infection activates cellular host defense and inflammation pathways in a 3-dimensional human endocervical epithelial cell model. The Journal of infectious diseases',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/nonlactational-mastitis-in-adults?search=Mastitis%20without%20abscess%20&sectionRank=1&usage_type=default&anchor=H14&source=machineLearning&selectedTitle=3~89&display_rank=3#H14')),
                  child: Text(
                    '20. Dixon JM, Pariser KM, Sexton DJ, Nelson S. Nonlactational mastitis in adults',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/prosthetic-joint-infection-treatment?search=Prosthetic%20joint%20Infection&sectionRank=2&usage_type=default&anchor=H11&source=machineLearning&selectedTitle=1~117&display_rank=1#H11')),
                  child: Text(
                    '21. Baddour LM. Prosthetic joint infections: Treatment',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/blepharitis?search=Blephritis&sectionRank=2&usage_type=default&anchor=H27&source=machineLearning&selectedTitle=1~150&display_rank=1#H27')),
                  child: Text(
                    '22. Shtein RM. Blephritis',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/conjunctivitis?search=Bacterial%20conjunctivitis&source=search_result&selectedTitle=2~45&usage_type=default&display_rank=1')),
                  child: Text(
                    '23. Jacobs DS. Conjuctivitis',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/herpes-simplex-keratitis?search=Herpes%20Simplex%20keratitis&source=search_result&selectedTitle=1~150&usage_type=default&display_rank=1#H19')),
                  child: Text(
                    '24. Sugal A. Herpes simplex keratitis',
                    style: GoogleFonts.aBeeZee(
                        //decoration: TextDecoration.underline,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/treatment-of-herpes-zoster?search=Varicella%20Zoster%20ophthalmicus%20treatment&source=search_result&selectedTitle=7~150&usage_type=default&display_rank=7')),
                  child: Text(
                    '25. Albrecht MA, Hirsch MS, Thorner AR. Treatment of herpes zoster in the immunocompetent host',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(
                      'https://www.uptodate.com/contents/acute-otitis-media-in-adults?search=Acute%20otitis%20media&source=search_result&selectedTitle=3~150&usage_type=default&display_rank=2#H17')),
                  child: Text(
                    '26. Limb CJ, Lustig LR, Klein JO. Acute otitis media in adults',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
