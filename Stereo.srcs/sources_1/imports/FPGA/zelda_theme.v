module zelda_theme(freq, title_display, note_display, frequencies, song_speed, disp_speed, pause, reset, clock);
    
    output [1:0] freq;
    output [31:0] title_display;
    output [63:0] note_display;
    output [3:0] frequencies;
    input song_speed, disp_speed, pause, reset, clock;
    
    wire [13:0] wm0000, wm0001, wm0002, wm0003, wm0004, wm0005, wm0006, wm0007, wm0008, wm0009,
                wm0010, wm0011, wm0012, wm0013, wm0014, wm0015, wm0016, wm0017, wm0018, wm0019,
                wm0020, wm0021, wm0022, wm0023, wm0024, wm0025, wm0026, wm0027, wm0028, wm0029,
                wm0030, wm0031, wm0032, wm0033, wm0034, wm0035, wm0036, wm0037, wm0038, wm0039,
                wm0040, wm0041, wm0042, wm0043, wm0044, wm0045, wm0046, wm0047, wm0048, wm0049,
                wm0050, wm0051, wm0052, wm0053, wm0054, wm0055, wm0056, wm0057, wm0058, wm0059,
                wm0060, wm0061, wm0062, wm0063, wm0064, wm0065, wm0066, wm0067, wm0068, wm0069,
                wm0070, wm0071, wm0072, wm0073, wm0074, wm0075, wm0076, wm0077, wm0078, wm0079,
                wm0080, wm0081, wm0082, wm0083, wm0084, wm0085, wm0086, wm0087, wm0088, wm0089,
                wm0090, wm0091, wm0092, wm0093, wm0094, wm0095, wm0096, wm0097, wm0098, wm0099,
                wm0100, wm0101, wm0102, wm0103, wm0104, wm0105, wm0106, wm0107, wm0108, wm0109,
                wm0110, wm0111, wm0112, wm0113, wm0114, wm0115, wm0116, wm0117, wm0118, wm0119,
                wm0120, wm0121, wm0122, wm0123, wm0124, wm0125, wm0126, wm0127, wm0128, wm0129,
                wm0130, wm0131, wm0132, wm0133, wm0134, wm0135, wm0136, wm0137, wm0138, wm0139,
                wm0140, wm0141, wm0142, wm0143, wm0144, wm0145, wm0146, wm0147, wm0148, wm0149,
                wm0150, wm0151, wm0152, wm0153, wm0154, wm0155, wm0156, wm0157, wm0158, wm0159,
                wm0160, wm0161, wm0162, wm0163, wm0164, wm0165, wm0166, wm0167, wm0168, wm0169,
                wm0170, wm0171, wm0172, wm0173, wm0174, wm0175, wm0176, wm0177, wm0178, wm0179,
                wm0180, wm0181, wm0182, wm0183, wm0184, wm0185, wm0186, wm0187, wm0188, wm0189,
                wm0190, wm0191, wm0192, wm0193, wm0194, wm0195, wm0196, wm0197, wm0198, wm0199,
                wm0200, wm0201, wm0202, wm0203, wm0204, wm0205, wm0206, wm0207, wm0208, wm0209,
                wm0210, wm0211, wm0212, wm0213, wm0214, wm0215, wm0216, wm0217, wm0218, wm0219,
                wm0220, wm0221, wm0222, wm0223, wm0224, wm0225, wm0226, wm0227, wm0228, wm0229,
                wm0230, wm0231, wm0232, wm0233, wm0234, wm0235, wm0236, wm0237, wm0238, wm0239,
                wm0240, wm0241, wm0242, wm0243, wm0244, wm0245, wm0246, wm0247, wm0248, wm0249,
                wm0250, wm0251, wm0252, wm0253, wm0254, wm0255, wm0256, wm0257, wm0258, wm0259,
                wm0260, wm0261, wm0262, wm0263, wm0264, wm0265, wm0266, wm0267, wm0268, wm0269,
                wm0270, wm0271, wm0272, wm0273, wm0274, wm0275, wm0276, wm0277, wm0278, wm0279,
                wm0280, wm0281, wm0282, wm0283, wm0284, wm0285, wm0286, wm0287, wm0288, wm0289,
                wm0290, wm0291, wm0292, wm0293, wm0294, wm0295, wm0296, wm0297, wm0298, wm0299,
                wm0300, wm0301, wm0302, wm0303, wm0304, wm0305, wm0306, wm0307, wm0308, wm0309,
                wm0310, wm0311, wm0312, wm0313, wm0314, wm0315, wm0316, wm0317, wm0318, wm0319,
                wm0320, wm0321, wm0322, wm0323, wm0324, wm0325, wm0326, wm0327, wm0328, wm0329,
                wm0330, wm0331, wm0332, wm0333, wm0334, wm0335, wm0336, wm0337, wm0338, wm0339,
                wm0340, wm0341, wm0342, wm0343, wm0344, wm0345, wm0346, wm0347, wm0348, wm0349,
                wm0350, wm0351, wm0352, wm0353, wm0354, wm0355, wm0356, wm0357, wm0358, wm0359,
                wm0360, wm0361, wm0362, wm0363, wm0364, wm0365, wm0366, wm0367, wm0368, wm0369,
                wm0370, wm0371, wm0372, wm0373, wm0374, wm0375, wm0376, wm0377, wm0378, wm0379,
                wm0380, wm0381, wm0382, wm0383, wm0384, wm0385, wm0386, wm0387, wm0388, wm0389,
                wm0390, wm0391, wm0392, wm0393, wm0394, wm0395, wm0396, wm0397, wm0398, wm0399,
                wm0400, wm0401, wm0402, wm0403, wm0404, wm0405, wm0406, wm0407, wm0408, wm0409,
                wm0410, wm0411, wm0412, wm0413, wm0414, wm0415, wm0416, wm0417, wm0418, wm0419,
                wm0420, wm0421, wm0422, wm0423, wm0424, wm0425, wm0426, wm0427, wm0428, wm0429,
                wm0430, wm0431, wm0432, wm0433, wm0434, wm0435, wm0436, wm0437, wm0438, wm0439,
                wm0440, wm0441, wm0442, wm0443, wm0444, wm0445, wm0446, wm0447, wm0448, wm0449,
                wm0450, wm0451, wm0452, wm0453, wm0454, wm0455, wm0456, wm0457, wm0458, wm0459,
                wm0460, wm0461, wm0462, wm0463, wm0464, wm0465, wm0466, wm0467, wm0468, wm0469,
                wm0470, wm0471, wm0472, wm0473, wm0474, wm0475, wm0476, wm0477, wm0478, wm0479,
                wm0480, wm0481, wm0482, wm0483, wm0484, wm0485, wm0486, wm0487, wm0488, wm0489,
                wm0490, wm0491, wm0492, wm0493, wm0494, wm0495, wm0496, wm0497, wm0498, wm0499,
                wm0500, wm0501, wm0502, wm0503, wm0504, wm0505, wm0506, wm0507, wm0508, wm0509,
                wm0510, wm0511, wm0512, wm0513, wm0514, wm0515, wm0516, wm0517, wm0518, wm0519,
                wm0520, wm0521, wm0522, wm0523, wm0524, wm0525, wm0526, wm0527, wm0528, wm0529,
                wm0530, wm0531, wm0532, wm0533, wm0534, wm0535, wm0536, wm0537, wm0538, wm0539,
                wm0540, wm0541, wm0542, wm0543, wm0544, wm0545, wm0546, wm0547, wm0548, wm0549,
                wm0550, wm0551, wm0552, wm0553, wm0554, wm0555, wm0556, wm0557, wm0558, wm0559,
                wm0560, wm0561, wm0562, wm0563, wm0564, wm0565, wm0566, wm0567, wm0568, wm0569,
                wm0570, wm0571, wm0572, wm0573, wm0574, wm0575, wm0576, wm0577, wm0578, wm0579,
                wm0580, wm0581, wm0582, wm0583, wm0584, wm0585, wm0586, wm0587, wm0588, wm0589,
                wm0590, wm0591, wm0592, wm0593, wm0594, wm0595, wm0596, wm0597, wm0598, wm0599,
                wm0600, wm0601, wm0602, wm0603, wm0604, wm0605, wm0606, wm0607, wm0608, wm0609,
                wm0610, wm0611, wm0612, wm0613, wm0614, wm0615, wm0616, wm0617, wm0618, wm0619,
                wm0620, wm0621, wm0622, wm0623, wm0624, wm0625, wm0626, wm0627, wm0628, wm0629,
                wm0630, wm0631, wm0632, wm0633, wm0634, wm0635, wm0636, wm0637, wm0638, wm0639,
                wm0640, wm0641, wm0642, wm0643, wm0644, wm0645, wm0646, wm0647, wm0648, wm0649,
                wm0650, wm0651, wm0652, wm0653, wm0654, wm0655, wm0656, wm0657, wm0658, wm0659,
                wm0660, wm0661, wm0662, wm0663, wm0664, wm0665, wm0666, wm0667, wm0668, wm0669,
                wm0670, wm0671, wm0672, wm0673, wm0674, wm0675, wm0676, wm0677, wm0678, wm0679,
                wm0680, wm0681, wm0682, wm0683, wm0684, wm0685, wm0686, wm0687, wm0688, wm0689,
                wm0690, wm0691, wm0692, wm0693, wm0694, wm0695, wm0696, wm0697, wm0698, wm0699,
                wm0700, wm0701, wm0702, wm0703, wm0704, wm0705, wm0706, wm0707, wm0708, wm0709,
                wm0710, wm0711, wm0712, wm0713, wm0714, wm0715, wm0716, wm0717, wm0718, wm0719,
                wm0720, wm0721, wm0722, wm0723, wm0724, wm0725, wm0726, wm0727, wm0728, wm0729,
                wm0730, wm0731, wm0732, wm0733, wm0734, wm0735, wm0736, wm0737, wm0738, wm0739,
                wm0740, wm0741, wm0742, wm0743, wm0744, wm0745, wm0746, wm0747, wm0748, wm0749,
                wm0750, wm0751, wm0752, wm0753, wm0754, wm0755, wm0756, wm0757, wm0758, wm0759,
                wm0760, wm0761, wm0762, wm0763, wm0764, wm0765, wm0766, wm0767, wm0768, wm0769,
                wm0770, wm0771, wm0772, wm0773, wm0774, wm0775, wm0776, wm0777, wm0778, wm0779,
                wm0780, wm0781, wm0782, wm0783, wm0784, wm0785, wm0786, wm0787, wm0788, wm0789,
                wm0790, wm0791, wm0792, wm0793, wm0794, wm0795, wm0796, wm0797, wm0798, wm0799,
                wm0800, wm0801, wm0802, wm0803, wm0804, wm0805, wm0806, wm0807, wm0808, wm0809,
                wm0810, wm0811, wm0812, wm0813, wm0814, wm0815, wm0816, wm0817, wm0818, wm0819,
                wm0820, wm0821, wm0822, wm0823, wm0824, wm0825, wm0826, wm0827, wm0828, wm0829,
                wm0830, wm0831, wm0832, wm0833, wm0834, wm0835, wm0836, wm0837, wm0838, wm0839,
                wm0840, wm0841, wm0842, wm0843, wm0844, wm0845, wm0846, wm0847, wm0848, wm0849,
                wm0850, wm0851, wm0852, wm0853, wm0854, wm0855, wm0856, wm0857, wm0858, wm0859,
                wm0860, wm0861, wm0862, wm0863, wm0864, wm0865, wm0866, wm0867, wm0868, wm0869,
                wm0870, wm0871, wm0872, wm0873, wm0874, wm0875, wm0876, wm0877, wm0878, wm0879,
                wm0880, wm0881, wm0882, wm0883, wm0884, wm0885, wm0886, wm0887, wm0888, wm0889,
                wm0890, wm0891, wm0892, wm0893, wm0894, wm0895, wm0896, wm0897, wm0898, wm0899,
                wm0900, wm0901, wm0902, wm0903, wm0904, wm0905, wm0906, wm0907, wm0908, wm0909,
                wm0910, wm0911, wm0912, wm0913, wm0914, wm0915, wm0916, wm0917, wm0918, wm0919,
                wm0920, wm0921, wm0922, wm0923, wm0924, wm0925, wm0926, wm0927, wm0928, wm0929,
                wm0930, wm0931, wm0932, wm0933, wm0934, wm0935, wm0936, wm0937, wm0938, wm0939,
                wm0940, wm0941, wm0942, wm0943, wm0944, wm0945, wm0946, wm0947, wm0948, wm0949,
                wm0950, wm0951, wm0952, wm0953, wm0954, wm0955, wm0956, wm0957, wm0958, wm0959,
                wm0960, wm0961, wm0962, wm0963, wm0964, wm0965, wm0966, wm0967, wm0968, wm0969,
                wm0970, wm0971, wm0972, wm0973, wm0974, wm0975, wm0976, wm0977, wm0978, wm0979,
                wm0980, wm0981, wm0982, wm0983, wm0984, wm0985, wm0986, wm0987, wm0988, wm0989,
                wm0990, wm0991, wm0992, wm0993, wm0994, wm0995, wm0996, wm0997, wm0998, wm0999,
                wm1000, wm1001, wm1002, wm1003, wm1004, wm1005, wm1006, wm1007, wm1008, wm1009,
                wm1010, wm1011, wm1012, wm1013, wm1014, wm1015, wm1016, wm1017, wm1018, wm1019,
                wm1020, wm1021, wm1022, wm1023, wm1024, wm1025, wm1026, wm1027, wm1028, wm1029,
                wm1030, wm1031, wm1032, wm1033, wm1034, wm1035, wm1036, wm1037, wm1038, wm1039,
                wm1040, wm1041, wm1042, wm1043, wm1044, wm1045, wm1046, wm1047, wm1048, wm1049,
                wm1050, wm1051, wm1052, wm1053, wm1054, wm1055, wm1056, wm1057, wm1058, wm1059,
                wm1060, wm1061, wm1062, wm1063, wm1064, wm1065, wm1066, wm1067, wm1068, wm1069,
                wm1070, wm1071, wm1072, wm1073, wm1074, wm1075, wm1076, wm1077, wm1078, wm1079,
                wm1080, wm1081, wm1082, wm1083, wm1084, wm1085, wm1086, wm1087, wm1088, wm1089,
                wm1090, wm1091, wm1092, wm1093, wm1094, wm1095, wm1096, wm1097, wm1098, wm1099,
                wm1100, wm1101, wm1102, wm1103, wm1104, wm1105, wm1106, wm1107, wm1108, wm1109,
                wm1110, wm1111, wm1112, wm1113, wm1114, wm1115, wm1116, wm1117, wm1118, wm1119,
                wm1120, wm1121, wm1122, wm1123, wm1124, wm1125, wm1126, wm1127, wm1128, wm1129,
                wm1130, wm1131, wm1132, wm1133, wm1134, wm1135, wm1136, wm1137, wm1138, wm1139,
                wm1140, wm1141, wm1142, wm1143, wm1144, wm1145, wm1146, wm1147, wm1148, wm1149,
                wm1150, wm1151, wm1152, wm1153, wm1154, wm1155, wm1156, wm1157, wm1158, wm1159,
                wm1160, wm1161, wm1162, wm1163, wm1164, wm1165, wm1166, wm1167, wm1168, wm1169,
                wm1170, wm1171, wm1172, wm1173, wm1174, wm1175, wm1176, wm1177, wm1178, wm1179,
                wm1180, wm1181, wm1182, wm1183, wm1184, wm1185, wm1186, wm1187, wm1188, wm1189,
                wm1190, wm1191, wm1192, wm1193, wm1194, wm1195, wm1196, wm1197, wm1198, wm1199,
                wm1200, wm1201, wm1202, wm1203, wm1204, wm1205, wm1206, wm1207, wm1208, wm1209,
                wm1210, wm1211, wm1212, wm1213, wm1214, wm1215, wm1216, wm1217, wm1218, wm1219,
                wm1220, wm1221, wm1222, wm1223, wm1224, wm1225, wm1226, wm1227, wm1228, wm1229,
                wm1230, wm1231, wm1232, wm1233, wm1234, wm1235, wm1236, wm1237, wm1238, wm1239,
                wm1240, wm1241, wm1242, wm1243, wm1244, wm1245, wm1246, wm1247, wm1248, wm1249,
                wm1250, wm1251, wm1252, wm1253, wm1254, wm1255, wm1256, wm1257, wm1258, wm1259,
                wm1260, wm1261, wm1262, wm1263, wm1264, wm1265, wm1266, wm1267, wm1268, wm1269,
                wm1270, wm1271, wm1272, wm1273, wm1274, wm1275, wm1276, wm1277, wm1278, wm1279,
                wm1280, wm1281, wm1282, wm1283, wm1284, wm1285, wm1286, wm1287, wm1288, wm1289,
                wm1290, wm1291, wm1292, wm1293, wm1294, wm1295, wm1296, wm1297, wm1298, wm1299,
                wm1300, wm1301, wm1302, wm1303, wm1304, wm1305, wm1306, wm1307, wm1308, wm1309,
                wm1310, wm1311, wm1312, wm1313, wm1314, wm1315, wm1316, wm1317, wm1318, wm1319,
                wm1320, wm1321, wm1322, wm1323, wm1324, wm1325, wm1326, wm1327, wm1328, wm1329,
                wm1330, wm1331, wm1332, wm1333, wm1334, wm1335, wm1336, wm1337, wm1338, wm1339,
                wm1340, wm1341, wm1342, wm1343, wm1344, wm1345, wm1346, wm1347, wm1348, wm1349,
                wm1350, wm1351, wm1352, wm1353, wm1354, wm1355, wm1356, wm1357, wm1358, wm1359,
                wm1360, wm1361, wm1362, wm1363, wm1364, wm1365, wm1366, wm1367, wm1368, wm1369,
                wm1370, wm1371, wm1372, wm1373, wm1374, wm1375, wm1376, wm1377, wm1378, wm1379,
                wm1380, wm1381, wm1382, wm1383, wm1384, wm1385, wm1386, wm1387, wm1388, wm1389,
                wm1390, wm1391, wm1392, wm1393, wm1394, wm1395, wm1396, wm1397, wm1398, wm1399,
                wm1400, wm1401, wm1402, wm1403, wm1404, wm1405, wm1406, wm1407, wm1408, wm1409,
                wm1410, wm1411, wm1412, wm1413, wm1414, wm1415, wm1416, wm1417, wm1418, wm1419,
                wm1420, wm1421, wm1422, wm1423, wm1424, wm1425, wm1426, wm1427, wm1428, wm1429,
                wm1430, wm1431, wm1432, wm1433, wm1434, wm1435, wm1436, wm1437, wm1438, wm1439,
                wb0000, wb0001, wb0002, wb0003, wb0004, wb0005, wb0006, wb0007, wb0008, wb0009,
                wb0010, wb0011, wb0012, wb0013, wb0014, wb0015, wb0016, wb0017, wb0018, wb0019,
                wb0020, wb0021, wb0022, wb0023, wb0024, wb0025, wb0026, wb0027, wb0028, wb0029,
                wb0030, wb0031, wb0032, wb0033, wb0034, wb0035, wb0036, wb0037, wb0038, wb0039,
                wb0040, wb0041, wb0042, wb0043, wb0044, wb0045, wb0046, wb0047, wb0048, wb0049,
                wb0050, wb0051, wb0052, wb0053, wb0054, wb0055, wb0056, wb0057, wb0058, wb0059,
                wb0060, wb0061, wb0062, wb0063, wb0064, wb0065, wb0066, wb0067, wb0068, wb0069,
                wb0070, wb0071, wb0072, wb0073, wb0074, wb0075, wb0076, wb0077, wb0078, wb0079,
                wb0080, wb0081, wb0082, wb0083, wb0084, wb0085, wb0086, wb0087, wb0088, wb0089,
                wb0090, wb0091, wb0092, wb0093, wb0094, wb0095, wb0096, wb0097, wb0098, wb0099,
                wb0100, wb0101, wb0102, wb0103, wb0104, wb0105, wb0106, wb0107, wb0108, wb0109,
                wb0110, wb0111, wb0112, wb0113, wb0114, wb0115, wb0116, wb0117, wb0118, wb0119,
                wb0120, wb0121, wb0122, wb0123, wb0124, wb0125, wb0126, wb0127, wb0128, wb0129,
                wb0130, wb0131, wb0132, wb0133, wb0134, wb0135, wb0136, wb0137, wb0138, wb0139,
                wb0140, wb0141, wb0142, wb0143, wb0144, wb0145, wb0146, wb0147, wb0148, wb0149,
                wb0150, wb0151, wb0152, wb0153, wb0154, wb0155, wb0156, wb0157, wb0158, wb0159,
                wb0160, wb0161, wb0162, wb0163, wb0164, wb0165, wb0166, wb0167, wb0168, wb0169,
                wb0170, wb0171, wb0172, wb0173, wb0174, wb0175, wb0176, wb0177, wb0178, wb0179,
                wb0180, wb0181, wb0182, wb0183, wb0184, wb0185, wb0186, wb0187, wb0188, wb0189,
                wb0190, wb0191, wb0192, wb0193, wb0194, wb0195, wb0196, wb0197, wb0198, wb0199,
                wb0200, wb0201, wb0202, wb0203, wb0204, wb0205, wb0206, wb0207, wb0208, wb0209,
                wb0210, wb0211, wb0212, wb0213, wb0214, wb0215, wb0216, wb0217, wb0218, wb0219,
                wb0220, wb0221, wb0222, wb0223, wb0224, wb0225, wb0226, wb0227, wb0228, wb0229,
                wb0230, wb0231, wb0232, wb0233, wb0234, wb0235, wb0236, wb0237, wb0238, wb0239,
                wb0240, wb0241, wb0242, wb0243, wb0244, wb0245, wb0246, wb0247, wb0248, wb0249,
                wb0250, wb0251, wb0252, wb0253, wb0254, wb0255, wb0256, wb0257, wb0258, wb0259,
                wb0260, wb0261, wb0262, wb0263, wb0264, wb0265, wb0266, wb0267, wb0268, wb0269,
                wb0270, wb0271, wb0272, wb0273, wb0274, wb0275, wb0276, wb0277, wb0278, wb0279,
                wb0280, wb0281, wb0282, wb0283, wb0284, wb0285, wb0286, wb0287, wb0288, wb0289,
                wb0290, wb0291, wb0292, wb0293, wb0294, wb0295, wb0296, wb0297, wb0298, wb0299,
                wb0300, wb0301, wb0302, wb0303, wb0304, wb0305, wb0306, wb0307, wb0308, wb0309,
                wb0310, wb0311, wb0312, wb0313, wb0314, wb0315, wb0316, wb0317, wb0318, wb0319,
                wb0320, wb0321, wb0322, wb0323, wb0324, wb0325, wb0326, wb0327, wb0328, wb0329,
                wb0330, wb0331, wb0332, wb0333, wb0334, wb0335, wb0336, wb0337, wb0338, wb0339,
                wb0340, wb0341, wb0342, wb0343, wb0344, wb0345, wb0346, wb0347, wb0348, wb0349,
                wb0350, wb0351, wb0352, wb0353, wb0354, wb0355, wb0356, wb0357, wb0358, wb0359,
                wb0360, wb0361, wb0362, wb0363, wb0364, wb0365, wb0366, wb0367, wb0368, wb0369,
                wb0370, wb0371, wb0372, wb0373, wb0374, wb0375, wb0376, wb0377, wb0378, wb0379,
                wb0380, wb0381, wb0382, wb0383, wb0384, wb0385, wb0386, wb0387, wb0388, wb0389,
                wb0390, wb0391, wb0392, wb0393, wb0394, wb0395, wb0396, wb0397, wb0398, wb0399,
                wb0400, wb0401, wb0402, wb0403, wb0404, wb0405, wb0406, wb0407, wb0408, wb0409,
                wb0410, wb0411, wb0412, wb0413, wb0414, wb0415, wb0416, wb0417, wb0418, wb0419,
                wb0420, wb0421, wb0422, wb0423, wb0424, wb0425, wb0426, wb0427, wb0428, wb0429,
                wb0430, wb0431, wb0432, wb0433, wb0434, wb0435, wb0436, wb0437, wb0438, wb0439,
                wb0440, wb0441, wb0442, wb0443, wb0444, wb0445, wb0446, wb0447, wb0448, wb0449,
                wb0450, wb0451, wb0452, wb0453, wb0454, wb0455, wb0456, wb0457, wb0458, wb0459,
                wb0460, wb0461, wb0462, wb0463, wb0464, wb0465, wb0466, wb0467, wb0468, wb0469,
                wb0470, wb0471, wb0472, wb0473, wb0474, wb0475, wb0476, wb0477, wb0478, wb0479,
                wb0480, wb0481, wb0482, wb0483, wb0484, wb0485, wb0486, wb0487, wb0488, wb0489,
                wb0490, wb0491, wb0492, wb0493, wb0494, wb0495, wb0496, wb0497, wb0498, wb0499,
                wb0500, wb0501, wb0502, wb0503, wb0504, wb0505, wb0506, wb0507, wb0508, wb0509,
                wb0510, wb0511, wb0512, wb0513, wb0514, wb0515, wb0516, wb0517, wb0518, wb0519,
                wb0520, wb0521, wb0522, wb0523, wb0524, wb0525, wb0526, wb0527, wb0528, wb0529,
                wb0530, wb0531, wb0532, wb0533, wb0534, wb0535, wb0536, wb0537, wb0538, wb0539,
                wb0540, wb0541, wb0542, wb0543, wb0544, wb0545, wb0546, wb0547, wb0548, wb0549,
                wb0550, wb0551, wb0552, wb0553, wb0554, wb0555, wb0556, wb0557, wb0558, wb0559,
                wb0560, wb0561, wb0562, wb0563, wb0564, wb0565, wb0566, wb0567, wb0568, wb0569,
                wb0570, wb0571, wb0572, wb0573, wb0574, wb0575, wb0576, wb0577, wb0578, wb0579,
                wb0580, wb0581, wb0582, wb0583, wb0584, wb0585, wb0586, wb0587, wb0588, wb0589,
                wb0590, wb0591, wb0592, wb0593, wb0594, wb0595, wb0596, wb0597, wb0598, wb0599,
                wb0600, wb0601, wb0602, wb0603, wb0604, wb0605, wb0606, wb0607, wb0608, wb0609,
                wb0610, wb0611, wb0612, wb0613, wb0614, wb0615, wb0616, wb0617, wb0618, wb0619,
                wb0620, wb0621, wb0622, wb0623, wb0624, wb0625, wb0626, wb0627, wb0628, wb0629,
                wb0630, wb0631, wb0632, wb0633, wb0634, wb0635, wb0636, wb0637, wb0638, wb0639,
                wb0640, wb0641, wb0642, wb0643, wb0644, wb0645, wb0646, wb0647, wb0648, wb0649,
                wb0650, wb0651, wb0652, wb0653, wb0654, wb0655, wb0656, wb0657, wb0658, wb0659,
                wb0660, wb0661, wb0662, wb0663, wb0664, wb0665, wb0666, wb0667, wb0668, wb0669,
                wb0670, wb0671, wb0672, wb0673, wb0674, wb0675, wb0676, wb0677, wb0678, wb0679,
                wb0680, wb0681, wb0682, wb0683, wb0684, wb0685, wb0686, wb0687, wb0688, wb0689,
                wb0690, wb0691, wb0692, wb0693, wb0694, wb0695, wb0696, wb0697, wb0698, wb0699,
                wb0700, wb0701, wb0702, wb0703, wb0704, wb0705, wb0706, wb0707, wb0708, wb0709,
                wb0710, wb0711, wb0712, wb0713, wb0714, wb0715, wb0716, wb0717, wb0718, wb0719,
                wb0720, wb0721, wb0722, wb0723, wb0724, wb0725, wb0726, wb0727, wb0728, wb0729,
                wb0730, wb0731, wb0732, wb0733, wb0734, wb0735, wb0736, wb0737, wb0738, wb0739,
                wb0740, wb0741, wb0742, wb0743, wb0744, wb0745, wb0746, wb0747, wb0748, wb0749,
                wb0750, wb0751, wb0752, wb0753, wb0754, wb0755, wb0756, wb0757, wb0758, wb0759,
                wb0760, wb0761, wb0762, wb0763, wb0764, wb0765, wb0766, wb0767, wb0768, wb0769,
                wb0770, wb0771, wb0772, wb0773, wb0774, wb0775, wb0776, wb0777, wb0778, wb0779,
                wb0780, wb0781, wb0782, wb0783, wb0784, wb0785, wb0786, wb0787, wb0788, wb0789,
                wb0790, wb0791, wb0792, wb0793, wb0794, wb0795, wb0796, wb0797, wb0798, wb0799,
                wb0800, wb0801, wb0802, wb0803, wb0804, wb0805, wb0806, wb0807, wb0808, wb0809,
                wb0810, wb0811, wb0812, wb0813, wb0814, wb0815, wb0816, wb0817, wb0818, wb0819,
                wb0820, wb0821, wb0822, wb0823, wb0824, wb0825, wb0826, wb0827, wb0828, wb0829,
                wb0830, wb0831, wb0832, wb0833, wb0834, wb0835, wb0836, wb0837, wb0838, wb0839,
                wb0840, wb0841, wb0842, wb0843, wb0844, wb0845, wb0846, wb0847, wb0848, wb0849,
                wb0850, wb0851, wb0852, wb0853, wb0854, wb0855, wb0856, wb0857, wb0858, wb0859,
                wb0860, wb0861, wb0862, wb0863, wb0864, wb0865, wb0866, wb0867, wb0868, wb0869,
                wb0870, wb0871, wb0872, wb0873, wb0874, wb0875, wb0876, wb0877, wb0878, wb0879,
                wb0880, wb0881, wb0882, wb0883, wb0884, wb0885, wb0886, wb0887, wb0888, wb0889,
                wb0890, wb0891, wb0892, wb0893, wb0894, wb0895, wb0896, wb0897, wb0898, wb0899,
                wb0900, wb0901, wb0902, wb0903, wb0904, wb0905, wb0906, wb0907, wb0908, wb0909,
                wb0910, wb0911, wb0912, wb0913, wb0914, wb0915, wb0916, wb0917, wb0918, wb0919,
                wb0920, wb0921, wb0922, wb0923, wb0924, wb0925, wb0926, wb0927, wb0928, wb0929,
                wb0930, wb0931, wb0932, wb0933, wb0934, wb0935, wb0936, wb0937, wb0938, wb0939,
                wb0940, wb0941, wb0942, wb0943, wb0944, wb0945, wb0946, wb0947, wb0948, wb0949,
                wb0950, wb0951, wb0952, wb0953, wb0954, wb0955, wb0956, wb0957, wb0958, wb0959,
                wb0960, wb0961, wb0962, wb0963, wb0964, wb0965, wb0966, wb0967, wb0968, wb0969,
                wb0970, wb0971, wb0972, wb0973, wb0974, wb0975, wb0976, wb0977, wb0978, wb0979,
                wb0980, wb0981, wb0982, wb0983, wb0984, wb0985, wb0986, wb0987, wb0988, wb0989,
                wb0990, wb0991, wb0992, wb0993, wb0994, wb0995, wb0996, wb0997, wb0998, wb0999,
                wb1000, wb1001, wb1002, wb1003, wb1004, wb1005, wb1006, wb1007, wb1008, wb1009,
                wb1010, wb1011, wb1012, wb1013, wb1014, wb1015, wb1016, wb1017, wb1018, wb1019,
                wb1020, wb1021, wb1022, wb1023, wb1024, wb1025, wb1026, wb1027, wb1028, wb1029,
                wb1030, wb1031, wb1032, wb1033, wb1034, wb1035, wb1036, wb1037, wb1038, wb1039,
                wb1040, wb1041, wb1042, wb1043, wb1044, wb1045, wb1046, wb1047, wb1048, wb1049,
                wb1050, wb1051, wb1052, wb1053, wb1054, wb1055, wb1056, wb1057, wb1058, wb1059,
                wb1060, wb1061, wb1062, wb1063, wb1064, wb1065, wb1066, wb1067, wb1068, wb1069,
                wb1070, wb1071, wb1072, wb1073, wb1074, wb1075, wb1076, wb1077, wb1078, wb1079,
                wb1080, wb1081, wb1082, wb1083, wb1084, wb1085, wb1086, wb1087, wb1088, wb1089,
                wb1090, wb1091, wb1092, wb1093, wb1094, wb1095, wb1096, wb1097, wb1098, wb1099,
                wb1100, wb1101, wb1102, wb1103, wb1104, wb1105, wb1106, wb1107, wb1108, wb1109,
                wb1110, wb1111, wb1112, wb1113, wb1114, wb1115, wb1116, wb1117, wb1118, wb1119,
                wb1120, wb1121, wb1122, wb1123, wb1124, wb1125, wb1126, wb1127, wb1128, wb1129,
                wb1130, wb1131, wb1132, wb1133, wb1134, wb1135, wb1136, wb1137, wb1138, wb1139,
                wb1140, wb1141, wb1142, wb1143, wb1144, wb1145, wb1146, wb1147, wb1148, wb1149,
                wb1150, wb1151, wb1152, wb1153, wb1154, wb1155, wb1156, wb1157, wb1158, wb1159,
                wb1160, wb1161, wb1162, wb1163, wb1164, wb1165, wb1166, wb1167, wb1168, wb1169,
                wb1170, wb1171, wb1172, wb1173, wb1174, wb1175, wb1176, wb1177, wb1178, wb1179,
                wb1180, wb1181, wb1182, wb1183, wb1184, wb1185, wb1186, wb1187, wb1188, wb1189,
                wb1190, wb1191, wb1192, wb1193, wb1194, wb1195, wb1196, wb1197, wb1198, wb1199,
                wb1200, wb1201, wb1202, wb1203, wb1204, wb1205, wb1206, wb1207, wb1208, wb1209,
                wb1210, wb1211, wb1212, wb1213, wb1214, wb1215, wb1216, wb1217, wb1218, wb1219,
                wb1220, wb1221, wb1222, wb1223, wb1224, wb1225, wb1226, wb1227, wb1228, wb1229,
                wb1230, wb1231, wb1232, wb1233, wb1234, wb1235, wb1236, wb1237, wb1238, wb1239,
                wb1240, wb1241, wb1242, wb1243, wb1244, wb1245, wb1246, wb1247, wb1248, wb1249,
                wb1250, wb1251, wb1252, wb1253, wb1254, wb1255, wb1256, wb1257, wb1258, wb1259,
                wb1260, wb1261, wb1262, wb1263, wb1264, wb1265, wb1266, wb1267, wb1268, wb1269,
                wb1270, wb1271, wb1272, wb1273, wb1274, wb1275, wb1276, wb1277, wb1278, wb1279,
                wb1280, wb1281, wb1282, wb1283, wb1284, wb1285, wb1286, wb1287, wb1288, wb1289,
                wb1290, wb1291, wb1292, wb1293, wb1294, wb1295, wb1296, wb1297, wb1298, wb1299,
                wb1300, wb1301, wb1302, wb1303, wb1304, wb1305, wb1306, wb1307, wb1308, wb1309,
                wb1310, wb1311, wb1312, wb1313, wb1314, wb1315, wb1316, wb1317, wb1318, wb1319,
                wb1320, wb1321, wb1322, wb1323, wb1324, wb1325, wb1326, wb1327, wb1328, wb1329,
                wb1330, wb1331, wb1332, wb1333, wb1334, wb1335, wb1336, wb1337, wb1338, wb1339,
                wb1340, wb1341, wb1342, wb1343, wb1344, wb1345, wb1346, wb1347, wb1348, wb1349,
                wb1350, wb1351, wb1352, wb1353, wb1354, wb1355, wb1356, wb1357, wb1358, wb1359,
                wb1360, wb1361, wb1362, wb1363, wb1364, wb1365, wb1366, wb1367, wb1368, wb1369,
                wb1370, wb1371, wb1372, wb1373, wb1374, wb1375, wb1376, wb1377, wb1378, wb1379,
                wb1380, wb1381, wb1382, wb1383, wb1384, wb1385, wb1386, wb1387, wb1388, wb1389,
                wb1390, wb1391, wb1392, wb1393, wb1394, wb1395, wb1396, wb1397, wb1398, wb1399,
                wb1400, wb1401, wb1402, wb1403, wb1404, wb1405, wb1406, wb1407, wb1408, wb1409,
                wb1410, wb1411, wb1412, wb1413, wb1414, wb1415, wb1416, wb1417, wb1418, wb1419,
                wb1420, wb1421, wb1422, wb1423, wb1424, wb1425, wb1426, wb1427, wb1428, wb1429,
                wb1430, wb1431, wb1432, wb1433, wb1434, wb1435, wb1436, wb1437, wb1438, wb1439;
    
    wire [7:0] wd00, wd01, wd02, wd03, wd04, wd05, wd06, wd07,
               wd08, wd09, wd10, wd11, wd12, wd13, wd14;
    
    tones m0(frequencies[3], note_display[31:24], note_display[23:16], wm1439[13:7], clock);
    tones m1(frequencies[2], note_display[63:56], note_display[55:48], wm1439[6:0], clock);
    tones b0(frequencies[1], note_display[15:8], note_display[7:0], wb1439[13:7], clock);
    tones b1(frequencies[0], note_display[47:40], note_display[39:32], wb1439[6:0], clock);
    mux2v #(1) m_chord(freq[1], frequencies[3], frequencies[2], clock);
    mux2v #(1) b_chord(freq[0], frequencies[1], frequencies[0], clock);
    
    //Display
    register #(8, `OFF) d00(wd00, wd14, disp_speed, 1, reset);
    register #(8, `OFF) d01(wd01, wd00, disp_speed, 1, reset);
    register #(8, `OFF) d02(wd02, wd01, disp_speed, 1, reset);
    register #(8, `OFF) d03(wd03, wd02, disp_speed, 1, reset);
    register #(8, `E) d04(wd04, wd03, disp_speed, 1, reset);
    register #(8, `M) d05(wd05, wd04, disp_speed, 1, reset);
    register #(8, `E) d06(wd06, wd05, disp_speed, 1, reset);
    register #(8, `H) d07(wd07, wd06, disp_speed, 1, reset);
    register #(8, `T) d08(wd08, wd07, disp_speed, 1, reset);
    register #(8, `OFF) d09(wd09, wd08, disp_speed, 1, reset);
    register #(8, `A) d10(wd10, wd09, disp_speed, 1, reset);
    register #(8, `D) d11(wd11, wd10, disp_speed, 1, reset);
    register #(8, `L) d12(wd12, wd11, disp_speed, 1, reset);
    register #(8, `E) d13(wd13, wd12, disp_speed, 1, reset);
    register #(8, `Z) d14(wd14, wd13, disp_speed, 1, reset);
    
    assign title_display = {wd00, wd14, wd13, wd12};
    
    //Melody
    //30
    register #(14, {`Gb3, `F4}) m0000(wm0000, wm1439, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0001(wm0001, wm0000, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0002(wm0002, wm0001, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0003(wm0003, wm0002, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0004(wm0004, wm0003, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0005(wm0005, wm0004, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0006(wm0006, wm0005, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0007(wm0007, wm0006, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0008(wm0008, wm0007, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0009(wm0009, wm0008, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0010(wm0010, wm0009, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0011(wm0011, wm0010, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0012(wm0012, wm0011, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0013(wm0013, wm0012, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0014(wm0014, wm0013, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0015(wm0015, wm0014, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0016(wm0016, wm0015, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0017(wm0017, wm0016, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0018(wm0018, wm0017, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0019(wm0019, wm0018, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0020(wm0020, wm0019, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0021(wm0021, wm0020, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0022(wm0022, wm0021, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0023(wm0023, wm0022, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0024(wm0024, wm0023, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0025(wm0025, wm0024, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0026(wm0026, wm0025, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0027(wm0027, wm0026, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0028(wm0028, wm0027, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0029(wm0029, wm0028, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0030(wm0030, wm0029, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0031(wm0031, wm0030, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0032(wm0032, wm0031, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0033(wm0033, wm0032, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0034(wm0034, wm0033, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0035(wm0035, wm0034, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0036(wm0036, wm0035, song_speed, !pause, reset);
    register #(14, {`A3, `F4}) m0037(wm0037, wm0036, song_speed, !pause, reset);
    register #(14, {`A3, `F4}) m0038(wm0038, wm0037, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0039(wm0039, wm0038, song_speed, !pause, reset);
    register #(14, {`A3, `F4}) m0040(wm0040, wm0039, song_speed, !pause, reset);
    register #(14, {`A3, `F4}) m0041(wm0041, wm0040, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0042(wm0042, wm0041, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0043(wm0043, wm0042, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0044(wm0044, wm0043, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0045(wm0045, wm0044, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0046(wm0046, wm0045, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0047(wm0047, wm0046, song_speed, !pause, reset);
    //30
    
    //29
    register #(14, {`C5, `G5}) m0048(wm0048, wm0047, song_speed, !pause, reset);
    register #(14, {`C5, `G5}) m0049(wm0049, wm0048, song_speed, !pause, reset);
    register #(14, {`C5, `G5}) m0050(wm0050, wm0049, song_speed, !pause, reset);
    register #(14, {`C5, `G5}) m0051(wm0051, wm0050, song_speed, !pause, reset);
    register #(14, {`C5, `G5}) m0052(wm0052, wm0051, song_speed, !pause, reset);
    register #(14, {`C5, `G5}) m0053(wm0053, wm0052, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0054(wm0054, wm0053, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0055(wm0055, wm0054, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0056(wm0056, wm0055, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0057(wm0057, wm0056, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0058(wm0058, wm0057, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0059(wm0059, wm0058, song_speed, !pause, reset);
    register #(14, {`A4, `E5}) m0060(wm0060, wm0059, song_speed, !pause, reset);
    register #(14, {`A4, `E5}) m0061(wm0061, wm0060, song_speed, !pause, reset);
    register #(14, {`A4, `E5}) m0062(wm0062, wm0061, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0063(wm0063, wm0062, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0064(wm0064, wm0063, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0065(wm0065, wm0064, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0066(wm0066, wm0065, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0067(wm0067, wm0066, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0068(wm0068, wm0067, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0069(wm0069, wm0068, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0070(wm0070, wm0069, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0071(wm0071, wm0070, song_speed, !pause, reset);
    register #(14, {`F4, `E5}) m0072(wm0072, wm0071, song_speed, !pause, reset);
    register #(14, {`F4, `E5}) m0073(wm0073, wm0072, song_speed, !pause, reset);
    register #(14, {`F4, `E5}) m0074(wm0074, wm0073, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0075(wm0075, wm0074, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0076(wm0076, wm0075, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0077(wm0077, wm0076, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0078(wm0078, wm0077, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0079(wm0079, wm0078, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0080(wm0080, wm0079, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0081(wm0081, wm0080, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0082(wm0082, wm0081, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0083(wm0083, wm0082, song_speed, !pause, reset);
    register #(14, {`E4, `D5}) m0084(wm0084, wm0083, song_speed, !pause, reset);
    register #(14, {`E4, `D5}) m0085(wm0085, wm0084, song_speed, !pause, reset);
    register #(14, {`E4, `D5}) m0086(wm0086, wm0085, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0087(wm0087, wm0086, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0088(wm0088, wm0087, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0089(wm0089, wm0088, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0090(wm0090, wm0089, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0091(wm0091, wm0090, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0092(wm0092, wm0091, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0093(wm0093, wm0092, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0094(wm0094, wm0093, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0095(wm0095, wm0094, song_speed, !pause, reset);
    //29
    
    //28
    register #(14, {`Db4, `Bb4}) m0096(wm0096, wm0095, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0097(wm0097, wm0096, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0098(wm0098, wm0097, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0099(wm0099, wm0098, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0100(wm0100, wm0099, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0101(wm0101, wm0100, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0102(wm0102, wm0101, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0103(wm0103, wm0102, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0104(wm0104, wm0103, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0105(wm0105, wm0104, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0106(wm0106, wm0105, song_speed, !pause, reset);
    register #(14, {`Db4, `Bb4}) m0107(wm0107, wm0106, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0108(wm0108, wm0107, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0109(wm0109, wm0108, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0110(wm0110, wm0109, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0111(wm0111, wm0110, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0112(wm0112, wm0111, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0113(wm0113, wm0112, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0114(wm0114, wm0113, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0115(wm0115, wm0114, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0116(wm0116, wm0115, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0117(wm0117, wm0116, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0118(wm0118, wm0117, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0119(wm0119, wm0118, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0120(wm0120, wm0119, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0121(wm0121, wm0120, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0122(wm0122, wm0121, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0123(wm0123, wm0122, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0124(wm0124, wm0123, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0125(wm0125, wm0124, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0126(wm0126, wm0125, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0127(wm0127, wm0126, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0128(wm0128, wm0127, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0129(wm0129, wm0128, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0130(wm0130, wm0129, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0131(wm0131, wm0130, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0132(wm0132, wm0131, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0133(wm0133, wm0132, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0134(wm0134, wm0133, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0135(wm0135, wm0134, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0136(wm0136, wm0135, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0137(wm0137, wm0136, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0138(wm0138, wm0137, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0139(wm0139, wm0138, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0140(wm0140, wm0139, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0141(wm0141, wm0140, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0142(wm0142, wm0141, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0143(wm0143, wm0142, song_speed, !pause, reset);
    //28
    
    //27
    register #(14, {`B4, `Gb5}) m0144(wm0144, wm0143, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0145(wm0145, wm0144, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0146(wm0146, wm0145, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0147(wm0147, wm0146, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0148(wm0148, wm0147, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0149(wm0149, wm0148, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0150(wm0150, wm0149, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0151(wm0151, wm0150, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0152(wm0152, wm0151, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0153(wm0153, wm0152, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0154(wm0154, wm0153, song_speed, !pause, reset);
    register #(14, {`B4, `Gb5}) m0155(wm0155, wm0154, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0156(wm0156, wm0155, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0157(wm0157, wm0156, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0158(wm0158, wm0157, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0159(wm0159, wm0158, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0160(wm0160, wm0159, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0161(wm0161, wm0160, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0162(wm0162, wm0161, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0163(wm0163, wm0162, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0164(wm0164, wm0163, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0165(wm0165, wm0164, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0166(wm0166, wm0165, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0167(wm0167, wm0166, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0168(wm0168, wm0167, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0169(wm0169, wm0168, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0170(wm0170, wm0169, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0171(wm0171, wm0170, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0172(wm0172, wm0171, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0173(wm0173, wm0172, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0174(wm0174, wm0173, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0175(wm0175, wm0174, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0176(wm0176, wm0175, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0177(wm0177, wm0176, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0178(wm0178, wm0177, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0179(wm0179, wm0178, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0180(wm0180, wm0179, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0181(wm0181, wm0180, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0182(wm0182, wm0181, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0183(wm0183, wm0182, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0184(wm0184, wm0183, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0185(wm0185, wm0184, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0186(wm0186, wm0185, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0187(wm0187, wm0186, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0188(wm0188, wm0187, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0189(wm0189, wm0188, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0190(wm0190, wm0189, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0191(wm0191, wm0190, song_speed, !pause, reset);
    //27
    
    //26
    register #(14, {`F4, `D5}) m0192(wm0192, wm0191, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0193(wm0193, wm0192, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0194(wm0194, wm0193, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0195(wm0195, wm0194, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0196(wm0196, wm0195, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0197(wm0197, wm0196, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0198(wm0198, wm0197, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0199(wm0199, wm0198, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0200(wm0200, wm0199, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0201(wm0201, wm0200, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0202(wm0202, wm0201, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0203(wm0203, wm0202, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0204(wm0204, wm0203, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0205(wm0205, wm0204, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0206(wm0206, wm0205, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0207(wm0207, wm0206, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0208(wm0208, wm0207, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0209(wm0209, wm0208, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0210(wm0210, wm0209, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0211(wm0211, wm0210, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0212(wm0212, wm0211, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0213(wm0213, wm0212, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0214(wm0214, wm0213, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0215(wm0215, wm0214, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0216(wm0216, wm0215, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0217(wm0217, wm0216, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0218(wm0218, wm0217, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0219(wm0219, wm0218, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0220(wm0220, wm0219, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0221(wm0221, wm0220, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0222(wm0222, wm0221, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0223(wm0223, wm0222, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0224(wm0224, wm0223, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0225(wm0225, wm0224, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0226(wm0226, wm0225, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0227(wm0227, wm0226, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0228(wm0228, wm0227, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0229(wm0229, wm0228, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0230(wm0230, wm0229, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0231(wm0231, wm0230, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0232(wm0232, wm0231, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0233(wm0233, wm0232, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0234(wm0234, wm0233, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0235(wm0235, wm0234, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0236(wm0236, wm0235, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0237(wm0237, wm0236, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0238(wm0238, wm0237, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0239(wm0239, wm0238, song_speed, !pause, reset);
    //26
    
    //25
    register #(14, {`Bb5, `REST}) m0240(wm0240, wm0239, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0241(wm0241, wm0240, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0242(wm0242, wm0241, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0243(wm0243, wm0242, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0244(wm0244, wm0243, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0245(wm0245, wm0244, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0246(wm0246, wm0245, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0247(wm0247, wm0246, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0248(wm0248, wm0247, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0249(wm0249, wm0248, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0250(wm0250, wm0249, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0251(wm0251, wm0250, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0252(wm0252, wm0251, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0253(wm0253, wm0252, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0254(wm0254, wm0253, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0255(wm0255, wm0254, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0256(wm0256, wm0255, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0257(wm0257, wm0256, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0258(wm0258, wm0257, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0259(wm0259, wm0258, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0260(wm0260, wm0259, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0261(wm0261, wm0260, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0262(wm0262, wm0261, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0263(wm0263, wm0262, song_speed, !pause, reset);
    register #(14, {`Db5, `REST}) m0264(wm0264, wm0263, song_speed, !pause, reset);
    register #(14, {`Db5, `REST}) m0265(wm0265, wm0264, song_speed, !pause, reset);
    register #(14, {`Db5, `REST}) m0266(wm0266, wm0265, song_speed, !pause, reset);
    register #(14, {`Db5, `REST}) m0267(wm0267, wm0266, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0268(wm0268, wm0267, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0269(wm0269, wm0268, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0270(wm0270, wm0269, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0271(wm0271, wm0270, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m0272(wm0272, wm0271, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m0273(wm0273, wm0272, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m0274(wm0274, wm0273, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m0275(wm0275, wm0274, song_speed, !pause, reset);
    register #(14, {`Db4, `REST}) m0276(wm0276, wm0275, song_speed, !pause, reset);
    register #(14, {`Db4, `REST}) m0277(wm0277, wm0276, song_speed, !pause, reset);
    register #(14, {`Db4, `REST}) m0278(wm0278, wm0277, song_speed, !pause, reset);
    register #(14, {`Db4, `REST}) m0279(wm0279, wm0278, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) m0280(wm0280, wm0279, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) m0281(wm0281, wm0280, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) m0282(wm0282, wm0281, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) m0283(wm0283, wm0282, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) m0284(wm0284, wm0283, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) m0285(wm0285, wm0284, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) m0286(wm0286, wm0285, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) m0287(wm0287, wm0286, song_speed, !pause, reset);
    //25
    
    //24
    register #(14, {`F4, `F5}) m0288(wm0288, wm0287, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0289(wm0289, wm0288, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0290(wm0290, wm0289, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0291(wm0291, wm0290, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0292(wm0292, wm0291, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0293(wm0293, wm0292, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0294(wm0294, wm0293, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0295(wm0295, wm0294, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0296(wm0296, wm0295, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0297(wm0297, wm0296, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0298(wm0298, wm0297, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0299(wm0299, wm0298, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0300(wm0300, wm0299, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0301(wm0301, wm0300, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0302(wm0302, wm0301, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0303(wm0303, wm0302, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0304(wm0304, wm0303, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0305(wm0305, wm0304, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0306(wm0306, wm0305, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0307(wm0307, wm0306, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0308(wm0308, wm0307, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0309(wm0309, wm0308, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0310(wm0310, wm0309, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0311(wm0311, wm0310, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0312(wm0312, wm0311, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0313(wm0313, wm0312, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0314(wm0314, wm0313, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0315(wm0315, wm0314, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0316(wm0316, wm0315, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0317(wm0317, wm0316, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0318(wm0318, wm0317, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0319(wm0319, wm0318, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0320(wm0320, wm0319, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0321(wm0321, wm0320, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0322(wm0322, wm0321, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0323(wm0323, wm0322, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0324(wm0324, wm0323, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0325(wm0325, wm0324, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0326(wm0326, wm0325, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0327(wm0327, wm0326, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0328(wm0328, wm0327, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0329(wm0329, wm0328, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0330(wm0330, wm0329, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0331(wm0331, wm0330, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0332(wm0332, wm0331, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0333(wm0333, wm0332, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0334(wm0334, wm0333, song_speed, !pause, reset);
    register #(14, {`F5, `A5}) m0335(wm0335, wm0334, song_speed, !pause, reset);
    //24
    
    //23
    register #(14, {`Bb5, `REST}) m0336(wm0336, wm0335, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0337(wm0337, wm0336, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0338(wm0338, wm0337, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0339(wm0339, wm0338, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0340(wm0340, wm0339, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0341(wm0341, wm0340, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0342(wm0342, wm0341, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0343(wm0343, wm0342, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0344(wm0344, wm0343, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0345(wm0345, wm0344, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0346(wm0346, wm0345, song_speed, !pause, reset);
    register #(14, {`Bb5, `REST}) m0347(wm0347, wm0346, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0348(wm0348, wm0347, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0349(wm0349, wm0348, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0350(wm0350, wm0349, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0351(wm0351, wm0350, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0352(wm0352, wm0351, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0353(wm0353, wm0352, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0354(wm0354, wm0353, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0355(wm0355, wm0354, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0356(wm0356, wm0355, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0357(wm0357, wm0356, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0358(wm0358, wm0357, song_speed, !pause, reset);
    register #(14, {`E5, `REST}) m0359(wm0359, wm0358, song_speed, !pause, reset);
    register #(14, {`Db5, `REST}) m0360(wm0360, wm0359, song_speed, !pause, reset);
    register #(14, {`Db5, `REST}) m0361(wm0361, wm0360, song_speed, !pause, reset);
    register #(14, {`Db5, `REST}) m0362(wm0362, wm0361, song_speed, !pause, reset);
    register #(14, {`Db5, `REST}) m0363(wm0363, wm0362, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0364(wm0364, wm0363, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0365(wm0365, wm0364, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0366(wm0366, wm0365, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0367(wm0367, wm0366, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m0368(wm0368, wm0367, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m0369(wm0369, wm0368, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m0370(wm0370, wm0369, song_speed, !pause, reset);
    register #(14, {`E4, `REST}) m0371(wm0371, wm0370, song_speed, !pause, reset);
    register #(14, {`Db4, `REST}) m0372(wm0372, wm0371, song_speed, !pause, reset);
    register #(14, {`Db4, `REST}) m0373(wm0373, wm0372, song_speed, !pause, reset);
    register #(14, {`Db4, `REST}) m0374(wm0374, wm0373, song_speed, !pause, reset);
    register #(14, {`Db4, `REST}) m0375(wm0375, wm0374, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) m0376(wm0376, wm0375, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) m0377(wm0377, wm0376, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) m0378(wm0378, wm0377, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) m0379(wm0379, wm0378, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) m0380(wm0380, wm0379, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) m0381(wm0381, wm0380, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) m0382(wm0382, wm0381, song_speed, !pause, reset);
    register #(14, {`E3, `REST}) m0383(wm0383, wm0382, song_speed, !pause, reset);
    //23
    
    //22
    register #(14, {`A4, `F5}) m0384(wm0384, wm0383, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0385(wm0385, wm0384, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0386(wm0386, wm0385, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0387(wm0387, wm0386, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0388(wm0388, wm0387, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0389(wm0389, wm0388, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0390(wm0390, wm0389, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0391(wm0391, wm0390, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0392(wm0392, wm0391, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0393(wm0393, wm0392, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0394(wm0394, wm0393, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0395(wm0395, wm0394, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0396(wm0396, wm0395, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0397(wm0397, wm0396, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0398(wm0398, wm0397, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0399(wm0399, wm0398, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0400(wm0400, wm0399, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0401(wm0401, wm0400, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0402(wm0402, wm0401, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0403(wm0403, wm0402, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0404(wm0404, wm0403, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0405(wm0405, wm0404, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0406(wm0406, wm0405, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0407(wm0407, wm0406, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0408(wm0408, wm0407, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0409(wm0409, wm0408, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0410(wm0410, wm0409, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0411(wm0411, wm0410, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0412(wm0412, wm0411, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0413(wm0413, wm0412, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0414(wm0414, wm0413, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0415(wm0415, wm0414, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0416(wm0416, wm0415, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0417(wm0417, wm0416, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0418(wm0418, wm0417, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0419(wm0419, wm0418, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0420(wm0420, wm0419, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0421(wm0421, wm0420, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0422(wm0422, wm0421, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0423(wm0423, wm0422, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0424(wm0424, wm0423, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0425(wm0425, wm0424, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0426(wm0426, wm0425, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0427(wm0427, wm0426, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0428(wm0428, wm0427, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0429(wm0429, wm0428, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0430(wm0430, wm0429, song_speed, !pause, reset);
    register #(14, {`Eb5, `C6}) m0431(wm0431, wm0430, song_speed, !pause, reset);
    //22
    
    //21
    register #(14, {`E5, `Db6}) m0432(wm0432, wm0431, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0433(wm0433, wm0432, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0434(wm0434, wm0433, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0435(wm0435, wm0434, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0436(wm0436, wm0435, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0437(wm0437, wm0436, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0438(wm0438, wm0437, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0439(wm0439, wm0438, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0440(wm0440, wm0439, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0441(wm0441, wm0440, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0442(wm0442, wm0441, song_speed, !pause, reset);
    register #(14, {`E5, `Db6}) m0443(wm0443, wm0442, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0444(wm0444, wm0443, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0445(wm0445, wm0444, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0446(wm0446, wm0445, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0447(wm0447, wm0446, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0448(wm0448, wm0447, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0449(wm0449, wm0448, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0450(wm0450, wm0449, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0451(wm0451, wm0450, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0452(wm0452, wm0451, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0453(wm0453, wm0452, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0454(wm0454, wm0453, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0455(wm0455, wm0454, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0456(wm0456, wm0455, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0457(wm0457, wm0456, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0458(wm0458, wm0457, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0459(wm0459, wm0458, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0460(wm0460, wm0459, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0461(wm0461, wm0460, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0462(wm0462, wm0461, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0463(wm0463, wm0462, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0464(wm0464, wm0463, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0465(wm0465, wm0464, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0466(wm0466, wm0465, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0467(wm0467, wm0466, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0468(wm0468, wm0467, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0469(wm0469, wm0468, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0470(wm0470, wm0469, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0471(wm0471, wm0470, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0472(wm0472, wm0471, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0473(wm0473, wm0472, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0474(wm0474, wm0473, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0475(wm0475, wm0474, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0476(wm0476, wm0475, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0477(wm0477, wm0476, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0478(wm0478, wm0477, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0479(wm0479, wm0478, song_speed, !pause, reset);
    //21
    
    //20
    register #(14, {`C5, `Ab5}) m0480(wm0480, wm0479, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0481(wm0481, wm0480, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0482(wm0482, wm0481, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0483(wm0483, wm0482, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0484(wm0484, wm0483, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0485(wm0485, wm0484, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0486(wm0486, wm0485, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0487(wm0487, wm0486, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0488(wm0488, wm0487, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0489(wm0489, wm0488, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0490(wm0490, wm0489, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0491(wm0491, wm0490, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0492(wm0492, wm0491, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0493(wm0493, wm0492, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0494(wm0494, wm0493, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0495(wm0495, wm0494, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0496(wm0496, wm0495, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0497(wm0497, wm0496, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0498(wm0498, wm0497, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0499(wm0499, wm0498, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0500(wm0500, wm0499, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0501(wm0501, wm0500, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0502(wm0502, wm0501, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0503(wm0503, wm0502, song_speed, !pause, reset);
    register #(14, {`Eb5, `F5}) m0504(wm0504, wm0503, song_speed, !pause, reset);
    register #(14, {`Eb5, `F5}) m0505(wm0505, wm0504, song_speed, !pause, reset);
    register #(14, {`Eb5, `F5}) m0506(wm0506, wm0505, song_speed, !pause, reset);
    register #(14, {`D5, `F5}) m0507(wm0507, wm0506, song_speed, !pause, reset);
    register #(14, {`D5, `F5}) m0508(wm0508, wm0507, song_speed, !pause, reset);
    register #(14, {`D5, `F5}) m0509(wm0509, wm0508, song_speed, !pause, reset);
    register #(14, {`C5, `F5}) m0510(wm0510, wm0509, song_speed, !pause, reset);
    register #(14, {`C5, `F5}) m0511(wm0511, wm0510, song_speed, !pause, reset);
    register #(14, {`C5, `F5}) m0512(wm0512, wm0511, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0513(wm0513, wm0512, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0514(wm0514, wm0513, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0515(wm0515, wm0514, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0516(wm0516, wm0515, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0517(wm0517, wm0516, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0518(wm0518, wm0517, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0519(wm0519, wm0518, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0520(wm0520, wm0519, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0521(wm0521, wm0520, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0522(wm0522, wm0521, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0523(wm0523, wm0522, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0524(wm0524, wm0523, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0525(wm0525, wm0524, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0526(wm0526, wm0525, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0527(wm0527, wm0526, song_speed, !pause, reset);
    //20
    
    //19
    register #(14, {`G4, `Eb5}) m0528(wm0528, wm0527, song_speed, !pause, reset);
    register #(14, {`G4, `Eb5}) m0529(wm0529, wm0528, song_speed, !pause, reset);
    register #(14, {`G4, `Eb5}) m0530(wm0530, wm0529, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0531(wm0531, wm0530, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0532(wm0532, wm0531, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0533(wm0533, wm0532, song_speed, !pause, reset);
    register #(14, {`Eb4, `C5}) m0534(wm0534, wm0533, song_speed, !pause, reset);
    register #(14, {`Eb4, `C5}) m0535(wm0535, wm0534, song_speed, !pause, reset);
    register #(14, {`Eb4, `C5}) m0536(wm0536, wm0535, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0537(wm0537, wm0536, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0538(wm0538, wm0537, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0539(wm0539, wm0538, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0540(wm0540, wm0539, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0541(wm0541, wm0540, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0542(wm0542, wm0541, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0543(wm0543, wm0542, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0544(wm0544, wm0543, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0545(wm0545, wm0544, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0546(wm0546, wm0545, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0547(wm0547, wm0546, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0548(wm0548, wm0547, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0549(wm0549, wm0548, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0550(wm0550, wm0549, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0551(wm0551, wm0550, song_speed, !pause, reset);
    register #(14, {`C4, `F4}) m0552(wm0552, wm0551, song_speed, !pause, reset);
    register #(14, {`C4, `F4}) m0553(wm0553, wm0552, song_speed, !pause, reset);
    register #(14, {`C4, `F4}) m0554(wm0554, wm0553, song_speed, !pause, reset);
    register #(14, {`C4, `F4}) m0555(wm0555, wm0554, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0556(wm0556, wm0555, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0557(wm0557, wm0556, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0558(wm0558, wm0557, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0559(wm0559, wm0558, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0560(wm0560, wm0559, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0561(wm0561, wm0560, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0562(wm0562, wm0561, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0563(wm0563, wm0562, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0564(wm0564, wm0563, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0565(wm0565, wm0564, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0566(wm0566, wm0565, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0567(wm0567, wm0566, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0568(wm0568, wm0567, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0569(wm0569, wm0568, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0570(wm0570, wm0569, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0571(wm0571, wm0570, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0572(wm0572, wm0571, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0573(wm0573, wm0572, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0574(wm0574, wm0573, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0575(wm0575, wm0574, song_speed, !pause, reset);
    //19
    
    //18
    register #(14, {`Gb3, `F4}) m0576(wm0576, wm0575, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0577(wm0577, wm0576, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0578(wm0578, wm0577, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0579(wm0579, wm0578, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0580(wm0580, wm0579, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0581(wm0581, wm0580, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0582(wm0582, wm0581, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0583(wm0583, wm0582, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0584(wm0584, wm0583, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0585(wm0585, wm0584, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0586(wm0586, wm0585, song_speed, !pause, reset);
    register #(14, {`Gb3, `F4}) m0587(wm0587, wm0586, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0588(wm0588, wm0587, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0589(wm0589, wm0588, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0590(wm0590, wm0589, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0591(wm0591, wm0590, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0592(wm0592, wm0591, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0593(wm0593, wm0592, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0594(wm0594, wm0593, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0595(wm0595, wm0594, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0596(wm0596, wm0595, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0597(wm0597, wm0596, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0598(wm0598, wm0597, song_speed, !pause, reset);
    register #(14, {`G3, `F4}) m0599(wm0599, wm0598, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0600(wm0600, wm0599, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0601(wm0601, wm0600, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0602(wm0602, wm0601, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0603(wm0603, wm0602, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0604(wm0604, wm0603, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0605(wm0605, wm0604, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0606(wm0606, wm0605, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0607(wm0607, wm0606, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0608(wm0608, wm0607, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0609(wm0609, wm0608, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0610(wm0610, wm0609, song_speed, !pause, reset);
    register #(14, {`Ab3, `F4}) m0611(wm0611, wm0610, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0612(wm0612, wm0611, song_speed, !pause, reset);
    register #(14, {`A3, `F4}) m0613(wm0613, wm0612, song_speed, !pause, reset);
    register #(14, {`A3, `F4}) m0614(wm0614, wm0613, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0615(wm0615, wm0614, song_speed, !pause, reset);
    register #(14, {`A3, `F4}) m0616(wm0616, wm0615, song_speed, !pause, reset);
    register #(14, {`A3, `F4}) m0617(wm0617, wm0616, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0618(wm0618, wm0617, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0619(wm0619, wm0618, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0620(wm0620, wm0619, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0621(wm0621, wm0620, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0622(wm0622, wm0621, song_speed, !pause, reset);
    register #(14, {`A4, `F5}) m0623(wm0623, wm0622, song_speed, !pause, reset);
    //18
    
    //17
    register #(14, {`C5, `G5}) m0624(wm0624, wm0623, song_speed, !pause, reset);
    register #(14, {`C5, `G5}) m0625(wm0625, wm0624, song_speed, !pause, reset);
    register #(14, {`C5, `G5}) m0626(wm0626, wm0625, song_speed, !pause, reset);
    register #(14, {`C5, `G5}) m0627(wm0627, wm0626, song_speed, !pause, reset);
    register #(14, {`C5, `G5}) m0628(wm0628, wm0627, song_speed, !pause, reset);
    register #(14, {`C5, `G5}) m0629(wm0629, wm0628, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0630(wm0630, wm0629, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0631(wm0631, wm0630, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0632(wm0632, wm0631, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0633(wm0633, wm0632, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0634(wm0634, wm0633, song_speed, !pause, reset);
    register #(14, {`Bb4, `G5}) m0635(wm0635, wm0634, song_speed, !pause, reset);
    register #(14, {`A4, `E5}) m0636(wm0636, wm0635, song_speed, !pause, reset);
    register #(14, {`A4, `E5}) m0637(wm0637, wm0636, song_speed, !pause, reset);
    register #(14, {`A4, `E5}) m0638(wm0638, wm0637, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0639(wm0639, wm0638, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0640(wm0640, wm0639, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0641(wm0641, wm0640, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0642(wm0642, wm0641, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0643(wm0643, wm0642, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0644(wm0644, wm0643, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0645(wm0645, wm0644, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0646(wm0646, wm0645, song_speed, !pause, reset);
    register #(14, {`G4, `E5}) m0647(wm0647, wm0646, song_speed, !pause, reset);
    register #(14, {`F4, `E5}) m0648(wm0648, wm0647, song_speed, !pause, reset);
    register #(14, {`F4, `E5}) m0649(wm0649, wm0648, song_speed, !pause, reset);
    register #(14, {`F4, `E5}) m0650(wm0650, wm0649, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0651(wm0651, wm0650, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0652(wm0652, wm0651, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0653(wm0653, wm0652, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0654(wm0654, wm0653, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0655(wm0655, wm0654, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0656(wm0656, wm0655, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0657(wm0657, wm0656, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0658(wm0658, wm0657, song_speed, !pause, reset);
    register #(14, {`E4, `E5}) m0659(wm0659, wm0658, song_speed, !pause, reset);
    register #(14, {`E4, `D5}) m0660(wm0660, wm0659, song_speed, !pause, reset);
    register #(14, {`E4, `D5}) m0661(wm0661, wm0660, song_speed, !pause, reset);
    register #(14, {`E4, `D5}) m0662(wm0662, wm0661, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0663(wm0663, wm0662, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0664(wm0664, wm0663, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0665(wm0665, wm0664, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0666(wm0666, wm0665, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0667(wm0667, wm0666, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0668(wm0668, wm0667, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0669(wm0669, wm0668, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0670(wm0670, wm0669, song_speed, !pause, reset);
    register #(14, {`E4, `C5}) m0671(wm0671, wm0670, song_speed, !pause, reset);
    //17
    
    //16
    register #(14, {`F4, `Db5}) m0672(wm0672, wm0671, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0673(wm0673, wm0672, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0674(wm0674, wm0673, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0675(wm0675, wm0674, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0676(wm0676, wm0675, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0677(wm0677, wm0676, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0678(wm0678, wm0677, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0679(wm0679, wm0678, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0680(wm0680, wm0679, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0681(wm0681, wm0680, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0682(wm0682, wm0681, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0683(wm0683, wm0682, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0684(wm0684, wm0683, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0685(wm0685, wm0684, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0686(wm0686, wm0685, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0687(wm0687, wm0686, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0688(wm0688, wm0687, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0689(wm0689, wm0688, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0690(wm0690, wm0689, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0691(wm0691, wm0690, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0692(wm0692, wm0691, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0693(wm0693, wm0692, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0694(wm0694, wm0693, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0695(wm0695, wm0694, song_speed, !pause, reset);
    register #(14, {`Gb4, `F5}) m0696(wm0696, wm0695, song_speed, !pause, reset);
    register #(14, {`Gb4, `F5}) m0697(wm0697, wm0696, song_speed, !pause, reset);
    register #(14, {`Gb4, `F5}) m0698(wm0698, wm0697, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0699(wm0699, wm0698, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0700(wm0700, wm0699, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0701(wm0701, wm0700, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0702(wm0702, wm0701, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0703(wm0703, wm0702, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0704(wm0704, wm0703, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0705(wm0705, wm0704, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0706(wm0706, wm0705, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0707(wm0707, wm0706, song_speed, !pause, reset);
    register #(14, {`Eb4, `Eb5}) m0708(wm0708, wm0707, song_speed, !pause, reset);
    register #(14, {`Eb4, `Eb5}) m0709(wm0709, wm0708, song_speed, !pause, reset);
    register #(14, {`Eb4, `Eb5}) m0710(wm0710, wm0709, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0711(wm0711, wm0710, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0712(wm0712, wm0711, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0713(wm0713, wm0712, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0714(wm0714, wm0713, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0715(wm0715, wm0714, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0716(wm0716, wm0715, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0717(wm0717, wm0716, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0718(wm0718, wm0717, song_speed, !pause, reset);
    register #(14, {`F4, `Db5}) m0719(wm0719, wm0718, song_speed, !pause, reset);
    //16
    
    //15
    register #(14, {`Gb4, `Eb5}) m0720(wm0720, wm0719, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0721(wm0721, wm0720, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0722(wm0722, wm0721, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0723(wm0723, wm0722, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0724(wm0724, wm0723, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0725(wm0725, wm0724, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0726(wm0726, wm0725, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0727(wm0727, wm0726, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0728(wm0728, wm0727, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0729(wm0729, wm0728, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0730(wm0730, wm0729, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0731(wm0731, wm0730, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0732(wm0732, wm0731, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0733(wm0733, wm0732, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0734(wm0734, wm0733, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0735(wm0735, wm0734, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0736(wm0736, wm0735, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0737(wm0737, wm0736, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0738(wm0738, wm0737, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0739(wm0739, wm0738, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0740(wm0740, wm0739, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0741(wm0741, wm0740, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0742(wm0742, wm0741, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0743(wm0743, wm0742, song_speed, !pause, reset);
    register #(14, {`Ab4, `Gb5}) m0744(wm0744, wm0743, song_speed, !pause, reset);
    register #(14, {`Ab4, `Gb5}) m0745(wm0745, wm0744, song_speed, !pause, reset);
    register #(14, {`Ab4, `Gb5}) m0746(wm0746, wm0745, song_speed, !pause, reset);
    register #(14, {`Gb4, `Gb5}) m0747(wm0747, wm0746, song_speed, !pause, reset);
    register #(14, {`Gb4, `Gb5}) m0748(wm0748, wm0747, song_speed, !pause, reset);
    register #(14, {`Gb4, `Gb5}) m0749(wm0749, wm0748, song_speed, !pause, reset);
    register #(14, {`Gb4, `Gb5}) m0750(wm0750, wm0749, song_speed, !pause, reset);
    register #(14, {`Gb4, `Gb5}) m0751(wm0751, wm0750, song_speed, !pause, reset);
    register #(14, {`Gb4, `Gb5}) m0752(wm0752, wm0751, song_speed, !pause, reset);
    register #(14, {`Gb4, `Gb5}) m0753(wm0753, wm0752, song_speed, !pause, reset);
    register #(14, {`Gb4, `Gb5}) m0754(wm0754, wm0753, song_speed, !pause, reset);
    register #(14, {`Gb4, `Gb5}) m0755(wm0755, wm0754, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0756(wm0756, wm0755, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0757(wm0757, wm0756, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0758(wm0758, wm0757, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0759(wm0759, wm0758, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0760(wm0760, wm0759, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0761(wm0761, wm0760, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0762(wm0762, wm0761, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0763(wm0763, wm0762, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0764(wm0764, wm0763, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0765(wm0765, wm0764, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0766(wm0766, wm0765, song_speed, !pause, reset);
    register #(14, {`Gb4, `Eb5}) m0767(wm0767, wm0766, song_speed, !pause, reset);
    //15
    
    //14
    register #(14, {`Ab4, `F5}) m0768(wm0768, wm0767, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0769(wm0769, wm0768, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0770(wm0770, wm0769, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0771(wm0771, wm0770, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0772(wm0772, wm0771, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0773(wm0773, wm0772, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0774(wm0774, wm0773, song_speed, !pause, reset);
    register #(14, {`F4, `F5}) m0775(wm0775, wm0774, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0776(wm0776, wm0775, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0777(wm0777, wm0776, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0778(wm0778, wm0777, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0779(wm0779, wm0778, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0780(wm0780, wm0779, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0781(wm0781, wm0780, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0782(wm0782, wm0781, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0783(wm0783, wm0782, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0784(wm0784, wm0783, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0785(wm0785, wm0784, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0786(wm0786, wm0785, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0787(wm0787, wm0786, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0788(wm0788, wm0787, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0789(wm0789, wm0788, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0790(wm0790, wm0789, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0791(wm0791, wm0790, song_speed, !pause, reset);
    register #(14, {`Gb4, `F5}) m0792(wm0792, wm0791, song_speed, !pause, reset);
    register #(14, {`Gb4, `F5}) m0793(wm0793, wm0792, song_speed, !pause, reset);
    register #(14, {`Gb4, `F5}) m0794(wm0794, wm0793, song_speed, !pause, reset);
    register #(14, {`Gb4, `F5}) m0795(wm0795, wm0794, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0796(wm0796, wm0795, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0797(wm0797, wm0796, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0798(wm0798, wm0797, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0799(wm0799, wm0798, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0800(wm0800, wm0799, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0801(wm0801, wm0800, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0802(wm0802, wm0801, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0803(wm0803, wm0802, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0804(wm0804, wm0803, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0805(wm0805, wm0804, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0806(wm0806, wm0805, song_speed, !pause, reset);
    register #(14, {`Db5, `Ab5}) m0807(wm0807, wm0806, song_speed, !pause, reset);
    register #(14, {`Db5, `Ab5}) m0808(wm0808, wm0807, song_speed, !pause, reset);
    register #(14, {`Db5, `Ab5}) m0809(wm0809, wm0808, song_speed, !pause, reset);
    register #(14, {`Db5, `Ab5}) m0810(wm0810, wm0809, song_speed, !pause, reset);
    register #(14, {`Db5, `Ab5}) m0811(wm0811, wm0810, song_speed, !pause, reset);
    register #(14, {`Db5, `Ab5}) m0812(wm0812, wm0811, song_speed, !pause, reset);
    register #(14, {`Db5, `Ab5}) m0813(wm0813, wm0812, song_speed, !pause, reset);
    register #(14, {`Db5, `Ab5}) m0814(wm0814, wm0813, song_speed, !pause, reset);
    register #(14, {`Db5, `Ab5}) m0815(wm0815, wm0814, song_speed, !pause, reset);
    //14
    
    //13
    register #(14, {`Bb4, `Gb5}) m0816(wm0816, wm0815, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0817(wm0817, wm0816, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0818(wm0818, wm0817, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0819(wm0819, wm0818, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0820(wm0820, wm0819, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0821(wm0821, wm0820, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0822(wm0822, wm0821, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0823(wm0823, wm0822, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0824(wm0824, wm0823, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0825(wm0825, wm0824, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0826(wm0826, wm0825, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0827(wm0827, wm0826, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0828(wm0828, wm0827, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0829(wm0829, wm0828, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0830(wm0830, wm0829, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0831(wm0831, wm0830, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0832(wm0832, wm0831, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0833(wm0833, wm0832, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0834(wm0834, wm0833, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0835(wm0835, wm0834, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0836(wm0836, wm0835, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0837(wm0837, wm0836, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0838(wm0838, wm0837, song_speed, !pause, reset);
    register #(14, {`Db5, `Bb5}) m0839(wm0839, wm0838, song_speed, !pause, reset);
    register #(14, {`C5, `Bb5}) m0840(wm0840, wm0839, song_speed, !pause, reset);
    register #(14, {`C5, `Bb5}) m0841(wm0841, wm0840, song_speed, !pause, reset);
    register #(14, {`C5, `Bb5}) m0842(wm0842, wm0841, song_speed, !pause, reset);
    register #(14, {`Bb4, `Bb5}) m0843(wm0843, wm0842, song_speed, !pause, reset);
    register #(14, {`Bb4, `Bb5}) m0844(wm0844, wm0843, song_speed, !pause, reset);
    register #(14, {`Bb4, `Bb5}) m0845(wm0845, wm0844, song_speed, !pause, reset);
    register #(14, {`Ab4, `Bb5}) m0846(wm0846, wm0845, song_speed, !pause, reset);
    register #(14, {`Ab4, `Bb5}) m0847(wm0847, wm0846, song_speed, !pause, reset);
    register #(14, {`Ab4, `Bb5}) m0848(wm0848, wm0847, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0849(wm0849, wm0848, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0850(wm0850, wm0849, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0851(wm0851, wm0850, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0852(wm0852, wm0851, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0853(wm0853, wm0852, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0854(wm0854, wm0853, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0855(wm0855, wm0854, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0856(wm0856, wm0855, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0857(wm0857, wm0856, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0858(wm0858, wm0857, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0859(wm0859, wm0858, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0860(wm0860, wm0859, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0861(wm0861, wm0860, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0862(wm0862, wm0861, song_speed, !pause, reset);
    register #(14, {`Gb4, `Bb5}) m0863(wm0863, wm0862, song_speed, !pause, reset);
    //13
    
    //12
    register #(14, {`C5, `Ab5}) m0864(wm0864, wm0863, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0865(wm0865, wm0864, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0866(wm0866, wm0865, song_speed, !pause, reset);
    register #(14, {`C5, `Ab5}) m0867(wm0867, wm0866, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0868(wm0868, wm0867, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0869(wm0869, wm0868, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0870(wm0870, wm0869, song_speed, !pause, reset);
    register #(14, {`Bb4, `Gb5}) m0871(wm0871, wm0870, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0872(wm0872, wm0871, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0873(wm0873, wm0872, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0874(wm0874, wm0873, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0875(wm0875, wm0874, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0876(wm0876, wm0875, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0877(wm0877, wm0876, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0878(wm0878, wm0877, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0879(wm0879, wm0878, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0880(wm0880, wm0879, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0881(wm0881, wm0880, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0882(wm0882, wm0881, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0883(wm0883, wm0882, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0884(wm0884, wm0883, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0885(wm0885, wm0884, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0886(wm0886, wm0885, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0887(wm0887, wm0886, song_speed, !pause, reset);
    register #(14, {`Eb5, `F5}) m0888(wm0888, wm0887, song_speed, !pause, reset);
    register #(14, {`Eb5, `F5}) m0889(wm0889, wm0888, song_speed, !pause, reset);
    register #(14, {`Eb5, `F5}) m0890(wm0890, wm0889, song_speed, !pause, reset);
    register #(14, {`D5, `F5}) m0891(wm0891, wm0890, song_speed, !pause, reset);
    register #(14, {`D5, `F5}) m0892(wm0892, wm0891, song_speed, !pause, reset);
    register #(14, {`D5, `F5}) m0893(wm0893, wm0892, song_speed, !pause, reset);
    register #(14, {`C5, `F5}) m0894(wm0894, wm0893, song_speed, !pause, reset);
    register #(14, {`C5, `F5}) m0895(wm0895, wm0894, song_speed, !pause, reset);
    register #(14, {`C5, `F5}) m0896(wm0896, wm0895, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0897(wm0897, wm0896, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0898(wm0898, wm0897, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0899(wm0899, wm0898, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0900(wm0900, wm0899, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0901(wm0901, wm0900, song_speed, !pause, reset);
    register #(14, {`Bb4, `F5}) m0902(wm0902, wm0901, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0903(wm0903, wm0902, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0904(wm0904, wm0903, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0905(wm0905, wm0904, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0906(wm0906, wm0905, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0907(wm0907, wm0906, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0908(wm0908, wm0907, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0909(wm0909, wm0908, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0910(wm0910, wm0909, song_speed, !pause, reset);
    register #(14, {`Ab4, `F5}) m0911(wm0911, wm0910, song_speed, !pause, reset);
    //12
    
    //11
    register #(14, {`G4, `Eb5}) m0912(wm0912, wm0911, song_speed, !pause, reset);
    register #(14, {`G4, `Eb5}) m0913(wm0913, wm0912, song_speed, !pause, reset);
    register #(14, {`G4, `Eb5}) m0914(wm0914, wm0913, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0915(wm0915, wm0914, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0916(wm0916, wm0915, song_speed, !pause, reset);
    register #(14, {`F4, `D5}) m0917(wm0917, wm0916, song_speed, !pause, reset);
    register #(14, {`Eb4, `C5}) m0918(wm0918, wm0917, song_speed, !pause, reset);
    register #(14, {`Eb4, `C5}) m0919(wm0919, wm0918, song_speed, !pause, reset);
    register #(14, {`Eb4, `C5}) m0920(wm0920, wm0919, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0921(wm0921, wm0920, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0922(wm0922, wm0921, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0923(wm0923, wm0922, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0924(wm0924, wm0923, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0925(wm0925, wm0924, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0926(wm0926, wm0925, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0927(wm0927, wm0926, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0928(wm0928, wm0927, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0929(wm0929, wm0928, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0930(wm0930, wm0929, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0931(wm0931, wm0930, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0932(wm0932, wm0931, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0933(wm0933, wm0932, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0934(wm0934, wm0933, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0935(wm0935, wm0934, song_speed, !pause, reset);
    register #(14, {`C4, `F4}) m0936(wm0936, wm0935, song_speed, !pause, reset);
    register #(14, {`C4, `F4}) m0937(wm0937, wm0936, song_speed, !pause, reset);
    register #(14, {`C4, `F4}) m0938(wm0938, wm0937, song_speed, !pause, reset);
    register #(14, {`C4, `F4}) m0939(wm0939, wm0938, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0940(wm0940, wm0939, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0941(wm0941, wm0940, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0942(wm0942, wm0941, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0943(wm0943, wm0942, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0944(wm0944, wm0943, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0945(wm0945, wm0944, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0946(wm0946, wm0945, song_speed, !pause, reset);
    register #(14, {`D4, `F4}) m0947(wm0947, wm0946, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0948(wm0948, wm0947, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0949(wm0949, wm0948, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0950(wm0950, wm0949, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0951(wm0951, wm0950, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0952(wm0952, wm0951, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0953(wm0953, wm0952, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0954(wm0954, wm0953, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0955(wm0955, wm0954, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0956(wm0956, wm0955, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0957(wm0957, wm0956, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0958(wm0958, wm0957, song_speed, !pause, reset);
    register #(14, {`D4, `Bb4}) m0959(wm0959, wm0958, song_speed, !pause, reset);
    //11
    
    //10
    register #(14, {`F5, `REST}) m0960(wm0960, wm0959, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0961(wm0961, wm0960, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0962(wm0962, wm0961, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0963(wm0963, wm0962, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0964(wm0964, wm0963, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0965(wm0965, wm0964, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0966(wm0966, wm0965, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0967(wm0967, wm0966, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0968(wm0968, wm0967, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0969(wm0969, wm0968, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0970(wm0970, wm0969, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0971(wm0971, wm0970, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0972(wm0972, wm0971, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0973(wm0973, wm0972, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0974(wm0974, wm0973, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0975(wm0975, wm0974, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0976(wm0976, wm0975, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0977(wm0977, wm0976, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0978(wm0978, wm0977, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0979(wm0979, wm0978, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0980(wm0980, wm0979, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0981(wm0981, wm0980, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0982(wm0982, wm0981, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m0983(wm0983, wm0982, song_speed, !pause, reset);
    register #(14, {`Eb5, `REST}) m0984(wm0984, wm0983, song_speed, !pause, reset);
    register #(14, {`Eb5, `REST}) m0985(wm0985, wm0984, song_speed, !pause, reset);
    register #(14, {`Eb5, `REST}) m0986(wm0986, wm0985, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m0987(wm0987, wm0986, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m0988(wm0988, wm0987, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m0989(wm0989, wm0988, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m0990(wm0990, wm0989, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m0991(wm0991, wm0990, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m0992(wm0992, wm0991, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0993(wm0993, wm0992, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0994(wm0994, wm0993, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0995(wm0995, wm0994, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m0996(wm0996, wm0995, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0997(wm0997, wm0996, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0998(wm0998, wm0997, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m0999(wm0999, wm0998, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1000(wm1000, wm0999, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1001(wm1001, wm1000, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1002(wm1002, wm1001, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1003(wm1003, wm1002, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1004(wm1004, wm1003, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1005(wm1005, wm1004, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1006(wm1006, wm1005, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1007(wm1007, wm1006, song_speed, !pause, reset);
    //10
    
    //9
    register #(14, {`Eb5, `REST}) m1008(wm1008, wm1007, song_speed, !pause, reset);
    register #(14, {`Eb5, `REST}) m1009(wm1009, wm1008, song_speed, !pause, reset);
    register #(14, {`Eb5, `REST}) m1010(wm1010, wm1009, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m1011(wm1011, wm1010, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m1012(wm1012, wm1011, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m1013(wm1013, wm1012, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m1014(wm1014, wm1013, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m1015(wm1015, wm1014, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m1016(wm1016, wm1015, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1017(wm1017, wm1016, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1018(wm1018, wm1017, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1019(wm1019, wm1018, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1020(wm1020, wm1019, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1021(wm1021, wm1020, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1022(wm1022, wm1021, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1023(wm1023, wm1022, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1024(wm1024, wm1023, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1025(wm1025, wm1024, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1026(wm1026, wm1025, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1027(wm1027, wm1026, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1028(wm1028, wm1027, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1029(wm1029, wm1028, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1030(wm1030, wm1029, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1031(wm1031, wm1030, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1032(wm1032, wm1031, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1033(wm1033, wm1032, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1034(wm1034, wm1033, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1035(wm1035, wm1034, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1036(wm1036, wm1035, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1037(wm1037, wm1036, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1038(wm1038, wm1037, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1039(wm1039, wm1038, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1040(wm1040, wm1039, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1041(wm1041, wm1040, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1042(wm1042, wm1041, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1043(wm1043, wm1042, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1044(wm1044, wm1043, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1045(wm1045, wm1044, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1046(wm1046, wm1045, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1047(wm1047, wm1046, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1048(wm1048, wm1047, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1049(wm1049, wm1048, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1050(wm1050, wm1049, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1051(wm1051, wm1050, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1052(wm1052, wm1051, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1053(wm1053, wm1052, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1054(wm1054, wm1053, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1055(wm1055, wm1054, song_speed, !pause, reset);
    //9
    
    //8
    register #(14, {`F5, `REST}) m1056(wm1056, wm1055, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1057(wm1057, wm1056, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1058(wm1058, wm1057, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1059(wm1059, wm1058, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1060(wm1060, wm1059, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1061(wm1061, wm1060, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1062(wm1062, wm1061, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1063(wm1063, wm1062, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1064(wm1064, wm1063, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1065(wm1065, wm1064, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1066(wm1066, wm1065, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1067(wm1067, wm1066, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1068(wm1068, wm1067, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1069(wm1069, wm1068, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1070(wm1070, wm1069, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1071(wm1071, wm1070, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1072(wm1072, wm1071, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1073(wm1073, wm1072, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1074(wm1074, wm1073, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1075(wm1075, wm1074, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1076(wm1076, wm1075, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1077(wm1077, wm1076, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1078(wm1078, wm1077, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1079(wm1079, wm1078, song_speed, !pause, reset);
    register #(14, {`Eb5, `REST}) m1080(wm1080, wm1079, song_speed, !pause, reset);
    register #(14, {`Eb5, `REST}) m1081(wm1081, wm1080, song_speed, !pause, reset);
    register #(14, {`Eb5, `REST}) m1082(wm1082, wm1081, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m1083(wm1083, wm1082, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m1084(wm1084, wm1083, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m1085(wm1085, wm1084, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m1086(wm1086, wm1085, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m1087(wm1087, wm1086, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m1088(wm1088, wm1087, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1089(wm1089, wm1088, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1090(wm1090, wm1089, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1091(wm1091, wm1090, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1092(wm1092, wm1091, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1093(wm1093, wm1092, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1094(wm1094, wm1093, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1095(wm1095, wm1094, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1096(wm1096, wm1095, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1097(wm1097, wm1096, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1098(wm1098, wm1097, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1099(wm1099, wm1098, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1100(wm1100, wm1099, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1101(wm1101, wm1100, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1102(wm1102, wm1101, song_speed, !pause, reset);
    register #(14, {`F5, `REST}) m1103(wm1103, wm1102, song_speed, !pause, reset);
    //8
    
    //7
    register #(14, {`Eb5, `REST}) m1104(wm1104, wm1103, song_speed, !pause, reset);
    register #(14, {`Eb5, `REST}) m1105(wm1105, wm1104, song_speed, !pause, reset);
    register #(14, {`Eb5, `REST}) m1106(wm1106, wm1105, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m1107(wm1107, wm1106, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m1108(wm1108, wm1107, song_speed, !pause, reset);
    register #(14, {`D5, `REST}) m1109(wm1109, wm1108, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m1110(wm1110, wm1109, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m1111(wm1111, wm1110, song_speed, !pause, reset);
    register #(14, {`C5, `REST}) m1112(wm1112, wm1111, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1113(wm1113, wm1112, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1114(wm1114, wm1113, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1115(wm1115, wm1114, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1116(wm1116, wm1115, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1117(wm1117, wm1116, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1118(wm1118, wm1117, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1119(wm1119, wm1118, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1120(wm1120, wm1119, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1121(wm1121, wm1120, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1122(wm1122, wm1121, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1123(wm1123, wm1122, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1124(wm1124, wm1123, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1125(wm1125, wm1124, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1126(wm1126, wm1125, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1127(wm1127, wm1126, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1128(wm1128, wm1127, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1129(wm1129, wm1128, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1130(wm1130, wm1129, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1131(wm1131, wm1130, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1132(wm1132, wm1131, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1133(wm1133, wm1132, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1134(wm1134, wm1133, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1135(wm1135, wm1134, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1136(wm1136, wm1135, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1137(wm1137, wm1136, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1138(wm1138, wm1137, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1139(wm1139, wm1138, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1140(wm1140, wm1139, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1141(wm1141, wm1140, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1142(wm1142, wm1141, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1143(wm1143, wm1142, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1144(wm1144, wm1143, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1145(wm1145, wm1144, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1146(wm1146, wm1145, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1147(wm1147, wm1146, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1148(wm1148, wm1147, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1149(wm1149, wm1148, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1150(wm1150, wm1149, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1151(wm1151, wm1150, song_speed, !pause, reset);
    //7
    
    //6
    register #(14, {`REST, `REST}) m1152(wm1152, wm1151, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1153(wm1153, wm1152, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1154(wm1154, wm1153, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1155(wm1155, wm1154, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1156(wm1156, wm1155, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1157(wm1157, wm1156, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1158(wm1158, wm1157, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1159(wm1159, wm1158, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1160(wm1160, wm1159, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1161(wm1161, wm1160, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1162(wm1162, wm1161, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1163(wm1163, wm1162, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1164(wm1164, wm1163, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1165(wm1165, wm1164, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1166(wm1166, wm1165, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1167(wm1167, wm1166, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1168(wm1168, wm1167, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1169(wm1169, wm1168, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1170(wm1170, wm1169, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1171(wm1171, wm1170, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1172(wm1172, wm1171, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1173(wm1173, wm1172, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1174(wm1174, wm1173, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1175(wm1175, wm1174, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1176(wm1176, wm1175, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1177(wm1177, wm1176, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1178(wm1178, wm1177, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1179(wm1179, wm1178, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1180(wm1180, wm1179, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1181(wm1181, wm1180, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1182(wm1182, wm1181, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1183(wm1183, wm1182, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1184(wm1184, wm1183, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1185(wm1185, wm1184, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1186(wm1186, wm1185, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1187(wm1187, wm1186, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1188(wm1188, wm1187, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1189(wm1189, wm1188, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1190(wm1190, wm1189, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1191(wm1191, wm1190, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1192(wm1192, wm1191, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1193(wm1193, wm1192, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1194(wm1194, wm1193, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1195(wm1195, wm1194, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1196(wm1196, wm1195, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1197(wm1197, wm1196, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1198(wm1198, wm1197, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1199(wm1199, wm1198, song_speed, !pause, reset);
    //6
    
    //5
    register #(14, {`REST, `REST}) m1200(wm1200, wm1199, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1201(wm1201, wm1200, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1202(wm1202, wm1201, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1203(wm1203, wm1202, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1204(wm1204, wm1203, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1205(wm1205, wm1204, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1206(wm1206, wm1205, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1207(wm1207, wm1206, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1208(wm1208, wm1207, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1209(wm1209, wm1208, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1210(wm1210, wm1209, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1211(wm1211, wm1210, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1212(wm1212, wm1211, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1213(wm1213, wm1212, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1214(wm1214, wm1213, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1215(wm1215, wm1214, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1216(wm1216, wm1215, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1217(wm1217, wm1216, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1218(wm1218, wm1217, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1219(wm1219, wm1218, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1220(wm1220, wm1219, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1221(wm1221, wm1220, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1222(wm1222, wm1221, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1223(wm1223, wm1222, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1224(wm1224, wm1223, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1225(wm1225, wm1224, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1226(wm1226, wm1225, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1227(wm1227, wm1226, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1228(wm1228, wm1227, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1229(wm1229, wm1228, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1230(wm1230, wm1229, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1231(wm1231, wm1230, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1232(wm1232, wm1231, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1233(wm1233, wm1232, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1234(wm1234, wm1233, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1235(wm1235, wm1234, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1236(wm1236, wm1235, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1237(wm1237, wm1236, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1238(wm1238, wm1237, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1239(wm1239, wm1238, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1240(wm1240, wm1239, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1241(wm1241, wm1240, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1242(wm1242, wm1241, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1243(wm1243, wm1242, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1244(wm1244, wm1243, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1245(wm1245, wm1244, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1246(wm1246, wm1245, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1247(wm1247, wm1246, song_speed, !pause, reset);
    //5
    
    //4
    register #(14, {`A4, `REST}) m1248(wm1248, wm1247, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1249(wm1249, wm1248, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1250(wm1250, wm1249, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1251(wm1251, wm1250, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1252(wm1252, wm1251, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1253(wm1253, wm1252, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1254(wm1254, wm1253, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1255(wm1255, wm1254, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1256(wm1256, wm1255, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1257(wm1257, wm1256, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1258(wm1258, wm1257, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1259(wm1259, wm1258, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1260(wm1260, wm1259, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1261(wm1261, wm1260, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1262(wm1262, wm1261, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1263(wm1263, wm1262, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1264(wm1264, wm1263, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1265(wm1265, wm1264, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1266(wm1266, wm1265, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1267(wm1267, wm1266, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1268(wm1268, wm1267, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1269(wm1269, wm1268, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1270(wm1270, wm1269, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1271(wm1271, wm1270, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1272(wm1272, wm1271, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1273(wm1273, wm1272, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1274(wm1274, wm1273, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1275(wm1275, wm1274, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1276(wm1276, wm1275, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1277(wm1277, wm1276, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1278(wm1278, wm1277, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1279(wm1279, wm1278, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1280(wm1280, wm1279, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1281(wm1281, wm1280, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1282(wm1282, wm1281, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1283(wm1283, wm1282, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1284(wm1284, wm1283, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1285(wm1285, wm1284, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1286(wm1286, wm1285, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1287(wm1287, wm1286, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1288(wm1288, wm1287, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1289(wm1289, wm1288, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m1290(wm1290, wm1289, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m1291(wm1291, wm1290, song_speed, !pause, reset);
    register #(14, {`G4, `REST}) m1292(wm1292, wm1291, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1293(wm1293, wm1292, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1294(wm1294, wm1293, song_speed, !pause, reset);
    register #(14, {`A4, `REST}) m1295(wm1295, wm1294, song_speed, !pause, reset);
    //4
    
    //3
    register #(14, {`Bb4, `REST}) m1296(wm1296, wm1295, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1297(wm1297, wm1296, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1298(wm1298, wm1297, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1299(wm1299, wm1298, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1300(wm1300, wm1299, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1301(wm1301, wm1300, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1302(wm1302, wm1301, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1303(wm1303, wm1302, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1304(wm1304, wm1303, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1305(wm1305, wm1304, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1306(wm1306, wm1305, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1307(wm1307, wm1306, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1308(wm1308, wm1307, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1309(wm1309, wm1308, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1310(wm1310, wm1309, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1311(wm1311, wm1310, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1312(wm1312, wm1311, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1313(wm1313, wm1312, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1314(wm1314, wm1313, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1315(wm1315, wm1314, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1316(wm1316, wm1315, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1317(wm1317, wm1316, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1318(wm1318, wm1317, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1319(wm1319, wm1318, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1320(wm1320, wm1319, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1321(wm1321, wm1320, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1322(wm1322, wm1321, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1323(wm1323, wm1322, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1324(wm1324, wm1323, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1325(wm1325, wm1324, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1326(wm1326, wm1325, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1327(wm1327, wm1326, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1328(wm1328, wm1327, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1329(wm1329, wm1328, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1330(wm1330, wm1329, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1331(wm1331, wm1330, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1332(wm1332, wm1331, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1333(wm1333, wm1332, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1334(wm1334, wm1333, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1335(wm1335, wm1334, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1336(wm1336, wm1335, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1337(wm1337, wm1336, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1338(wm1338, wm1337, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1339(wm1339, wm1338, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1340(wm1340, wm1339, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1341(wm1341, wm1340, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1342(wm1342, wm1341, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1343(wm1343, wm1342, song_speed, !pause, reset);
    //3
    
    //2
    register #(14, {`Ab4, `REST}) m1344(wm1344, wm1343, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1345(wm1345, wm1344, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1346(wm1346, wm1345, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1347(wm1347, wm1346, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1348(wm1348, wm1347, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1349(wm1349, wm1348, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1350(wm1350, wm1349, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1351(wm1351, wm1350, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1352(wm1352, wm1351, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1353(wm1353, wm1352, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1354(wm1354, wm1353, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1355(wm1355, wm1354, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1356(wm1356, wm1355, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1357(wm1357, wm1356, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1358(wm1358, wm1357, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1359(wm1359, wm1358, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1360(wm1360, wm1359, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1361(wm1361, wm1360, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1362(wm1362, wm1361, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1363(wm1363, wm1362, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1364(wm1364, wm1363, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1365(wm1365, wm1364, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1366(wm1366, wm1365, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1367(wm1367, wm1366, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1368(wm1368, wm1367, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1369(wm1369, wm1368, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1370(wm1370, wm1369, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1371(wm1371, wm1370, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1372(wm1372, wm1371, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1373(wm1373, wm1372, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1374(wm1374, wm1373, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1375(wm1375, wm1374, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1376(wm1376, wm1375, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1377(wm1377, wm1376, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1378(wm1378, wm1377, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1379(wm1379, wm1378, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1380(wm1380, wm1379, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1381(wm1381, wm1380, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1382(wm1382, wm1381, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1383(wm1383, wm1382, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1384(wm1384, wm1383, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1385(wm1385, wm1384, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1386(wm1386, wm1385, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1387(wm1387, wm1386, song_speed, !pause, reset);
    register #(14, {`Gb4, `REST}) m1388(wm1388, wm1387, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1389(wm1389, wm1388, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1390(wm1390, wm1389, song_speed, !pause, reset);
    register #(14, {`Ab4, `REST}) m1391(wm1391, wm1390, song_speed, !pause, reset);
    //2
    
    //1
    register #(14, {`Bb4, `REST}) m1392(wm1392, wm1391, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1393(wm1393, wm1392, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1394(wm1394, wm1393, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1395(wm1395, wm1394, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1396(wm1396, wm1395, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1397(wm1397, wm1396, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1398(wm1398, wm1397, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1399(wm1399, wm1398, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1400(wm1400, wm1399, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1401(wm1401, wm1400, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1402(wm1402, wm1401, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1403(wm1403, wm1402, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) m1404(wm1404, wm1403, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1405(wm1405, wm1404, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1406(wm1406, wm1405, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1407(wm1407, wm1406, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1408(wm1408, wm1407, song_speed, !pause, reset);
    register #(14, {`F4, `REST}) m1409(wm1409, wm1408, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1410(wm1410, wm1409, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1411(wm1411, wm1410, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1412(wm1412, wm1411, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1413(wm1413, wm1412, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1414(wm1414, wm1413, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1415(wm1415, wm1414, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1416(wm1416, wm1415, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1417(wm1417, wm1416, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1418(wm1418, wm1417, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1419(wm1419, wm1418, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1420(wm1420, wm1419, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1421(wm1421, wm1420, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1422(wm1422, wm1421, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1423(wm1423, wm1422, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1424(wm1424, wm1423, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1425(wm1425, wm1424, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1426(wm1426, wm1425, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1427(wm1427, wm1426, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1428(wm1428, wm1427, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1429(wm1429, wm1428, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1430(wm1430, wm1429, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1431(wm1431, wm1430, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1432(wm1432, wm1431, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1433(wm1433, wm1432, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1434(wm1434, wm1433, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1435(wm1435, wm1434, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1436(wm1436, wm1435, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1437(wm1437, wm1436, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1438(wm1438, wm1437, song_speed, !pause, reset);
    register #(14, {`Bb4, `REST}) m1439(wm1439, wm1438, song_speed, !pause, reset);
    //1
    
    //Bass
    //30
    register #(14, {`A2, `REST}) b0000(wb0000, wb1439, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b0001(wb0001, wb0000, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b0002(wb0002, wb0001, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b0003(wb0003, wb0002, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b0004(wb0004, wb0003, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b0005(wb0005, wb0004, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0006(wb0006, wb0005, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0007(wb0007, wb0006, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0008(wb0008, wb0007, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0009(wb0009, wb0008, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0010(wb0010, wb0009, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0011(wb0011, wb0010, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0012(wb0012, wb0011, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0013(wb0013, wb0012, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0014(wb0014, wb0013, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0015(wb0015, wb0014, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0016(wb0016, wb0015, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0017(wb0017, wb0016, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0018(wb0018, wb0017, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0019(wb0019, wb0018, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0020(wb0020, wb0019, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0021(wb0021, wb0020, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0022(wb0022, wb0021, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0023(wb0023, wb0022, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0024(wb0024, wb0023, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0025(wb0025, wb0024, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0026(wb0026, wb0025, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0027(wb0027, wb0026, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0028(wb0028, wb0027, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0029(wb0029, wb0028, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0030(wb0030, wb0029, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0031(wb0031, wb0030, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0032(wb0032, wb0031, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0033(wb0033, wb0032, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0034(wb0034, wb0033, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0035(wb0035, wb0034, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0036(wb0036, wb0035, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0037(wb0037, wb0036, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0038(wb0038, wb0037, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0039(wb0039, wb0038, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0040(wb0040, wb0039, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0041(wb0041, wb0040, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0042(wb0042, wb0041, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0043(wb0043, wb0042, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0044(wb0044, wb0043, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0045(wb0045, wb0044, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0046(wb0046, wb0045, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0047(wb0047, wb0046, song_speed, !pause, reset);
    //30
    
    //29
    register #(14, {`C3, `REST}) b0048(wb0048, wb0047, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0049(wb0049, wb0048, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0050(wb0050, wb0049, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0051(wb0051, wb0050, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0052(wb0052, wb0051, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0053(wb0053, wb0052, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0054(wb0054, wb0053, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0055(wb0055, wb0054, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0056(wb0056, wb0055, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0057(wb0057, wb0056, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0058(wb0058, wb0057, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0059(wb0059, wb0058, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0060(wb0060, wb0059, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0061(wb0061, wb0060, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0062(wb0062, wb0061, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0063(wb0063, wb0062, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0064(wb0064, wb0063, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0065(wb0065, wb0064, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0066(wb0066, wb0065, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0067(wb0067, wb0066, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0068(wb0068, wb0067, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0069(wb0069, wb0068, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0070(wb0070, wb0069, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0071(wb0071, wb0070, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0072(wb0072, wb0071, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0073(wb0073, wb0072, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0074(wb0074, wb0073, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0075(wb0075, wb0074, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0076(wb0076, wb0075, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0077(wb0077, wb0076, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0078(wb0078, wb0077, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0079(wb0079, wb0078, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0080(wb0080, wb0079, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0081(wb0081, wb0080, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0082(wb0082, wb0081, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0083(wb0083, wb0082, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0084(wb0084, wb0083, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0085(wb0085, wb0084, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0086(wb0086, wb0085, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0087(wb0087, wb0086, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0088(wb0088, wb0087, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0089(wb0089, wb0088, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0090(wb0090, wb0089, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0091(wb0091, wb0090, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0092(wb0092, wb0091, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0093(wb0093, wb0092, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0094(wb0094, wb0093, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0095(wb0095, wb0094, song_speed, !pause, reset);
    //29
    
    //28
    register #(14, {`Bb2, `REST}) b0096(wb0096, wb0095, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0097(wb0097, wb0096, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0098(wb0098, wb0097, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0099(wb0099, wb0098, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0100(wb0100, wb0099, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0101(wb0101, wb0100, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0102(wb0102, wb0101, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0103(wb0103, wb0102, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0104(wb0104, wb0103, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0105(wb0105, wb0104, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0106(wb0106, wb0105, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0107(wb0107, wb0106, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0108(wb0108, wb0107, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0109(wb0109, wb0108, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0110(wb0110, wb0109, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0111(wb0111, wb0110, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0112(wb0112, wb0111, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0113(wb0113, wb0112, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0114(wb0114, wb0113, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0115(wb0115, wb0114, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0116(wb0116, wb0115, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0117(wb0117, wb0116, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0118(wb0118, wb0117, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0119(wb0119, wb0118, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0120(wb0120, wb0119, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0121(wb0121, wb0120, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0122(wb0122, wb0121, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0123(wb0123, wb0122, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0124(wb0124, wb0123, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0125(wb0125, wb0124, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0126(wb0126, wb0125, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0127(wb0127, wb0126, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0128(wb0128, wb0127, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0129(wb0129, wb0128, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0130(wb0130, wb0129, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0131(wb0131, wb0130, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0132(wb0132, wb0131, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0133(wb0133, wb0132, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0134(wb0134, wb0133, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0135(wb0135, wb0134, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0136(wb0136, wb0135, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0137(wb0137, wb0136, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0138(wb0138, wb0137, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0139(wb0139, wb0138, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0140(wb0140, wb0139, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0141(wb0141, wb0140, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0142(wb0142, wb0141, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0143(wb0143, wb0142, song_speed, !pause, reset);
    //28
    
    //27
    register #(14, {`B2, `REST}) b0144(wb0144, wb0143, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0145(wb0145, wb0144, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0146(wb0146, wb0145, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0147(wb0147, wb0146, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0148(wb0148, wb0147, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0149(wb0149, wb0148, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0150(wb0150, wb0149, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0151(wb0151, wb0150, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0152(wb0152, wb0151, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0153(wb0153, wb0152, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0154(wb0154, wb0153, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0155(wb0155, wb0154, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0156(wb0156, wb0155, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0157(wb0157, wb0156, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0158(wb0158, wb0157, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0159(wb0159, wb0158, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0160(wb0160, wb0159, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0161(wb0161, wb0160, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0162(wb0162, wb0161, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0163(wb0163, wb0162, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0164(wb0164, wb0163, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0165(wb0165, wb0164, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0166(wb0166, wb0165, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0167(wb0167, wb0166, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0168(wb0168, wb0167, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0169(wb0169, wb0168, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0170(wb0170, wb0169, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0171(wb0171, wb0170, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0172(wb0172, wb0171, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0173(wb0173, wb0172, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0174(wb0174, wb0173, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0175(wb0175, wb0174, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0176(wb0176, wb0175, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0177(wb0177, wb0176, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0178(wb0178, wb0177, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0179(wb0179, wb0178, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0180(wb0180, wb0179, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0181(wb0181, wb0180, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0182(wb0182, wb0181, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0183(wb0183, wb0182, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0184(wb0184, wb0183, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0185(wb0185, wb0184, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0186(wb0186, wb0185, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0187(wb0187, wb0186, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0188(wb0188, wb0187, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0189(wb0189, wb0188, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0190(wb0190, wb0189, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0191(wb0191, wb0190, song_speed, !pause, reset);
    //27
    
    //26
    register #(14, {`F2, `REST}) b0192(wb0192, wb0191, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0193(wb0193, wb0192, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0194(wb0194, wb0193, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0195(wb0195, wb0194, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0196(wb0196, wb0195, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0197(wb0197, wb0196, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0198(wb0198, wb0197, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0199(wb0199, wb0198, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0200(wb0200, wb0199, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0201(wb0201, wb0200, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0202(wb0202, wb0201, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0203(wb0203, wb0202, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0204(wb0204, wb0203, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0205(wb0205, wb0204, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0206(wb0206, wb0205, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0207(wb0207, wb0206, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0208(wb0208, wb0207, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0209(wb0209, wb0208, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0210(wb0210, wb0209, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0211(wb0211, wb0210, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0212(wb0212, wb0211, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0213(wb0213, wb0212, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0214(wb0214, wb0213, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0215(wb0215, wb0214, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0216(wb0216, wb0215, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0217(wb0217, wb0216, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0218(wb0218, wb0217, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0219(wb0219, wb0218, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0220(wb0220, wb0219, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0221(wb0221, wb0220, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0222(wb0222, wb0221, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0223(wb0223, wb0222, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0224(wb0224, wb0223, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0225(wb0225, wb0224, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0226(wb0226, wb0225, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0227(wb0227, wb0226, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0228(wb0228, wb0227, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0229(wb0229, wb0228, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0230(wb0230, wb0229, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0231(wb0231, wb0230, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0232(wb0232, wb0231, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0233(wb0233, wb0232, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0234(wb0234, wb0233, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0235(wb0235, wb0234, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0236(wb0236, wb0235, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0237(wb0237, wb0236, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0238(wb0238, wb0237, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0239(wb0239, wb0238, song_speed, !pause, reset);
    //26
    
    //25
    register #(14, {`E2, `REST}) b0240(wb0240, wb0239, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0241(wb0241, wb0240, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0242(wb0242, wb0241, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0243(wb0243, wb0242, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0244(wb0244, wb0243, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0245(wb0245, wb0244, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0246(wb0246, wb0245, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0247(wb0247, wb0246, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0248(wb0248, wb0247, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0249(wb0249, wb0248, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0250(wb0250, wb0249, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0251(wb0251, wb0250, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0252(wb0252, wb0251, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0253(wb0253, wb0252, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0254(wb0254, wb0253, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0255(wb0255, wb0254, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0256(wb0256, wb0255, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0257(wb0257, wb0256, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0258(wb0258, wb0257, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0259(wb0259, wb0258, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0260(wb0260, wb0259, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0261(wb0261, wb0260, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0262(wb0262, wb0261, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0263(wb0263, wb0262, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0264(wb0264, wb0263, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0265(wb0265, wb0264, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0266(wb0266, wb0265, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0267(wb0267, wb0266, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0268(wb0268, wb0267, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0269(wb0269, wb0268, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0270(wb0270, wb0269, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0271(wb0271, wb0270, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0272(wb0272, wb0271, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0273(wb0273, wb0272, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0274(wb0274, wb0273, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0275(wb0275, wb0274, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0276(wb0276, wb0275, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0277(wb0277, wb0276, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0278(wb0278, wb0277, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0279(wb0279, wb0278, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0280(wb0280, wb0279, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0281(wb0281, wb0280, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0282(wb0282, wb0281, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0283(wb0283, wb0282, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0284(wb0284, wb0283, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0285(wb0285, wb0284, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0286(wb0286, wb0285, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0287(wb0287, wb0286, song_speed, !pause, reset);
    //25
    
    //24
    register #(14, {`F2, `REST}) b0288(wb0288, wb0287, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0289(wb0289, wb0288, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0290(wb0290, wb0289, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0291(wb0291, wb0290, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0292(wb0292, wb0291, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0293(wb0293, wb0292, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0294(wb0294, wb0293, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0295(wb0295, wb0294, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0296(wb0296, wb0295, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0297(wb0297, wb0296, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0298(wb0298, wb0297, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0299(wb0299, wb0298, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0300(wb0300, wb0299, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0301(wb0301, wb0300, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0302(wb0302, wb0301, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0303(wb0303, wb0302, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0304(wb0304, wb0303, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0305(wb0305, wb0304, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0306(wb0306, wb0305, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0307(wb0307, wb0306, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0308(wb0308, wb0307, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0309(wb0309, wb0308, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0310(wb0310, wb0309, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0311(wb0311, wb0310, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0312(wb0312, wb0311, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0313(wb0313, wb0312, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0314(wb0314, wb0313, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0315(wb0315, wb0314, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0316(wb0316, wb0315, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0317(wb0317, wb0316, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0318(wb0318, wb0317, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0319(wb0319, wb0318, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0320(wb0320, wb0319, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0321(wb0321, wb0320, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0322(wb0322, wb0321, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0323(wb0323, wb0322, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0324(wb0324, wb0323, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0325(wb0325, wb0324, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0326(wb0326, wb0325, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0327(wb0327, wb0326, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0328(wb0328, wb0327, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0329(wb0329, wb0328, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0330(wb0330, wb0329, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0331(wb0331, wb0330, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0332(wb0332, wb0331, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0333(wb0333, wb0332, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0334(wb0334, wb0333, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0335(wb0335, wb0334, song_speed, !pause, reset);
    //24
    
    //23
    register #(14, {`E2, `REST}) b0336(wb0336, wb0335, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0337(wb0337, wb0336, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0338(wb0338, wb0337, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0339(wb0339, wb0338, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0340(wb0340, wb0339, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0341(wb0341, wb0340, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0342(wb0342, wb0341, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0343(wb0343, wb0342, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0344(wb0344, wb0343, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0345(wb0345, wb0344, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0346(wb0346, wb0345, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0347(wb0347, wb0346, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0348(wb0348, wb0347, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0349(wb0349, wb0348, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0350(wb0350, wb0349, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0351(wb0351, wb0350, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0352(wb0352, wb0351, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0353(wb0353, wb0352, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0354(wb0354, wb0353, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0355(wb0355, wb0354, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0356(wb0356, wb0355, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0357(wb0357, wb0356, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0358(wb0358, wb0357, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0359(wb0359, wb0358, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0360(wb0360, wb0359, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0361(wb0361, wb0360, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0362(wb0362, wb0361, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0363(wb0363, wb0362, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0364(wb0364, wb0363, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0365(wb0365, wb0364, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0366(wb0366, wb0365, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0367(wb0367, wb0366, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0368(wb0368, wb0367, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0369(wb0369, wb0368, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0370(wb0370, wb0369, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0371(wb0371, wb0370, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0372(wb0372, wb0371, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0373(wb0373, wb0372, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0374(wb0374, wb0373, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0375(wb0375, wb0374, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0376(wb0376, wb0375, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0377(wb0377, wb0376, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0378(wb0378, wb0377, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0379(wb0379, wb0378, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0380(wb0380, wb0379, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0381(wb0381, wb0380, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0382(wb0382, wb0381, song_speed, !pause, reset);
    register #(14, {`E2, `REST}) b0383(wb0383, wb0382, song_speed, !pause, reset);
    //23
    
    //22
    register #(14, {`F2, `REST}) b0384(wb0384, wb0383, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0385(wb0385, wb0384, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0386(wb0386, wb0385, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0387(wb0387, wb0386, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0388(wb0388, wb0387, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0389(wb0389, wb0388, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0390(wb0390, wb0389, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0391(wb0391, wb0390, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0392(wb0392, wb0391, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0393(wb0393, wb0392, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0394(wb0394, wb0393, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0395(wb0395, wb0394, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0396(wb0396, wb0395, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0397(wb0397, wb0396, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0398(wb0398, wb0397, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0399(wb0399, wb0398, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0400(wb0400, wb0399, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0401(wb0401, wb0400, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0402(wb0402, wb0401, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0403(wb0403, wb0402, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0404(wb0404, wb0403, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0405(wb0405, wb0404, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0406(wb0406, wb0405, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0407(wb0407, wb0406, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0408(wb0408, wb0407, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0409(wb0409, wb0408, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0410(wb0410, wb0409, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0411(wb0411, wb0410, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0412(wb0412, wb0411, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0413(wb0413, wb0412, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0414(wb0414, wb0413, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0415(wb0415, wb0414, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0416(wb0416, wb0415, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0417(wb0417, wb0416, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0418(wb0418, wb0417, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0419(wb0419, wb0418, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0420(wb0420, wb0419, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0421(wb0421, wb0420, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0422(wb0422, wb0421, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0423(wb0423, wb0422, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0424(wb0424, wb0423, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0425(wb0425, wb0424, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0426(wb0426, wb0425, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0427(wb0427, wb0426, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0428(wb0428, wb0427, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0429(wb0429, wb0428, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0430(wb0430, wb0429, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0431(wb0431, wb0430, song_speed, !pause, reset);
    //22
    
    //21
    register #(14, {`Gb2, `REST}) b0432(wb0432, wb0431, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0433(wb0433, wb0432, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0434(wb0434, wb0433, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0435(wb0435, wb0434, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0436(wb0436, wb0435, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0437(wb0437, wb0436, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0438(wb0438, wb0437, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0439(wb0439, wb0438, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0440(wb0440, wb0439, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0441(wb0441, wb0440, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0442(wb0442, wb0441, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0443(wb0443, wb0442, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0444(wb0444, wb0443, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0445(wb0445, wb0444, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0446(wb0446, wb0445, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0447(wb0447, wb0446, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0448(wb0448, wb0447, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0449(wb0449, wb0448, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0450(wb0450, wb0449, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0451(wb0451, wb0450, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0452(wb0452, wb0451, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0453(wb0453, wb0452, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0454(wb0454, wb0453, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0455(wb0455, wb0454, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0456(wb0456, wb0455, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0457(wb0457, wb0456, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0458(wb0458, wb0457, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0459(wb0459, wb0458, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0460(wb0460, wb0459, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0461(wb0461, wb0460, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0462(wb0462, wb0461, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0463(wb0463, wb0462, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0464(wb0464, wb0463, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0465(wb0465, wb0464, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0466(wb0466, wb0465, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0467(wb0467, wb0466, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0468(wb0468, wb0467, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0469(wb0469, wb0468, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0470(wb0470, wb0469, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0471(wb0471, wb0470, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0472(wb0472, wb0471, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0473(wb0473, wb0472, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0474(wb0474, wb0473, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0475(wb0475, wb0474, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0476(wb0476, wb0475, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0477(wb0477, wb0476, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0478(wb0478, wb0477, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0479(wb0479, wb0478, song_speed, !pause, reset);
    //21
    
    //20
    register #(14, {`Ab2, `REST}) b0480(wb0480, wb0479, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0481(wb0481, wb0480, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0482(wb0482, wb0481, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0483(wb0483, wb0482, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0484(wb0484, wb0483, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0485(wb0485, wb0484, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0486(wb0486, wb0485, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0487(wb0487, wb0486, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0488(wb0488, wb0487, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0489(wb0489, wb0488, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0490(wb0490, wb0489, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0491(wb0491, wb0490, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0492(wb0492, wb0491, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0493(wb0493, wb0492, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0494(wb0494, wb0493, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0495(wb0495, wb0494, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0496(wb0496, wb0495, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0497(wb0497, wb0496, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0498(wb0498, wb0497, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0499(wb0499, wb0498, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0500(wb0500, wb0499, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0501(wb0501, wb0500, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0502(wb0502, wb0501, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0503(wb0503, wb0502, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0504(wb0504, wb0503, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0505(wb0505, wb0504, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0506(wb0506, wb0505, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0507(wb0507, wb0506, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0508(wb0508, wb0507, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0509(wb0509, wb0508, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0510(wb0510, wb0509, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0511(wb0511, wb0510, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0512(wb0512, wb0511, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0513(wb0513, wb0512, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0514(wb0514, wb0513, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0515(wb0515, wb0514, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0516(wb0516, wb0515, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0517(wb0517, wb0516, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0518(wb0518, wb0517, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0519(wb0519, wb0518, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0520(wb0520, wb0519, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0521(wb0521, wb0520, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0522(wb0522, wb0521, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0523(wb0523, wb0522, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0524(wb0524, wb0523, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0525(wb0525, wb0524, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0526(wb0526, wb0525, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0527(wb0527, wb0526, song_speed, !pause, reset);
    //20
    
    //19
    register #(14, {`Bb2, `REST}) b0528(wb0528, wb0527, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0529(wb0529, wb0528, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0530(wb0530, wb0529, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0531(wb0531, wb0530, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0532(wb0532, wb0531, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0533(wb0533, wb0532, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0534(wb0534, wb0533, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0535(wb0535, wb0534, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0536(wb0536, wb0535, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0537(wb0537, wb0536, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0538(wb0538, wb0537, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0539(wb0539, wb0538, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0540(wb0540, wb0539, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0541(wb0541, wb0540, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0542(wb0542, wb0541, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0543(wb0543, wb0542, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0544(wb0544, wb0543, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0545(wb0545, wb0544, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0546(wb0546, wb0545, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0547(wb0547, wb0546, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0548(wb0548, wb0547, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0549(wb0549, wb0548, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0550(wb0550, wb0549, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0551(wb0551, wb0550, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0552(wb0552, wb0551, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0553(wb0553, wb0552, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0554(wb0554, wb0553, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0555(wb0555, wb0554, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0556(wb0556, wb0555, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0557(wb0557, wb0556, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0558(wb0558, wb0557, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0559(wb0559, wb0558, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0560(wb0560, wb0559, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0561(wb0561, wb0560, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0562(wb0562, wb0561, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0563(wb0563, wb0562, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0564(wb0564, wb0563, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0565(wb0565, wb0564, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0566(wb0566, wb0565, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0567(wb0567, wb0566, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0568(wb0568, wb0567, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0569(wb0569, wb0568, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0570(wb0570, wb0569, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0571(wb0571, wb0570, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0572(wb0572, wb0571, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0573(wb0573, wb0572, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0574(wb0574, wb0573, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0575(wb0575, wb0574, song_speed, !pause, reset);
    //19
    
    //18
    register #(14, {`A2, `REST}) b0576(wb0576, wb0575, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b0577(wb0577, wb0576, song_speed, !pause, reset);
    register #(14, {`A2, `REST}) b0578(wb0578, wb0577, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b0579(wb0579, wb0578, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b0580(wb0580, wb0579, song_speed, !pause, reset);
    register #(14, {`G2, `REST}) b0581(wb0581, wb0580, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0582(wb0582, wb0581, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0583(wb0583, wb0582, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0584(wb0584, wb0583, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0585(wb0585, wb0584, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0586(wb0586, wb0585, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0587(wb0587, wb0586, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0588(wb0588, wb0587, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0589(wb0589, wb0588, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0590(wb0590, wb0589, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0591(wb0591, wb0590, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0592(wb0592, wb0591, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0593(wb0593, wb0592, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0594(wb0594, wb0593, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0595(wb0595, wb0594, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0596(wb0596, wb0595, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0597(wb0597, wb0596, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0598(wb0598, wb0597, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0599(wb0599, wb0598, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0600(wb0600, wb0599, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0601(wb0601, wb0600, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0602(wb0602, wb0601, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0603(wb0603, wb0602, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0604(wb0604, wb0603, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0605(wb0605, wb0604, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0606(wb0606, wb0605, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0607(wb0607, wb0606, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0608(wb0608, wb0607, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0609(wb0609, wb0608, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0610(wb0610, wb0609, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0611(wb0611, wb0610, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0612(wb0612, wb0611, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0613(wb0613, wb0612, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0614(wb0614, wb0613, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0615(wb0615, wb0614, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0616(wb0616, wb0615, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0617(wb0617, wb0616, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0618(wb0618, wb0617, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0619(wb0619, wb0618, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0620(wb0620, wb0619, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0621(wb0621, wb0620, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0622(wb0622, wb0621, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b0623(wb0623, wb0622, song_speed, !pause, reset);
    //18
    
    //17
    register #(14, {`C3, `REST}) b0624(wb0624, wb0623, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0625(wb0625, wb0624, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0626(wb0626, wb0625, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0627(wb0627, wb0626, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0628(wb0628, wb0627, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0629(wb0629, wb0628, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0630(wb0630, wb0629, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0631(wb0631, wb0630, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0632(wb0632, wb0631, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0633(wb0633, wb0632, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0634(wb0634, wb0633, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0635(wb0635, wb0634, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0636(wb0636, wb0635, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0637(wb0637, wb0636, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0638(wb0638, wb0637, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0639(wb0639, wb0638, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0640(wb0640, wb0639, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0641(wb0641, wb0640, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0642(wb0642, wb0641, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0643(wb0643, wb0642, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0644(wb0644, wb0643, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0645(wb0645, wb0644, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0646(wb0646, wb0645, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0647(wb0647, wb0646, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0648(wb0648, wb0647, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0649(wb0649, wb0648, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0650(wb0650, wb0649, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0651(wb0651, wb0650, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0652(wb0652, wb0651, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0653(wb0653, wb0652, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0654(wb0654, wb0653, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0655(wb0655, wb0654, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0656(wb0656, wb0655, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0657(wb0657, wb0656, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0658(wb0658, wb0657, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0659(wb0659, wb0658, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0660(wb0660, wb0659, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0661(wb0661, wb0660, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0662(wb0662, wb0661, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0663(wb0663, wb0662, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0664(wb0664, wb0663, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0665(wb0665, wb0664, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0666(wb0666, wb0665, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0667(wb0667, wb0666, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0668(wb0668, wb0667, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0669(wb0669, wb0668, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0670(wb0670, wb0669, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b0671(wb0671, wb0670, song_speed, !pause, reset);
    //17
    
    //16
    register #(14, {`Bb2, `REST}) b0672(wb0672, wb0671, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0673(wb0673, wb0672, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0674(wb0674, wb0673, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0675(wb0675, wb0674, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0676(wb0676, wb0675, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0677(wb0677, wb0676, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0678(wb0678, wb0677, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0679(wb0679, wb0678, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0680(wb0680, wb0679, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0681(wb0681, wb0680, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0682(wb0682, wb0681, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0683(wb0683, wb0682, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0684(wb0684, wb0683, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0685(wb0685, wb0684, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0686(wb0686, wb0685, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0687(wb0687, wb0686, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0688(wb0688, wb0687, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0689(wb0689, wb0688, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0690(wb0690, wb0689, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0691(wb0691, wb0690, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0692(wb0692, wb0691, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0693(wb0693, wb0692, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0694(wb0694, wb0693, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0695(wb0695, wb0694, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0696(wb0696, wb0695, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0697(wb0697, wb0696, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0698(wb0698, wb0697, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0699(wb0699, wb0698, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0700(wb0700, wb0699, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0701(wb0701, wb0700, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0702(wb0702, wb0701, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0703(wb0703, wb0702, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0704(wb0704, wb0703, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0705(wb0705, wb0704, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0706(wb0706, wb0705, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0707(wb0707, wb0706, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0708(wb0708, wb0707, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0709(wb0709, wb0708, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0710(wb0710, wb0709, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0711(wb0711, wb0710, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0712(wb0712, wb0711, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0713(wb0713, wb0712, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0714(wb0714, wb0713, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0715(wb0715, wb0714, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0716(wb0716, wb0715, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0717(wb0717, wb0716, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0718(wb0718, wb0717, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0719(wb0719, wb0718, song_speed, !pause, reset);
    //16
    
    //15
    register #(14, {`B2, `REST}) b0720(wb0720, wb0719, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0721(wb0721, wb0720, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0722(wb0722, wb0721, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0723(wb0723, wb0722, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0724(wb0724, wb0723, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0725(wb0725, wb0724, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0726(wb0726, wb0725, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0727(wb0727, wb0726, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0728(wb0728, wb0727, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0729(wb0729, wb0728, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0730(wb0730, wb0729, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0731(wb0731, wb0730, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0732(wb0732, wb0731, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0733(wb0733, wb0732, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0734(wb0734, wb0733, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0735(wb0735, wb0734, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0736(wb0736, wb0735, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0737(wb0737, wb0736, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0738(wb0738, wb0737, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0739(wb0739, wb0738, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0740(wb0740, wb0739, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0741(wb0741, wb0740, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0742(wb0742, wb0741, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0743(wb0743, wb0742, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0744(wb0744, wb0743, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0745(wb0745, wb0744, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0746(wb0746, wb0745, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0747(wb0747, wb0746, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0748(wb0748, wb0747, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0749(wb0749, wb0748, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0750(wb0750, wb0749, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0751(wb0751, wb0750, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0752(wb0752, wb0751, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0753(wb0753, wb0752, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0754(wb0754, wb0753, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0755(wb0755, wb0754, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0756(wb0756, wb0755, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0757(wb0757, wb0756, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0758(wb0758, wb0757, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0759(wb0759, wb0758, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0760(wb0760, wb0759, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0761(wb0761, wb0760, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0762(wb0762, wb0761, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0763(wb0763, wb0762, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0764(wb0764, wb0763, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0765(wb0765, wb0764, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0766(wb0766, wb0765, song_speed, !pause, reset);
    register #(14, {`B2, `REST}) b0767(wb0767, wb0766, song_speed, !pause, reset);
    //15
    
    //14
    register #(14, {`Db3, `REST}) b0768(wb0768, wb0767, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0769(wb0769, wb0768, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0770(wb0770, wb0769, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0771(wb0771, wb0770, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0772(wb0772, wb0771, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0773(wb0773, wb0772, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0774(wb0774, wb0773, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0775(wb0775, wb0774, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0776(wb0776, wb0775, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0777(wb0777, wb0776, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0778(wb0778, wb0777, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0779(wb0779, wb0778, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0780(wb0780, wb0779, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0781(wb0781, wb0780, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0782(wb0782, wb0781, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0783(wb0783, wb0782, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0784(wb0784, wb0783, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0785(wb0785, wb0784, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0786(wb0786, wb0785, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0787(wb0787, wb0786, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0788(wb0788, wb0787, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0789(wb0789, wb0788, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0790(wb0790, wb0789, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0791(wb0791, wb0790, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0792(wb0792, wb0791, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0793(wb0793, wb0792, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0794(wb0794, wb0793, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0795(wb0795, wb0794, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0796(wb0796, wb0795, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0797(wb0797, wb0796, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0798(wb0798, wb0797, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0799(wb0799, wb0798, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0800(wb0800, wb0799, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0801(wb0801, wb0800, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0802(wb0802, wb0801, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0803(wb0803, wb0802, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0804(wb0804, wb0803, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0805(wb0805, wb0804, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0806(wb0806, wb0805, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0807(wb0807, wb0806, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0808(wb0808, wb0807, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0809(wb0809, wb0808, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0810(wb0810, wb0809, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0811(wb0811, wb0810, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0812(wb0812, wb0811, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0813(wb0813, wb0812, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0814(wb0814, wb0813, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b0815(wb0815, wb0814, song_speed, !pause, reset);
    //14
    
    //13
    register #(14, {`Gb2, `REST}) b0816(wb0816, wb0815, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0817(wb0817, wb0816, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0818(wb0818, wb0817, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0819(wb0819, wb0818, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0820(wb0820, wb0819, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0821(wb0821, wb0820, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0822(wb0822, wb0821, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0823(wb0823, wb0822, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0824(wb0824, wb0823, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0825(wb0825, wb0824, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0826(wb0826, wb0825, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0827(wb0827, wb0826, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0828(wb0828, wb0827, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0829(wb0829, wb0828, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0830(wb0830, wb0829, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0831(wb0831, wb0830, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0832(wb0832, wb0831, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0833(wb0833, wb0832, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0834(wb0834, wb0833, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0835(wb0835, wb0834, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0836(wb0836, wb0835, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0837(wb0837, wb0836, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0838(wb0838, wb0837, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0839(wb0839, wb0838, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0840(wb0840, wb0839, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0841(wb0841, wb0840, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0842(wb0842, wb0841, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0843(wb0843, wb0842, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0844(wb0844, wb0843, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0845(wb0845, wb0844, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0846(wb0846, wb0845, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0847(wb0847, wb0846, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0848(wb0848, wb0847, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0849(wb0849, wb0848, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0850(wb0850, wb0849, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0851(wb0851, wb0850, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0852(wb0852, wb0851, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0853(wb0853, wb0852, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0854(wb0854, wb0853, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0855(wb0855, wb0854, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0856(wb0856, wb0855, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0857(wb0857, wb0856, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0858(wb0858, wb0857, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0859(wb0859, wb0858, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0860(wb0860, wb0859, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0861(wb0861, wb0860, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0862(wb0862, wb0861, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b0863(wb0863, wb0862, song_speed, !pause, reset);
    //13
    
    //12
    register #(14, {`Ab2, `REST}) b0864(wb0864, wb0863, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0865(wb0865, wb0864, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0866(wb0866, wb0865, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0867(wb0867, wb0866, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0868(wb0868, wb0867, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0869(wb0869, wb0868, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0870(wb0870, wb0869, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0871(wb0871, wb0870, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0872(wb0872, wb0871, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0873(wb0873, wb0872, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0874(wb0874, wb0873, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0875(wb0875, wb0874, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0876(wb0876, wb0875, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0877(wb0877, wb0876, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0878(wb0878, wb0877, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0879(wb0879, wb0878, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0880(wb0880, wb0879, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0881(wb0881, wb0880, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0882(wb0882, wb0881, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0883(wb0883, wb0882, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0884(wb0884, wb0883, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0885(wb0885, wb0884, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0886(wb0886, wb0885, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0887(wb0887, wb0886, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0888(wb0888, wb0887, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0889(wb0889, wb0888, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0890(wb0890, wb0889, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0891(wb0891, wb0890, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0892(wb0892, wb0891, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0893(wb0893, wb0892, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0894(wb0894, wb0893, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0895(wb0895, wb0894, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0896(wb0896, wb0895, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0897(wb0897, wb0896, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0898(wb0898, wb0897, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0899(wb0899, wb0898, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0900(wb0900, wb0899, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0901(wb0901, wb0900, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0902(wb0902, wb0901, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0903(wb0903, wb0902, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0904(wb0904, wb0903, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0905(wb0905, wb0904, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0906(wb0906, wb0905, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0907(wb0907, wb0906, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0908(wb0908, wb0907, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0909(wb0909, wb0908, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0910(wb0910, wb0909, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b0911(wb0911, wb0910, song_speed, !pause, reset);
    //12
    
    //11
    register #(14, {`Bb2, `REST}) b0912(wb0912, wb0911, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0913(wb0913, wb0912, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0914(wb0914, wb0913, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0915(wb0915, wb0914, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0916(wb0916, wb0915, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0917(wb0917, wb0916, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0918(wb0918, wb0917, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0919(wb0919, wb0918, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0920(wb0920, wb0919, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0921(wb0921, wb0920, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0922(wb0922, wb0921, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0923(wb0923, wb0922, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0924(wb0924, wb0923, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0925(wb0925, wb0924, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0926(wb0926, wb0925, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0927(wb0927, wb0926, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0928(wb0928, wb0927, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0929(wb0929, wb0928, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0930(wb0930, wb0929, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0931(wb0931, wb0930, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0932(wb0932, wb0931, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0933(wb0933, wb0932, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0934(wb0934, wb0933, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0935(wb0935, wb0934, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0936(wb0936, wb0935, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0937(wb0937, wb0936, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0938(wb0938, wb0937, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0939(wb0939, wb0938, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0940(wb0940, wb0939, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0941(wb0941, wb0940, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0942(wb0942, wb0941, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0943(wb0943, wb0942, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0944(wb0944, wb0943, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0945(wb0945, wb0944, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0946(wb0946, wb0945, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0947(wb0947, wb0946, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0948(wb0948, wb0947, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0949(wb0949, wb0948, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0950(wb0950, wb0949, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0951(wb0951, wb0950, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0952(wb0952, wb0951, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0953(wb0953, wb0952, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0954(wb0954, wb0953, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0955(wb0955, wb0954, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0956(wb0956, wb0955, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0957(wb0957, wb0956, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0958(wb0958, wb0957, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b0959(wb0959, wb0958, song_speed, !pause, reset);
    //11
    
    //10
    register #(14, {`F2, `C3}) b0960(wb0960, wb0959, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0961(wb0961, wb0960, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0962(wb0962, wb0961, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0963(wb0963, wb0962, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0964(wb0964, wb0963, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0965(wb0965, wb0964, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0966(wb0966, wb0965, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0967(wb0967, wb0966, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0968(wb0968, wb0967, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0969(wb0969, wb0968, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0970(wb0970, wb0969, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0971(wb0971, wb0970, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0972(wb0972, wb0971, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0973(wb0973, wb0972, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0974(wb0974, wb0973, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0975(wb0975, wb0974, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0976(wb0976, wb0975, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b0977(wb0977, wb0976, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0978(wb0978, wb0977, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0979(wb0979, wb0978, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0980(wb0980, wb0979, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0981(wb0981, wb0980, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0982(wb0982, wb0981, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0983(wb0983, wb0982, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0984(wb0984, wb0983, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0985(wb0985, wb0984, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0986(wb0986, wb0985, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0987(wb0987, wb0986, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0988(wb0988, wb0987, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0989(wb0989, wb0988, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0990(wb0990, wb0989, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0991(wb0991, wb0990, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0992(wb0992, wb0991, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0993(wb0993, wb0992, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0994(wb0994, wb0993, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0995(wb0995, wb0994, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0996(wb0996, wb0995, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0997(wb0997, wb0996, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b0998(wb0998, wb0997, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b0999(wb0999, wb0998, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1000(wb1000, wb0999, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1001(wb1001, wb1000, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1002(wb1002, wb1001, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b1003(wb1003, wb1002, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b1004(wb1004, wb1003, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b1005(wb1005, wb1004, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b1006(wb1006, wb1005, song_speed, !pause, reset);
    register #(14, {`F2, `C3}) b1007(wb1007, wb1006, song_speed, !pause, reset);
    //10
    
    //9
    register #(14, {`Gb2, `Db3}) b1008(wb1008, wb1007, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1009(wb1009, wb1008, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1010(wb1010, wb1009, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1011(wb1011, wb1010, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1012(wb1012, wb1011, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1013(wb1013, wb1012, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1014(wb1014, wb1013, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1015(wb1015, wb1014, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1016(wb1016, wb1015, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1017(wb1017, wb1016, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1018(wb1018, wb1017, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1019(wb1019, wb1018, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1020(wb1020, wb1019, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1021(wb1021, wb1020, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1022(wb1022, wb1021, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1023(wb1023, wb1022, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1024(wb1024, wb1023, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1025(wb1025, wb1024, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1026(wb1026, wb1025, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1027(wb1027, wb1026, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1028(wb1028, wb1027, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1029(wb1029, wb1028, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1030(wb1030, wb1029, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1031(wb1031, wb1030, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1032(wb1032, wb1031, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1033(wb1033, wb1032, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1034(wb1034, wb1033, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1035(wb1035, wb1034, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1036(wb1036, wb1035, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1037(wb1037, wb1036, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1038(wb1038, wb1037, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1039(wb1039, wb1038, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1040(wb1040, wb1039, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1041(wb1041, wb1040, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1042(wb1042, wb1041, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1043(wb1043, wb1042, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1044(wb1044, wb1043, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1045(wb1045, wb1044, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1046(wb1046, wb1045, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1047(wb1047, wb1046, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1048(wb1048, wb1047, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1049(wb1049, wb1048, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1050(wb1050, wb1049, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1051(wb1051, wb1050, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1052(wb1052, wb1051, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1053(wb1053, wb1052, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1054(wb1054, wb1053, song_speed, !pause, reset);
    register #(14, {`Gb2, `Db3}) b1055(wb1055, wb1054, song_speed, !pause, reset);
    //9
    
    //8
    register #(14, {`Ab2, `Eb3}) b1056(wb1056, wb1055, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1057(wb1057, wb1056, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1058(wb1058, wb1057, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1059(wb1059, wb1058, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1060(wb1060, wb1059, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1061(wb1061, wb1060, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1062(wb1062, wb1061, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1063(wb1063, wb1062, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1064(wb1064, wb1063, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1065(wb1065, wb1064, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1066(wb1066, wb1065, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1067(wb1067, wb1066, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1068(wb1068, wb1067, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1069(wb1069, wb1068, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1070(wb1070, wb1069, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1071(wb1071, wb1070, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1072(wb1072, wb1071, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1073(wb1073, wb1072, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1074(wb1074, wb1073, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1075(wb1075, wb1074, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1076(wb1076, wb1075, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1077(wb1077, wb1076, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1078(wb1078, wb1077, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1079(wb1079, wb1078, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1080(wb1080, wb1079, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1081(wb1081, wb1080, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1082(wb1082, wb1081, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1083(wb1083, wb1082, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1084(wb1084, wb1083, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1085(wb1085, wb1084, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1086(wb1086, wb1085, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1087(wb1087, wb1086, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1088(wb1088, wb1087, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1089(wb1089, wb1088, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1090(wb1090, wb1089, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1091(wb1091, wb1090, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1092(wb1092, wb1091, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1093(wb1093, wb1092, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1094(wb1094, wb1093, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1095(wb1095, wb1094, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1096(wb1096, wb1095, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1097(wb1097, wb1096, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1098(wb1098, wb1097, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1099(wb1099, wb1098, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1100(wb1100, wb1099, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1101(wb1101, wb1100, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1102(wb1102, wb1101, song_speed, !pause, reset);
    register #(14, {`Ab2, `Eb3}) b1103(wb1103, wb1102, song_speed, !pause, reset);
    //8
    
    //7
    register #(14, {`Bb2, `F3}) b1104(wb1104, wb1103, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1105(wb1105, wb1104, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1106(wb1106, wb1105, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1107(wb1107, wb1106, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1108(wb1108, wb1107, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1109(wb1109, wb1108, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1110(wb1110, wb1109, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1111(wb1111, wb1110, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1112(wb1112, wb1111, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1113(wb1113, wb1112, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1114(wb1114, wb1113, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1115(wb1115, wb1114, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1116(wb1116, wb1115, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1117(wb1117, wb1116, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1118(wb1118, wb1117, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1119(wb1119, wb1118, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1120(wb1120, wb1119, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1121(wb1121, wb1120, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1122(wb1122, wb1121, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1123(wb1123, wb1122, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1124(wb1124, wb1123, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1125(wb1125, wb1124, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1126(wb1126, wb1125, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1127(wb1127, wb1126, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1128(wb1128, wb1127, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1129(wb1129, wb1128, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1130(wb1130, wb1129, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1131(wb1131, wb1130, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1132(wb1132, wb1131, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1133(wb1133, wb1132, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1134(wb1134, wb1133, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1135(wb1135, wb1134, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1136(wb1136, wb1135, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1137(wb1137, wb1136, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1138(wb1138, wb1137, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1139(wb1139, wb1138, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1140(wb1140, wb1139, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1141(wb1141, wb1140, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1142(wb1142, wb1141, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1143(wb1143, wb1142, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1144(wb1144, wb1143, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1145(wb1145, wb1144, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1146(wb1146, wb1145, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1147(wb1147, wb1146, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1148(wb1148, wb1147, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1149(wb1149, wb1148, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1150(wb1150, wb1149, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1151(wb1151, wb1150, song_speed, !pause, reset);
    //7
    
    //6
    register #(14, {`REST, `REST}) b1152(wb1152, wb1151, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1153(wb1153, wb1152, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1154(wb1154, wb1153, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1155(wb1155, wb1154, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1156(wb1156, wb1155, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1157(wb1157, wb1156, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1158(wb1158, wb1157, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1159(wb1159, wb1158, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1160(wb1160, wb1159, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1161(wb1161, wb1160, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1162(wb1162, wb1161, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1163(wb1163, wb1162, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1164(wb1164, wb1163, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1165(wb1165, wb1164, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1166(wb1166, wb1165, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1167(wb1167, wb1166, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1168(wb1168, wb1167, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1169(wb1169, wb1168, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1170(wb1170, wb1169, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1171(wb1171, wb1170, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1172(wb1172, wb1171, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1173(wb1173, wb1172, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1174(wb1174, wb1173, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1175(wb1175, wb1174, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1176(wb1176, wb1175, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1177(wb1177, wb1176, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1178(wb1178, wb1177, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1179(wb1179, wb1178, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1180(wb1180, wb1179, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1181(wb1181, wb1180, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1182(wb1182, wb1181, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1183(wb1183, wb1182, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1184(wb1184, wb1183, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1185(wb1185, wb1184, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1186(wb1186, wb1185, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1187(wb1187, wb1186, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1188(wb1188, wb1187, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1189(wb1189, wb1188, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1190(wb1190, wb1189, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1191(wb1191, wb1190, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1192(wb1192, wb1191, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1193(wb1193, wb1192, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1194(wb1194, wb1193, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1195(wb1195, wb1194, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1196(wb1196, wb1195, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1197(wb1197, wb1196, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1198(wb1198, wb1197, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1199(wb1199, wb1198, song_speed, !pause, reset);
    //6
    
    //5
    register #(14, {`REST, `REST}) b1200(wb1200, wb1199, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1201(wb1201, wb1200, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1202(wb1202, wb1201, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1203(wb1203, wb1202, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1204(wb1204, wb1203, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1205(wb1205, wb1204, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1206(wb1206, wb1205, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1207(wb1207, wb1206, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1208(wb1208, wb1207, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1209(wb1209, wb1208, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1210(wb1210, wb1209, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1211(wb1211, wb1210, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1212(wb1212, wb1211, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1213(wb1213, wb1212, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1214(wb1214, wb1213, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1215(wb1215, wb1214, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1216(wb1216, wb1215, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1217(wb1217, wb1216, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1218(wb1218, wb1217, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1219(wb1219, wb1218, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1220(wb1220, wb1219, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1221(wb1221, wb1220, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1222(wb1222, wb1221, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1223(wb1223, wb1222, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1224(wb1224, wb1223, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1225(wb1225, wb1224, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1226(wb1226, wb1225, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1227(wb1227, wb1226, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1228(wb1228, wb1227, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1229(wb1229, wb1228, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1230(wb1230, wb1229, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1231(wb1231, wb1230, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1232(wb1232, wb1231, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1233(wb1233, wb1232, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1234(wb1234, wb1233, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1235(wb1235, wb1234, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1236(wb1236, wb1235, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1237(wb1237, wb1236, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1238(wb1238, wb1237, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1239(wb1239, wb1238, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1240(wb1240, wb1239, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1241(wb1241, wb1240, song_speed, !pause, reset);
    register #(14, {`REST, `REST}) b1242(wb1242, wb1241, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1243(wb1243, wb1242, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1244(wb1244, wb1243, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1245(wb1245, wb1244, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1246(wb1246, wb1245, song_speed, !pause, reset);
    register #(14, {`Bb2, `F3}) b1247(wb1247, wb1246, song_speed, !pause, reset);
    //5
    
    //4
    register #(14, {`F3, `REST}) b1248(wb1248, wb1247, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1249(wb1249, wb1248, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1250(wb1250, wb1249, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1251(wb1251, wb1250, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1252(wb1252, wb1251, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1253(wb1253, wb1252, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1254(wb1254, wb1253, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1255(wb1255, wb1254, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1256(wb1256, wb1255, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1257(wb1257, wb1256, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1258(wb1258, wb1257, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1259(wb1259, wb1258, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1260(wb1260, wb1259, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1261(wb1261, wb1260, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1262(wb1262, wb1261, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1263(wb1263, wb1262, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1264(wb1264, wb1263, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1265(wb1265, wb1264, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1266(wb1266, wb1265, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1267(wb1267, wb1266, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1268(wb1268, wb1267, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1269(wb1269, wb1268, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1270(wb1270, wb1269, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1271(wb1271, wb1270, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1272(wb1272, wb1271, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1273(wb1273, wb1272, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1274(wb1274, wb1273, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1275(wb1275, wb1274, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1276(wb1276, wb1275, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1277(wb1277, wb1276, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1278(wb1278, wb1277, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1279(wb1279, wb1278, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1280(wb1280, wb1279, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1281(wb1281, wb1280, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1282(wb1282, wb1281, song_speed, !pause, reset);
    register #(14, {`C3, `REST}) b1283(wb1283, wb1282, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1284(wb1284, wb1283, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1285(wb1285, wb1284, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1286(wb1286, wb1285, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1287(wb1287, wb1286, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1288(wb1288, wb1287, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1289(wb1289, wb1288, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1290(wb1290, wb1289, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1291(wb1291, wb1290, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1292(wb1292, wb1291, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1293(wb1293, wb1292, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1294(wb1294, wb1293, song_speed, !pause, reset);
    register #(14, {`F2, `REST}) b1295(wb1295, wb1294, song_speed, !pause, reset);
    //4
    
    //3
    register #(14, {`Gb3, `REST}) b1296(wb1296, wb1295, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1297(wb1297, wb1296, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1298(wb1298, wb1297, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1299(wb1299, wb1298, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1300(wb1300, wb1299, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1301(wb1301, wb1300, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1302(wb1302, wb1301, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1303(wb1303, wb1302, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1304(wb1304, wb1303, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1305(wb1305, wb1304, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1306(wb1306, wb1305, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1307(wb1307, wb1306, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1308(wb1308, wb1307, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1309(wb1309, wb1308, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1310(wb1310, wb1309, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1311(wb1311, wb1310, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1312(wb1312, wb1311, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1313(wb1313, wb1312, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1314(wb1314, wb1313, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1315(wb1315, wb1314, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1316(wb1316, wb1315, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1317(wb1317, wb1316, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1318(wb1318, wb1317, song_speed, !pause, reset);
    register #(14, {`Gb3, `REST}) b1319(wb1319, wb1318, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1320(wb1320, wb1319, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1321(wb1321, wb1320, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1322(wb1322, wb1321, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1323(wb1323, wb1322, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1324(wb1324, wb1323, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1325(wb1325, wb1324, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1326(wb1326, wb1325, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1327(wb1327, wb1326, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1328(wb1328, wb1327, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1329(wb1329, wb1328, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1330(wb1330, wb1329, song_speed, !pause, reset);
    register #(14, {`Db3, `REST}) b1331(wb1331, wb1330, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1332(wb1332, wb1331, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1333(wb1333, wb1332, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1334(wb1334, wb1333, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1335(wb1335, wb1334, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1336(wb1336, wb1335, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1337(wb1337, wb1336, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1338(wb1338, wb1337, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1339(wb1339, wb1338, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1340(wb1340, wb1339, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1341(wb1341, wb1340, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1342(wb1342, wb1341, song_speed, !pause, reset);
    register #(14, {`Gb2, `REST}) b1343(wb1343, wb1342, song_speed, !pause, reset);
    //3
    
    //2
    register #(14, {`Ab3, `REST}) b1344(wb1344, wb1343, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1345(wb1345, wb1344, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1346(wb1346, wb1345, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1347(wb1347, wb1346, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1348(wb1348, wb1347, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1349(wb1349, wb1348, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1350(wb1350, wb1349, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1351(wb1351, wb1350, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1352(wb1352, wb1351, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1353(wb1353, wb1352, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1354(wb1354, wb1353, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1355(wb1355, wb1354, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1356(wb1356, wb1355, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1357(wb1357, wb1356, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1358(wb1358, wb1357, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1359(wb1359, wb1358, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1360(wb1360, wb1359, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1361(wb1361, wb1360, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1362(wb1362, wb1361, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1363(wb1363, wb1362, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1364(wb1364, wb1363, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1365(wb1365, wb1364, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1366(wb1366, wb1365, song_speed, !pause, reset);
    register #(14, {`Ab3, `REST}) b1367(wb1367, wb1366, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1368(wb1368, wb1367, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1369(wb1369, wb1368, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1370(wb1370, wb1369, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1371(wb1371, wb1370, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1372(wb1372, wb1371, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1373(wb1373, wb1372, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1374(wb1374, wb1373, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1375(wb1375, wb1374, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1376(wb1376, wb1375, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1377(wb1377, wb1376, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1378(wb1378, wb1377, song_speed, !pause, reset);
    register #(14, {`Eb3, `REST}) b1379(wb1379, wb1378, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1380(wb1380, wb1379, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1381(wb1381, wb1380, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1382(wb1382, wb1381, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1383(wb1383, wb1382, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1384(wb1384, wb1383, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1385(wb1385, wb1384, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1386(wb1386, wb1385, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1387(wb1387, wb1386, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1388(wb1388, wb1387, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1389(wb1389, wb1388, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1390(wb1390, wb1389, song_speed, !pause, reset);
    register #(14, {`Ab2, `REST}) b1391(wb1391, wb1390, song_speed, !pause, reset);
    //2
    
    //1
    register #(14, {`Bb3, `REST}) b1392(wb1392, wb1391, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1393(wb1393, wb1392, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1394(wb1394, wb1393, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1395(wb1395, wb1394, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1396(wb1396, wb1395, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1397(wb1397, wb1396, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1398(wb1398, wb1397, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1399(wb1399, wb1398, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1400(wb1400, wb1399, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1401(wb1401, wb1400, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1402(wb1402, wb1401, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1403(wb1403, wb1402, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1404(wb1404, wb1403, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1405(wb1405, wb1404, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1406(wb1406, wb1405, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1407(wb1407, wb1406, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1408(wb1408, wb1407, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1409(wb1409, wb1408, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1410(wb1410, wb1409, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1411(wb1411, wb1410, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1412(wb1412, wb1411, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1413(wb1413, wb1412, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1414(wb1414, wb1413, song_speed, !pause, reset);
    register #(14, {`Bb3, `REST}) b1415(wb1415, wb1414, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1416(wb1416, wb1415, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1417(wb1417, wb1416, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1418(wb1418, wb1417, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1419(wb1419, wb1418, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1420(wb1420, wb1419, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1421(wb1421, wb1420, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1422(wb1422, wb1421, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1423(wb1423, wb1422, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1424(wb1424, wb1423, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1425(wb1425, wb1424, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1426(wb1426, wb1425, song_speed, !pause, reset);
    register #(14, {`F3, `REST}) b1427(wb1427, wb1426, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1428(wb1428, wb1427, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1429(wb1429, wb1428, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1430(wb1430, wb1429, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1431(wb1431, wb1430, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1432(wb1432, wb1431, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1433(wb1433, wb1432, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1434(wb1434, wb1433, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1435(wb1435, wb1434, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1436(wb1436, wb1435, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1437(wb1437, wb1436, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1438(wb1438, wb1437, song_speed, !pause, reset);
    register #(14, {`Bb2, `REST}) b1439(wb1439, wb1438, song_speed, !pause, reset);
    //1
    
endmodule //zelda_theme