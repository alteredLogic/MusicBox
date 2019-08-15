module lost_woods(freq, title_display, note_display, frequencies, song_speed, disp_speed, pause, reset, clock);

    output [1:0] freq;
    output [31:0] title_display;
    output [63:0] note_display;
    output [3:0] frequencies;
    input song_speed, disp_speed, pause, reset, clock;
    
    wire [13:0] wm000, wm001, wm002, wm003, wm004, wm005, wm006, wm007, wm008, wm009,
                wm010, wm011, wm012, wm013, wm014, wm015, wm016, wm017, wm018, wm019,
                wm020, wm021, wm022, wm023, wm024, wm025, wm026, wm027, wm028, wm029,
                wm030, wm031, wm032, wm033, wm034, wm035, wm036, wm037, wm038, wm039,
                wm040, wm041, wm042, wm043, wm044, wm045, wm046, wm047, wm048, wm049,
                wm050, wm051, wm052, wm053, wm054, wm055, wm056, wm057, wm058, wm059,
                wm060, wm061, wm062, wm063, wm064, wm065, wm066, wm067, wm068, wm069,
                wm070, wm071, wm072, wm073, wm074, wm075, wm076, wm077, wm078, wm079,
                wm080, wm081, wm082, wm083, wm084, wm085, wm086, wm087, wm088, wm089,
                wm090, wm091, wm092, wm093, wm094, wm095, wm096, wm097, wm098, wm099,
                wm100, wm101, wm102, wm103, wm104, wm105, wm106, wm107, wm108, wm109,
                wm110, wm111, wm112, wm113, wm114, wm115, wm116, wm117, wm118, wm119,
                wm120, wm121, wm122, wm123, wm124, wm125, wm126, wm127, wm128, wm129,
                wm130, wm131, wm132, wm133, wm134, wm135, wm136, wm137, wm138, wm139,
                wm140, wm141, wm142, wm143, wm144, wm145, wm146, wm147, wm148, wm149,
                wm150, wm151, wm152, wm153, wm154, wm155, wm156, wm157, wm158, wm159,
                wm160, wm161, wm162, wm163, wm164, wm165, wm166, wm167, wm168, wm169,
                wm170, wm171, wm172, wm173, wm174, wm175, wm176, wm177, wm178, wm179,
                wm180, wm181, wm182, wm183, wm184, wm185, wm186, wm187, wm188, wm189,
                wm190, wm191, wm192, wm193, wm194, wm195, wm196, wm197, wm198, wm199,
                wm200, wm201, wm202, wm203, wm204, wm205, wm206, wm207, wm208, wm209,
                wm210, wm211, wm212, wm213, wm214, wm215, wm216, wm217, wm218, wm219,
                wm220, wm221, wm222, wm223, wm224, wm225, wm226, wm227, wm228, wm229,
                wm230, wm231, wm232, wm233, wm234, wm235, wm236, wm237, wm238, wm239,
                wm240, wm241, wm242, wm243, wm244, wm245, wm246, wm247, wm248, wm249,
                wm250, wm251, wm252, wm253, wm254, wm255, wm256, wm257, wm258, wm259,
                wm260, wm261, wm262, wm263, wm264, wm265, wm266, wm267, wm268, wm269,
                wm270, wm271, wm272, wm273, wm274, wm275, wm276, wm277, wm278, wm279,
                wm280, wm281, wm282, wm283, wm284, wm285, wm286, wm287,
               
                wb000, wb001, wb002, wb003, wb004, wb005, wb006, wb007, wb008, wb009,
                wb010, wb011, wb012, wb013, wb014, wb015, wb016, wb017, wb018, wb019,
                wb020, wb021, wb022, wb023, wb024, wb025, wb026, wb027, wb028, wb029,
                wb030, wb031, wb032, wb033, wb034, wb035, wb036, wb037, wb038, wb039,
                wb040, wb041, wb042, wb043, wb044, wb045, wb046, wb047, wb048, wb049,
                wb050, wb051, wb052, wb053, wb054, wb055, wb056, wb057, wb058, wb059,
                wb060, wb061, wb062, wb063, wb064, wb065, wb066, wb067, wb068, wb069,
                wb070, wb071, wb072, wb073, wb074, wb075, wb076, wb077, wb078, wb079,
                wb080, wb081, wb082, wb083, wb084, wb085, wb086, wb087, wb088, wb089,
                wb090, wb091, wb092, wb093, wb094, wb095, wb096, wb097, wb098, wb099,
                wb100, wb101, wb102, wb103, wb104, wb105, wb106, wb107, wb108, wb109,
                wb110, wb111, wb112, wb113, wb114, wb115, wb116, wb117, wb118, wb119,
                wb120, wb121, wb122, wb123, wb124, wb125, wb126, wb127, wb128, wb129,
                wb130, wb131, wb132, wb133, wb134, wb135, wb136, wb137, wb138, wb139,
                wb140, wb141, wb142, wb143, wb144, wb145, wb146, wb147, wb148, wb149,
                wb150, wb151, wb152, wb153, wb154, wb155, wb156, wb157, wb158, wb159,
                wb160, wb161, wb162, wb163, wb164, wb165, wb166, wb167, wb168, wb169,
                wb170, wb171, wb172, wb173, wb174, wb175, wb176, wb177, wb178, wb179,
                wb180, wb181, wb182, wb183, wb184, wb185, wb186, wb187, wb188, wb189,
                wb190, wb191, wb192, wb193, wb194, wb195, wb196, wb197, wb198, wb199,
                wb200, wb201, wb202, wb203, wb204, wb205, wb206, wb207, wb208, wb209,
                wb210, wb211, wb212, wb213, wb214, wb215, wb216, wb217, wb218, wb219,
                wb220, wb221, wb222, wb223, wb224, wb225, wb226, wb227, wb228, wb229,
                wb230, wb231, wb232, wb233, wb234, wb235, wb236, wb237, wb238, wb239,
                wb240, wb241, wb242, wb243, wb244, wb245, wb246, wb247, wb248, wb249,
                wb250, wb251, wb252, wb253, wb254, wb255, wb256, wb257, wb258, wb259,
                wb260, wb261, wb262, wb263, wb264, wb265, wb266, wb267, wb268, wb269,
                wb270, wb271, wb272, wb273, wb274, wb275, wb276, wb277, wb278, wb279,
                wb280, wb281, wb282, wb283, wb284, wb285, wb286, wb287;
    
    wire [7:0] wd00, wd01, wd02, wd03, wd04, wd05, wd06,
               wd07, wd08, wd09, wd10, wd11, wd12, wd13;
    
    tones m0(frequencies[3], note_display[31:24], note_display[23:16], wm287[13:7], clock);
    tones m1(frequencies[2], note_display[63:56], note_display[55:48], wm287[6:0], clock);
    tones b0(frequencies[1], note_display[15:8], note_display[7:0], wb287[13:7], clock);
    tones b1(frequencies[0], note_display[47:40], note_display[39:32], wb287[6:0], clock);
    mux2v #(1) m_chord(freq[1], frequencies[3], frequencies[2], clock);
    mux2v #(1) b_chord(freq[0], frequencies[1], frequencies[0], clock);
    
    //Display
    register #(8, `OFF) d00(wd00, wd13, disp_speed, 1, reset);
    register #(8, `OFF) d01(wd01, wd00, disp_speed, 1, reset);
    register #(8, `OFF) d02(wd02, wd01, disp_speed, 1, reset);
    register #(8, `OFF) d03(wd03, wd02, disp_speed, 1, reset);
    register #(8, `S) d04(wd04, wd03, disp_speed, 1, reset);
    register #(8, `D) d05(wd05, wd04, disp_speed, 1, reset);
    register #(8, `O) d06(wd06, wd05, disp_speed, 1, reset);
    register #(8, `O) d07(wd07, wd06, disp_speed, 1, reset);
    register #(8, `W) d08(wd08, wd07, disp_speed, 1, reset);
    register #(8, `OFF) d09(wd09, wd08, disp_speed, 1, reset);
    register #(8, `T) d10(wd10, wd09, disp_speed, 1, reset);
    register #(8, `S) d11(wd11, wd10, disp_speed, 1, reset);
    register #(8, `O) d12(wd12, wd11, disp_speed, 1, reset);
    register #(8, `L) d13(wd13, wd12, disp_speed, 1, reset);
    
    assign title_display = {wd00, wd13, wd12, wd11};
    
    //Melody
    register #(14, {`REST, `REST}) m000(wm000, wm287, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m001(wm001, wm000, song_speed, !pause, reset);
    register #(14, {`E5, `B5}) m002(wm002, wm001, song_speed, !pause, reset);
    register #(14, {`E5, `B5}) m003(wm003, wm002, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m004(wm004, wm003, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m005(wm005, wm004, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m006(wm006, wm005, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m007(wm007, wm006, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m008(wm008, wm007, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m009(wm009, wm008, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m010(wm010, wm009, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m011(wm011, wm010, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m012(wm012, wm011, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m013(wm013, wm012, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m014(wm014, wm013, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m015(wm015, wm014, song_speed, !pause, reset);
    
    register #(14, {`B4, `E5}) m016(wm016, wm015, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m017(wm017, wm016, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m018(wm018, wm017, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m019(wm019, wm018, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m020(wm020, wm019, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m021(wm021, wm020, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m022(wm022, wm021, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m023(wm023, wm022, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m024(wm024, wm023, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m025(wm025, wm024, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m026(wm026, wm025, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m027(wm027, wm026, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m028(wm028, wm027, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m029(wm029, wm028, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m030(wm030, wm029, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m031(wm031, wm030, song_speed, !pause, reset);
    
    register #(14, {`A4, `D5}) m032(wm032, wm031, song_speed, !pause, reset);
    register #(14, {`C5, `F5}) m033(wm033, wm032, song_speed, !pause, reset);
    register #(14, {`C5, `F5}) m034(wm034, wm033, song_speed, !pause, reset);
    register #(14, {`B4, `E5}) m035(wm035, wm034, song_speed, !pause, reset);
    register #(14, {`C5, `E5}) m036(wm036, wm035, song_speed, !pause, reset);
    register #(14, {`C5, `E5}) m037(wm037, wm036, song_speed, !pause, reset);
    register #(14, {`D5, `F5}) m038(wm038, wm037, song_speed, !pause, reset);
    register #(14, {`D5, `F5}) m039(wm039, wm038, song_speed, !pause, reset);
    register #(14, {`B4, `D5}) m040(wm040, wm039, song_speed, !pause, reset);
    register #(14, {`B4, `D5}) m041(wm041, wm040, song_speed, !pause, reset);
    register #(14, {`C5, `E5}) m042(wm042, wm041, song_speed, !pause, reset);
    register #(14, {`C5, `E5}) m043(wm043, wm042, song_speed, !pause, reset);
    register #(14, {`A4, `C5}) m044(wm044, wm043, song_speed, !pause, reset);
    register #(14, {`A4, `C5}) m045(wm045, wm044, song_speed, !pause, reset);
    register #(14, {`B4, `D5}) m046(wm046, wm045, song_speed, !pause, reset);
    register #(14, {`B4, `D5}) m047(wm047, wm046, song_speed, !pause, reset);
    
    register #(14, {`G4, `B4}) m048(wm048, wm047, song_speed, !pause, reset);
    register #(14, {`G4, `B4}) m049(wm049, wm048, song_speed, !pause, reset);
    register #(14, {`A4, `C5}) m050(wm050, wm049, song_speed, !pause, reset);
    register #(14, {`A4, `C5}) m051(wm051, wm050, song_speed, !pause, reset);
    register #(14, {`F4, `A4}) m052(wm052, wm051, song_speed, !pause, reset);
    register #(14, {`F4, `A4}) m053(wm053, wm052, song_speed, !pause, reset);
    register #(14, {`G4, `B4}) m054(wm054, wm053, song_speed, !pause, reset);
    register #(14, {`G4, `B4}) m055(wm055, wm054, song_speed, !pause, reset);
    register #(14, {`E4, `G4}) m056(wm056, wm055, song_speed, !pause, reset);
    register #(14, {`E4, `G4}) m057(wm057, wm056, song_speed, !pause, reset);
    register #(14, {`F4, `A4}) m058(wm058, wm057, song_speed, !pause, reset);
    register #(14, {`F4, `A4}) m059(wm059, wm058, song_speed, !pause, reset);
    register #(14, {`C4, `E4}) m060(wm060, wm059, song_speed, !pause, reset);
    register #(14, {`C4, `E4}) m061(wm061, wm060, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m062(wm062, wm061, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m063(wm063, wm062, song_speed, !pause, reset);
    
    register #(14, {`REST, `REST}) m064(wm064, wm063, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m065(wm065, wm064, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m066(wm066, wm065, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m067(wm067, wm066, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m068(wm068, wm067, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m069(wm069, wm068, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m070(wm070, wm069, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m071(wm071, wm070, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m072(wm072, wm071, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m073(wm073, wm072, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m074(wm074, wm073, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m075(wm075, wm074, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m076(wm076, wm075, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m077(wm077, wm076, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m078(wm078, wm077, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m079(wm079, wm078, song_speed, !pause, reset);
    
    register #(14, {`B4, `REST}) m080(wm080, wm079, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m081(wm081, wm080, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m082(wm082, wm081, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m083(wm083, wm082, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m084(wm084, wm083, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m085(wm085, wm084, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m086(wm086, wm085, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m087(wm087, wm086, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m088(wm088, wm087, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m089(wm089, wm088, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m090(wm090, wm089, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m091(wm091, wm090, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m092(wm092, wm091, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m093(wm093, wm092, song_speed, !pause, reset);
    register #(14, {`D4, `REST}) m094(wm094, wm093, song_speed, !pause, reset);
    register #(14, {`D4, `REST}) m095(wm095, wm094, song_speed, !pause, reset);

    register #(14, {`REST, `REST}) m096(wm096, wm095, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m097(wm097, wm096, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m098(wm098, wm097, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m099(wm099, wm098, song_speed, !pause, reset);
    register #(14, {`E5, `G5}) m100(wm100, wm099, song_speed, !pause, reset);
    register #(14, {`E5, `G5}) m101(wm101, wm100, song_speed, !pause, reset);
    register #(14, {`E5, `G5}) m102(wm102, wm101, song_speed, !pause, reset);
    register #(14, {`E5, `G5}) m103(wm103, wm102, song_speed, !pause, reset);
    register #(14, {`E5, `G5}) m104(wm104, wm103, song_speed, !pause, reset);
    register #(14, {`E5, `G5}) m105(wm105, wm104, song_speed, !pause, reset);
    register #(14, {`E5, `G5}) m106(wm106, wm105, song_speed, !pause, reset);
    register #(14, {`E5, `G5}) m107(wm107, wm106, song_speed, !pause, reset);
    register #(14, {`D5, `F5}) m108(wm108, wm107, song_speed, !pause, reset);
    register #(14, {`D5, `F5}) m109(wm109, wm108, song_speed, !pause, reset);
    register #(14, {`C5, `E5}) m110(wm110, wm109, song_speed, !pause, reset);
    register #(14, {`C5, `E5}) m111(wm111, wm110, song_speed, !pause, reset);
    
    register #(14, {`B4, `D5}) m112(wm112, wm111, song_speed, !pause, reset);
    register #(14, {`B4, `D5}) m113(wm113, wm112, song_speed, !pause, reset);
    register #(14, {`B4, `D5}) m114(wm114, wm113, song_speed, !pause, reset);
    register #(14, {`B4, `D5}) m115(wm115, wm114, song_speed, !pause, reset);
    register #(14, {`A4, `C5}) m116(wm116, wm115, song_speed, !pause, reset);
    register #(14, {`A4, `C5}) m117(wm117, wm116, song_speed, !pause, reset);
    register #(14, {`G4, `B4}) m118(wm118, wm117, song_speed, !pause, reset);
    register #(14, {`G4, `B4}) m119(wm119, wm118, song_speed, !pause, reset);
    register #(14, {`F4, `A4}) m120(wm120, wm119, song_speed, !pause, reset);
    register #(14, {`F4, `A4}) m121(wm121, wm120, song_speed, !pause, reset);
    register #(14, {`F4, `A4}) m122(wm122, wm121, song_speed, !pause, reset);
    register #(14, {`F4, `A4}) m123(wm123, wm122, song_speed, !pause, reset);
    register #(14, {`E4, `G4}) m124(wm124, wm123, song_speed, !pause, reset);
    register #(14, {`E4, `G4}) m125(wm125, wm124, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m126(wm126, wm125, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m127(wm127, wm126, song_speed, !pause, reset);
    
    register #(14, {`REST, `REST}) m128(wm128, wm127, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m129(wm129, wm128, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m130(wm130, wm129, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m131(wm131, wm130, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m132(wm132, wm131, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m133(wm133, wm132, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m134(wm134, wm133, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m135(wm135, wm134, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m136(wm136, wm135, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m137(wm137, wm136, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m138(wm138, wm137, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m139(wm139, wm138, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m140(wm140, wm139, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m141(wm141, wm140, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m142(wm142, wm141, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m143(wm143, wm142, song_speed, !pause, reset);
    
    register #(14, {`B4, `REST}) m144(wm144, wm143, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m145(wm145, wm144, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m146(wm146, wm145, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m147(wm147, wm146, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m148(wm148, wm147, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m149(wm149, wm148, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m150(wm150, wm149, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m151(wm151, wm150, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m152(wm152, wm151, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m153(wm153, wm152, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m154(wm154, wm153, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m155(wm155, wm154, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m156(wm156, wm155, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m157(wm157, wm156, song_speed, !pause, reset);
    register #(14, {`D4, `REST}) m158(wm158, wm157, song_speed, !pause, reset);
    register #(14, {`D4, `REST}) m159(wm159, wm158, song_speed, !pause, reset);
    
    register #(14, {`REST, `REST}) m160(wm160, wm159, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m161(wm161, wm160, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m162(wm162, wm161, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m163(wm163, wm162, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m164(wm164, wm163, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m165(wm165, wm164, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m166(wm166, wm165, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m167(wm167, wm166, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m168(wm168, wm167, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m169(wm169, wm168, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m170(wm170, wm169, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m171(wm171, wm170, song_speed, !pause, reset);
    register #(14, {`D4, `REST}) m172(wm172, wm171, song_speed, !pause, reset);
    register #(14, {`D4, `REST}) m173(wm173, wm172, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m174(wm174, wm173, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m175(wm175, wm174, song_speed, !pause, reset);
    
    register #(14, {`B4, `REST}) m176(wm176, wm175, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m177(wm177, wm176, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m178(wm178, wm177, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m179(wm179, wm178, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m180(wm180, wm179, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m181(wm181, wm180, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m182(wm182, wm181, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m183(wm183, wm182, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m184(wm184, wm183, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m185(wm185, wm184, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m186(wm186, wm185, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m187(wm187, wm186, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m188(wm188, wm187, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m189(wm189, wm188, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m190(wm190, wm189, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m191(wm191, wm190, song_speed, !pause, reset);
    
    register #(14, {`C5, `REST}) m192(wm192, wm191, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m193(wm193, wm192, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m194(wm194, wm193, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m195(wm195, wm194, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m196(wm196, wm195, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m197(wm197, wm196, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m198(wm198, wm197, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m199(wm199, wm198, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m200(wm200, wm199, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m201(wm201, wm200, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m202(wm202, wm201, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m203(wm203, wm202, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m204(wm204, wm203, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m205(wm205, wm204, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m206(wm206, wm205, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m207(wm207, wm206, song_speed, !pause, reset);
    
    register #(14, {`B4, `REST}) m208(wm208, wm207, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m209(wm209, wm208, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m210(wm210, wm209, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m211(wm211, wm210, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m212(wm212, wm211, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m213(wm213, wm212, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m214(wm214, wm213, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m215(wm215, wm214, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m216(wm216, wm215, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m217(wm217, wm216, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m218(wm218, wm217, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m219(wm219, wm218, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m220(wm220, wm219, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m221(wm221, wm220, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m222(wm222, wm221, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m223(wm223, wm222, song_speed, !pause, reset);
    
    register #(14, {`REST, `REST}) m224(wm224, wm223, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m225(wm225, wm224, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m226(wm226, wm225, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m227(wm227, wm226, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m228(wm228, wm227, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m229(wm229, wm228, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m230(wm230, wm229, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m231(wm231, wm230, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m232(wm232, wm231, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m233(wm233, wm232, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m234(wm234, wm233, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m235(wm235, wm234, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m236(wm236, wm235, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m237(wm237, wm236, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m238(wm238, wm237, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m239(wm239, wm238, song_speed, !pause, reset);
    
    register #(14, {`D4, `REST}) m240(wm240, wm239, song_speed, !pause, reset);
    register #(14, {`D4, `REST}) m241(wm241, wm240, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m242(wm242, wm241, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m243(wm243, wm242, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m244(wm244, wm243, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m245(wm245, wm244, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m246(wm246, wm245, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m247(wm247, wm246, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m248(wm248, wm247, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m249(wm249, wm248, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m250(wm250, wm249, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m251(wm251, wm250, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m252(wm252, wm251, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m253(wm253, wm252, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m254(wm254, wm253, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m255(wm255, wm254, song_speed, !pause, reset);
    
    register #(14, {`C5, `REST}) m256(wm256, wm255, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m257(wm257, wm256, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m258(wm258, wm257, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m259(wm259, wm258, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m260(wm260, wm259, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m261(wm261, wm260, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m262(wm262, wm261, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m263(wm263, wm262, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m264(wm264, wm263, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m265(wm265, wm264, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m266(wm266, wm265, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m267(wm267, wm266, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m268(wm268, wm267, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m269(wm269, wm268, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m270(wm270, wm269, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m271(wm271, wm270, song_speed, !pause, reset);
    
    register #(14, {`B4, `REST}) m272(wm272, wm271, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m273(wm273, wm272, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m274(wm274, wm273, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m275(wm275, wm274, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m276(wm276, wm275, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m277(wm277, wm276, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m278(wm278, wm277, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m279(wm279, wm278, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m280(wm280, wm279, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m281(wm281, wm280, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m282(wm282, wm281, song_speed, !pause, reset);
    register #(14, {`B4, `REST}) m283(wm283, wm282, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m284(wm284, wm283, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m285(wm285, wm284, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m286(wm286, wm285, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m287(wm287, wm286, song_speed, !pause, reset);
    
    //BASS
    register #(14, {`REST, `REST}) b000(wb000, wb287, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b001(wb001, wb000, song_speed, !pause, reset);
    register #(14, {`E3, `E4}) b002(wb002, wb001, song_speed, !pause, reset);
    register #(14, {`E3, `E4}) b003(wb003, wb002, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b004(wb004, wb003, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b005(wb005, wb004, song_speed, !pause, reset);
    register #(14, {`Ab3, `B3}) b006(wb006, wb005, song_speed, !pause, reset);
    register #(14, {`Ab3, `B3}) b007(wb007, wb006, song_speed, !pause, reset);
    register #(14, {`Ab3, `B3}) b008(wb008, wb007, song_speed, !pause, reset);
    register #(14, {`Ab3, `B3}) b009(wb009, wb008, song_speed, !pause, reset);
    register #(14, {`Ab3, `B3}) b010(wb010, wb009, song_speed, !pause, reset);
    register #(14, {`Ab3, `B3}) b011(wb011, wb010, song_speed, !pause, reset);
    register #(14, {`Ab3, `B3}) b012(wb012, wb011, song_speed, !pause, reset);
    register #(14, {`Ab3, `B3}) b013(wb013, wb012, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b014(wb014, wb013, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b015(wb015, wb014, song_speed, !pause, reset);
    
    register #(14, {`A3, `B3}) b016(wb016, wb015, song_speed, !pause, reset);
    register #(14, {`A3, `B3}) b017(wb017, wb016, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b018(wb018, wb017, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b019(wb019, wb018, song_speed, !pause, reset);
    register #(14, {`A3, `B3}) b020(wb020, wb019, song_speed, !pause, reset);
    register #(14, {`A3, `B3}) b021(wb021, wb020, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b022(wb022, wb021, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b023(wb023, wb022, song_speed, !pause, reset);
    register #(14, {`A3, `B3}) b024(wb024, wb023, song_speed, !pause, reset);
    register #(14, {`A3, `B3}) b025(wb025, wb024, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b026(wb026, wb025, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b027(wb027, wb026, song_speed, !pause, reset);
    register #(14, {`A3, `B3}) b028(wb028, wb027, song_speed, !pause, reset);
    register #(14, {`A3, `B3}) b029(wb029, wb028, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b030(wb030, wb029, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b031(wb031, wb030, song_speed, !pause, reset);
    
    register #(14, {`REST, `REST}) b032(wb032, wb031, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b033(wb033, wb032, song_speed, !pause, reset);
    register #(14, {`G3, `A3}) b034(wb034, wb033, song_speed, !pause, reset);
    register #(14, {`G3, `A3}) b035(wb035, wb034, song_speed, !pause, reset);
    register #(14, {`G3, `A3}) b036(wb036, wb035, song_speed, !pause, reset);
    register #(14, {`G3, `A3}) b037(wb037, wb036, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b038(wb038, wb037, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b039(wb039, wb038, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b040(wb040, wb039, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b041(wb041, wb040, song_speed, !pause, reset);
    register #(14, {`G3, `A3}) b042(wb042, wb041, song_speed, !pause, reset);
    register #(14, {`G3, `A3}) b043(wb043, wb042, song_speed, !pause, reset);
    register #(14, {`G3, `A3}) b044(wb044, wb043, song_speed, !pause, reset);
    register #(14, {`G3, `A3}) b045(wb045, wb044, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b046(wb046, wb045, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b047(wb047, wb046, song_speed, !pause, reset);
    
    register #(14, {`REST, `REST}) b048(wb048, wb047, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b049(wb049, wb048, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b050(wb050, wb049, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b051(wb051, wb050, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b052(wb052, wb051, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b053(wb053, wb052, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b054(wb054, wb053, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b055(wb055, wb054, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b056(wb056, wb055, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b057(wb057, wb056, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b058(wb058, wb057, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b059(wb059, wb058, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b060(wb060, wb059, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b061(wb061, wb060, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b062(wb062, wb061, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b063(wb063, wb062, song_speed, !pause, reset);
    
    register #(14, {`E3, `A3}) b064(wb064, wb063, song_speed, !pause, reset);
    register #(14, {`E3, `A3}) b065(wb065, wb064, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b066(wb066, wb065, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b067(wb067, wb066, song_speed, !pause, reset);
    register #(14, {`E3, `A3}) b068(wb068, wb067, song_speed, !pause, reset);
    register #(14, {`E3, `A3}) b069(wb069, wb068, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b070(wb070, wb069, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b071(wb071, wb070, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b072(wb072, wb071, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b073(wb073, wb072, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b074(wb074, wb073, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b075(wb075, wb074, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b076(wb076, wb075, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b077(wb077, wb076, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b078(wb078, wb077, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b079(wb079, wb078, song_speed, !pause, reset);
    
    register #(14, {`D3, `G3}) b080(wb080, wb079, song_speed, !pause, reset);
    register #(14, {`D3, `G3}) b081(wb081, wb080, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b082(wb082, wb081, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b083(wb083, wb082, song_speed, !pause, reset);
    register #(14, {`D3, `G3}) b084(wb084, wb083, song_speed, !pause, reset);
    register #(14, {`D3, `G3}) b085(wb085, wb084, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b086(wb086, wb085, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b087(wb087, wb086, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b088(wb088, wb087, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b089(wb089, wb088, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b090(wb090, wb089, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b091(wb091, wb090, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b092(wb092, wb091, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b093(wb093, wb092, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b094(wb094, wb093, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b095(wb095, wb094, song_speed, !pause, reset);
    
    register #(14, {`E3, `A3}) b096(wb096, wb095, song_speed, !pause, reset);
    register #(14, {`E3, `A3}) b097(wb097, wb096, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b098(wb098, wb097, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b099(wb099, wb098, song_speed, !pause, reset);
    register #(14, {`E3, `A3}) b100(wb100, wb099, song_speed, !pause, reset);
    register #(14, {`E3, `A3}) b101(wb101, wb100, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b102(wb102, wb101, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b103(wb103, wb102, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b104(wb104, wb103, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b105(wb105, wb104, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b106(wb106, wb105, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b107(wb107, wb106, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b108(wb108, wb107, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b109(wb109, wb108, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b110(wb110, wb109, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b111(wb111, wb110, song_speed, !pause, reset);
    
    register #(14, {`D3, `G3}) b112(wb112, wb111, song_speed, !pause, reset);
    register #(14, {`D3, `G3}) b113(wb113, wb112, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b114(wb114, wb113, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b115(wb115, wb114, song_speed, !pause, reset);
    register #(14, {`D3, `G3}) b116(wb116, wb115, song_speed, !pause, reset);
    register #(14, {`D3, `G3}) b117(wb117, wb116, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b118(wb118, wb117, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b119(wb119, wb118, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b120(wb120, wb119, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b121(wb121, wb120, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b122(wb122, wb121, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b123(wb123, wb122, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b124(wb124, wb123, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b125(wb125, wb124, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b126(wb126, wb125, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b127(wb127, wb126, song_speed, !pause, reset);
    
    register #(14, {`E3, `A3}) b128(wb128, wb127, song_speed, !pause, reset);
    register #(14, {`E3, `A3}) b129(wb129, wb128, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b130(wb130, wb129, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b131(wb131, wb130, song_speed, !pause, reset);
    register #(14, {`E3, `A3}) b132(wb132, wb131, song_speed, !pause, reset);
    register #(14, {`E3, `A3}) b133(wb133, wb132, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b134(wb134, wb133, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b135(wb135, wb134, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b136(wb136, wb135, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b137(wb137, wb136, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b138(wb138, wb137, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b139(wb139, wb138, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b140(wb140, wb139, song_speed, !pause, reset);
    register #(14, {`E3, `C4}) b141(wb141, wb140, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b142(wb142, wb141, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b143(wb143, wb142, song_speed, !pause, reset);
    
    register #(14, {`D3, `G3}) b144(wb144, wb143, song_speed, !pause, reset);
    register #(14, {`D3, `G3}) b145(wb145, wb144, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b146(wb146, wb145, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b147(wb147, wb146, song_speed, !pause, reset);
    register #(14, {`D3, `G3}) b148(wb148, wb147, song_speed, !pause, reset);
    register #(14, {`D3, `G3}) b149(wb149, wb148, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b150(wb150, wb149, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b151(wb151, wb150, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b152(wb152, wb151, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b153(wb153, wb152, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b154(wb154, wb153, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b155(wb155, wb154, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b156(wb156, wb155, song_speed, !pause, reset);
    register #(14, {`F3, `A3}) b157(wb157, wb156, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b158(wb158, wb157, song_speed, !pause, reset);
    register #(14, {`D3, `REST}) b159(wb159, wb158, song_speed, !pause, reset);
    
    register #(14, {`C3, `REST}) b160(wb160, wb159, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b161(wb161, wb160, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b162(wb162, wb161, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b163(wb163, wb162, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b164(wb164, wb163, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b165(wb165, wb164, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b166(wb166, wb165, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b167(wb167, wb166, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b168(wb168, wb167, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b169(wb169, wb168, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b170(wb170, wb169, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b171(wb171, wb170, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b172(wb172, wb171, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b173(wb173, wb172, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b174(wb174, wb173, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b175(wb175, wb174, song_speed, !pause, reset);
    
    register #(14, {`C3, `REST}) b176(wb176, wb175, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b177(wb177, wb176, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b178(wb178, wb177, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b179(wb179, wb178, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b180(wb180, wb179, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b181(wb181, wb180, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b182(wb182, wb181, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b183(wb183, wb182, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b184(wb184, wb183, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b185(wb185, wb184, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b186(wb186, wb185, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b187(wb187, wb186, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b188(wb188, wb187, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b189(wb189, wb188, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b190(wb190, wb189, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b191(wb191, wb190, song_speed, !pause, reset);
    
    register #(14, {`A3, `C4}) b192(wb192, wb191, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b193(wb193, wb192, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b194(wb194, wb193, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b195(wb195, wb194, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b196(wb196, wb195, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b197(wb197, wb196, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b198(wb198, wb197, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b199(wb199, wb198, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b200(wb200, wb199, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b201(wb201, wb200, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b202(wb202, wb201, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b203(wb203, wb202, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b204(wb204, wb203, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b205(wb205, wb204, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b206(wb206, wb205, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b207(wb207, wb206, song_speed, !pause, reset);
    
    register #(14, {`A3, `C4}) b208(wb208, wb207, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b209(wb209, wb208, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b210(wb210, wb209, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b211(wb211, wb210, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b212(wb212, wb211, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b213(wb213, wb212, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b214(wb214, wb213, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b215(wb215, wb214, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b216(wb216, wb215, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b217(wb217, wb216, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b218(wb218, wb217, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b219(wb219, wb218, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b220(wb220, wb219, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b221(wb221, wb220, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b222(wb222, wb221, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b223(wb223, wb222, song_speed, !pause, reset);
    
    register #(14, {`C3, `REST}) b224(wb224, wb223, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b225(wb225, wb224, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b226(wb226, wb225, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b227(wb227, wb226, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b228(wb228, wb227, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b229(wb229, wb228, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b230(wb230, wb229, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b231(wb231, wb230, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b232(wb232, wb231, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b233(wb233, wb232, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b234(wb234, wb233, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b235(wb235, wb234, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b236(wb236, wb235, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b237(wb237, wb236, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b238(wb238, wb237, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b239(wb239, wb238, song_speed, !pause, reset);
    
    register #(14, {`C3, `REST}) b240(wb240, wb239, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b241(wb241, wb240, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b242(wb242, wb241, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b243(wb243, wb242, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b244(wb244, wb243, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b245(wb245, wb244, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b246(wb246, wb245, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b247(wb247, wb246, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b248(wb248, wb247, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b249(wb249, wb248, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b250(wb250, wb249, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b251(wb251, wb250, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b252(wb252, wb251, song_speed, !pause, reset);
    register #(14, {`G3, `C4}) b253(wb253, wb252, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b254(wb254, wb253, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) b255(wb255, wb254, song_speed, !pause, reset);
    
    register #(14, {`A3, `C4}) b256(wb256, wb255, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b257(wb257, wb256, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b258(wb258, wb257, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b259(wb259, wb258, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b260(wb260, wb259, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b261(wb261, wb260, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b262(wb262, wb261, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b263(wb263, wb262, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b264(wb264, wb263, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b265(wb265, wb264, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b266(wb266, wb265, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b267(wb267, wb266, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b268(wb268, wb267, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b269(wb269, wb268, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b270(wb270, wb269, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b271(wb271, wb270, song_speed, !pause, reset);
    
    register #(14, {`A3, `C4}) b272(wb272, wb271, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b273(wb273, wb272, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b274(wb274, wb273, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b275(wb275, wb274, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b276(wb276, wb275, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b277(wb277, wb276, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b278(wb278, wb277, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b279(wb279, wb278, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b280(wb280, wb279, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b281(wb281, wb280, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b282(wb282, wb281, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b283(wb283, wb282, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b284(wb284, wb283, song_speed, !pause, reset);
    register #(14, {`A3, `C4}) b285(wb285, wb284, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b286(wb286, wb285, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b287(wb287, wb286, song_speed, !pause, reset);
    
endmodule //lost_woods