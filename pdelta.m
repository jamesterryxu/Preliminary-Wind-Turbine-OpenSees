clear all; clc; close all;

% Plotting
fwind = [0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 0.07, 0.08, 0.09, 0.09999999999999999, 0.11, 0.12, 0.13, 0.14, 0.15, 0.16, 0.16999999999999998, 0.18, 0.19, 0.2, 0.21, 0.22, 0.23, 0.24, 0.25, 0.26, 0.27, 0.28, 0.29000000000000004, 0.3, 0.31, 0.32, 0.32999999999999996, 0.33999999999999997, 0.35, 0.36, 0.37, 0.38, 0.39, 0.4, 0.41000000000000003, 0.42000000000000004, 0.43000000000000005, 0.44000000000000006, 0.44999999999999996, 0.45999999999999996, 0.47, 0.48, 0.49, 0.5, 0.51, 0.52, 0.53, 0.54, 0.55, 0.56, 0.57, 0.58, 0.59, 0.6, 0.61, 0.62, 0.63, 0.64, 0.65, 0.66, 0.6699999999999999, 0.6799999999999999, 0.69, 0.7, 0.71, 0.72, 0.73, 0.74, 0.75, 0.76, 0.77, 0.78, 0.79, 0.7999999999999999, 0.8099999999999999, 0.82, 0.83, 0.84, 0.85, 0.86, 0.87, 0.88, 0.89, 0.9, 0.91, 0.92, 0.9299999999999999, 0.94, 0.95, 0.96, 0.97, 0.98]
Vxwind = 0%[17.115955945480426, 17.180823249541053, 17.242076326582872, 17.31722347850769, 17.38614246198877, 17.383565150865515, 17.483396681202983, 17.58109151914132, 17.64512722575143,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
Mywind = 0%[9955.696445152218, 8932.19888781746, 11349.169643962721, 11378.366411434763, 11424.700272459306, 11431.726254357061, 11489.475134745435, 11578.2312988709, 11608.258120150045,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
Vxwindn = 0%[10.244035099708658, 10.258723081535551, 10.271422024332692, 10.289479351903845, 10.299817073084522, 10.319238750441963, 10.337561000315269, 10.352656375393567, 10.36796661893608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
Mywindn = 0%[4049.289674856232, 4058.2101878992867, 4066.389980924188, 4076.4185643048277, 4083.866556215693, 4094.2935895564037, 4104.61221663671, 4113.834449679458, 4122.829518378185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
% 5 degree tilt (Causes 100 kip*ft with mass, 41.67 kip*ft with no mass)

Vxwave =[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.7128214376586273, 0.716042501415486, 0.7196929735020587, 0.7230477687594852, 0.7257830307528067, 0.728625918348855, 0.7331192055105223, 0.7364350241692496, 0.7281030103294223, 0.7432682352228209, 0.7467774813837011, 0.7500502942737884, 0.7546910268646186, 0.7574741496078155, 0.7349563228867733, 0.7664103538646839, 0.7708836927701136, 0.7744435416483291, 0.7778768522564119, 0.7830486626465042, 0.7843940633880437, 0.7906372861289881, 0.792805689467852, 0.8010872473165183, 0.8054038110528622, 0.8088822076192237, 0.81391860861949, 0.8193802543984908, 0.823047150050626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
Mywave = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 434.63645559337596, 437.0505084238074, 440.0538343966712, 442.6056800628788, 445.10532990324526, 447.5204532276375, 450.7608299876675, 453.4290484092556, 448.931149958337, 458.94596928583684, 461.90065851024116, 464.6721179375856, 468.16280539505567, 470.78177695920857, 457.59863967181326, 477.7550960520274, 481.18367416992345, 484.23612263464497, 487.23110842533504, 490.94841768453546, 492.90675768116284, 497.2943237195494, 499.82645028684743, 505.0537308789246, 508.6266999210515, 511.9351134082146, 516.0023375686337, 519.9595465264961, 523.2564046025894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
Vxwaven =  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.40449683750580506, 0.40479902481979746, 0.40422575398816646, 0.40627632022800464, 0.4065849385664485, 0.4073919693045256, 0.4084622275999032, 0.40886620564787113, 0.40934625467624675, 0.4099272754805947, 0.4104938480436732, 0.4115370141887159, 0.41210139013073516, 0.4127361961283813, 0.41391971059703714, 0.41434625245458584, 0.4139979574482673, 0.41570069404656396, 0.41628322545513563, 0.41699988688287554, 0.4176476957707113, 0.41865184822645496, 0.4167164135615954, 0.4202265310103339, 0.42078752333870906, 0.4208670696407265, 0.42204742035936876, 0.42208991096000437, 0.42348219589274727,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
Mywaven = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162.338167496442, 162.59962336754003, 162.70652317318763, 163.46095678322249, 163.7845392248179, 164.20921793040074, 164.70348503566035, 165.07239949400258, 165.3388547221252, 165.80467234905842, 166.1218522995735, 166.56713743824545, 167.07804029469074, 167.37560023281358, 167.96510362770027, 168.26900786333124, 168.27838495325054, 169.16001869286453, 169.45481997202862, 169.89571766252212, 170.34064112370197, 170.88765084149182, 170.24928082261417, 171.75599693451935, 172.10450021354782, 172.3061792145951, 172.9730404233638, 173.1527285624013, 173.82987404292504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
% Frequency 0.2 to 0.5 Hz, Magnitude 0.027787g

Vx1p = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.001816408795423233, 0.001823451580736282, 0.0018340299113801964, 0.0018413101039661422, 0.0018477647426583942, 0.0018576624169810852, 0.0018653930116824629, 0.0018748635830740665, 0.001883403006300404, 0.0018908866341363687, 0.001899431558196868, 0.0019091148766465307, 0.0019180141443844905, 0.0019252698158878485, 0.0019328113281202805, 0.0019447302817124266, 0.0019535260223026954, 0.0019314238862873066, 0.0019716519566923083, 0.001980961336000455, 0.0019896429185687374, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
My1p = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.093533306583722, 1.0999131500357537, 1.1069686221660444, 1.11292084290502, 1.118700850276364, 1.1258735503461357, 1.1325229660870142, 1.1394972919327333, 1.14643788082842, 1.152951138171436, 1.1593548531382751, 1.1673216999263871, 1.17409093918132, 1.1807217079289765, 1.1871282791855224, 1.1957239107155335, 1.202801868554055, 1.1908702794271662, 1.2174364801482964, 1.225274325400289, 1.2326261217796655, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
Vx1pn =[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.001058066591280034, 0.0010597884336790032, 0.0010611612923436195, 0.0010626606246756946, 0.0010647624793723427, 0.0010661605827252806, 0.001067894479564825, 0.0010680458977968374, 0.0010699995034738582, 0.0010730004664187267, 0.0010738017683817565, 0.001072281395666951, 0.0010777203974577758, 0.0010785399158003428, 0.0010806804673658733, 0.001083519256820251, 0.0010845907932313297, 0.0010858639942604848, 0.001087405717760138, 0.0010889089844411581, 0.001091676059756779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
My1pn = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.42174853395910666, 0.42275391770198034, 0.42362853064980577, 0.4245989341306254, 0.4256559758716565, 0.42662386570299865, 0.42761443000940513, 0.4281358803166475, 0.42925085607304103, 0.43063109943931943, 0.4313246570800613, 0.4316082293778221, 0.43360949293111944, 0.43446786264866427, 0.4355943896457301, 0.436905522163412, 0.4378841356416935, 0.4385909596155949, 0.4398266245257304, 0.4406680023303653, 0.44184920337637035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
% Frequency  0.12 to 0.33, Magnitude 0.00007371g

Vx3p = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.09008155542949081, 0.09060733970933656, 0.09102575348479848, 0.09142930161665132, 0.09203717365909705, 0.09219530354182491, 0.09292912337992397, 0.09318398544593419, 0.09415737508422593, 0.09466473235501649, 0.09507357784528545, 0.09566553150847226, 0.0963074815734296, 0.09673847423661315, 0.0971200213741952, 0.09807831501377988, 0.09830042709467621, 0.09874024998074146, 0.09951928365618556, 0.10029183632705903, 0.10093876709297435, 0.1015790244352228, 0.10238541699717478, 0.10271203693009306, 0.10377902577126734, 0.1044322330330149, 0.10511117790549268, 0.10528938328583894, 0.1064313125015683, 0.10716351077052383, 0.10773116688277588, 0.1072501148283542, 0.10949939985145385, 0.11028390674954779, 0.11087741587965289, 0.11183162653325118, 0.11284089262266564, 0.1135220197539799, 0.11432759553227619, 0.11549648276242054, 0.11577901083684111, 0.11737052496364736, 0.11764142558414858, 0.11911683695312152, 0.11996308839665194, 0.12115928403434519, 0.12205494680753823, 0.12315116880648362, 0.12404214237994966, 0.1254238961168934, 0.12613363631495117, 0.116468184070197, 0.1287698915057898, 0.12950071264418417, 0.13078962839187494, 0.13239045994032403, 0.13369372859962997, 0.13493105922074172, 0.1361506398556907, 0.13736556752090429, 0.13933170134388345, 0.14088248235817644, 0.14206378649819795];
My3p = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,56.15388993341245, 56.556875233745785, 56.915650867130026, 57.267675250449955, 57.7045937716525, 57.93477484596801, 58.45047483297107, 58.748091641699745, 59.36249018962978, 59.782446507200206, 60.17130974681024, 60.649355016099726, 61.11447483283926, 61.501976522391914, 61.86045214214353, 62.50077902422756, 62.76399232655427, 63.11404284164731, 63.74106653786399, 64.31667874786058, 64.85978879065179, 65.40219166670386, 65.99452821507631, 66.43008514106418, 67.09129773499093, 67.63491558046893, 68.17712707105945, 68.5647126678268, 69.29273817224318, 69.83986058227583, 70.3762582391004, 70.21185688396, 71.76899099632175, 72.36843250001729, 72.94759044438551, 73.621238676389, 74.38437811942536, 75.03494140934376, 75.75435156744581, 76.54800704308772, 76.95498912965184, 78.04348825083035, 78.51791725436706, 79.53043018412609, 80.23922217368236, 81.15633751531847, 81.93517796798507, 82.79501299402571, 83.59557082675367, 84.61255946080617, 85.34223650927001, 78.54457122874271, 87.34686339690082, 88.20505184293508, 89.07395937239482, 90.30879160890605, 91.3569411653967, 92.36485893011988, 93.4999665736176, 94.3205998618949, 95.85002668954623, 97.06489013375071, 98.11182454777085];
Vx3pn =[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.048701006298153195, 0.04866006907558022, 0.04886020358529746, 0.04892867183979156, 0.04901290623203714, 0.049089047614191764, 0.049207073304570664, 0.04897958817719647, 0.0493921564492108, 0.049458093610738364, 0.04946744344236654, 0.0496061780501159, 0.04961117272047959, 0.04977481704941553, 0.04988522162236052, 0.04988525954043236, 0.05005102833094488, 0.050149519871687545, 0.0502286526145716, 0.05032879280806151, 0.05038865469215161, 0.050408831588394536, 0.050650874941621175, 0.05063028350146355, 0.05076663977648371, 0.0508567626967339, 0.05084483187300472, 0.05108720103692383, 0.05117246456948724, 0.05127797204231962, 0.051342672696876396, 0.05142838083795593, 0.05117917974216418, 0.05112616768516428, 0.05167275851253604, 0.05181925520732622, 0.05194534560721386, 0.05201884286471415, 0.052047330977788284, 0.05226027143742102, 0.05230577746084916, 0.05067747789091261, 0.052362479040377025, 0.05261386980042689, 0.05280394477904349, 0.052858178104825126, 0.05290860087969445, 0.053127363463270204, 0.05319004498367403, 0.053277332935183226, 0.05345727042153315, 0.05353027779548325, 0.05354096191541991, 0.053778680544934926, 0.05387303818350392, 0.05400049188735193, 0.05397334342557459, 0.05405917721228497, 0.054240705714463294, 0.05446234780485433, 0.054484205314283635, 0.054612614767029104, 0.05479432108593793];
My3pn = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,19.777830636531093, 19.778932795339433, 19.882557368414112, 19.917207414635737, 19.969029177989277, 20.021324141526755, 20.085618024004653, 20.010586002352426, 20.187680796960326, 20.22864281475847, 20.252347558975657, 20.330728395522, 20.351848448528333, 20.431438027989497, 20.493540629939975, 20.518785552119972, 20.594230367206706, 20.65957896507264, 20.70557902710819, 20.762549686064713, 20.79747465192858, 20.83759267563994, 20.940985827702804, 20.968097546187046, 21.037871568680966, 21.08215104138476, 21.103534091732893, 21.21202170069758, 21.26863724499462, 21.324578937446955, 21.371752752731588, 21.434017472324744, 21.37833963074773, 21.399827510421627, 21.600112729021454, 21.665914498427647, 21.728195110938223, 21.800718049364093, 21.846911948364635, 21.92503623932712, 21.979043044248073, 21.28698160720593, 22.05336572408743, 22.169072306093234, 22.247105070812953, 22.28309897058166, 22.35777144359234, 22.43853024991503, 22.499327165970573, 22.554805826390186, 22.639684538682136, 22.700112589514738, 22.736747122576652, 22.827458353251988, 22.889246533803792, 22.963818083148595, 23.012989571591046, 23.063443305941302, 23.150725045404222, 23.249725192530576, 23.298187685975872, 23.380186338646748, 23.46098420256496];
% Frequency 0.36 to 0.99, Magnitude 0.003266g

f = fwind
masspeakVx = Vxwind + Vxwave + Vx1p + Vx3p;
masspeakMy = ((Mywind + Mywave + My1p+ My3p)/12) + 100;
nomasspeakVx = Vxwindn + Vxwaven + Vx1pn + Vx3pn;
nomasspeakMy = ((Mywindn + Mywaven + My1pn+ My3pn)/12) + 41.67;
[valmpVx, impVx] = max(masspeakVx);
[valmpMy, impMy] =  max(masspeakMy);
[valnompVx,inompVx] = max(nomasspeakVx);
[valnompMy, inompMy] = max(nomasspeakMy)
f1 = 0.01;
f2 = .98;

figure(1)
plot(f, masspeakMy)
hold on
plot(f(impMy), valmpMy, 'or')
text(f(impMy), valmpMy, num2str(valmpMy), 'VerticalAlignment','top','HorizontalAlignment','right')
hold on 
plot(f, nomasspeakMy)
hold on
plot(f(inompMy), valnompMy, 'or')
text(f(inompMy), valnompMy, num2str(valnompMy), 'VerticalAlignment','top','HorizontalAlignment','right')
title(['$M_{b}$ vs $f_{f}$ at a $5^{\circ}$ Tilt'], 'Interpreter','latex', 'FontSize', 24)
xlabel('Forcing Frequency $f_{f}$ (Hz)','Interpreter','latex', 'FontSize', 16)
ylabel('Peak Overturning Moment $M_{by}$ (kip*ft)','Interpreter','latex', 'FontSize', 16)
xlim([0.1,f2]);
ylim([0,1.1*max(valmpMy, valnompMy)])
legend("Mass", "Max" ,"No Mass", "Max")
grid on


figure(2)
plot(f, masspeakVx)
hold on
plot(f(impVx), valmpVx, 'or')
text(f(impVx), valmpVx, num2str(valmpVx), 'VerticalAlignment','top','HorizontalAlignment','left')
hold on 
plot(f, nomasspeakVx)
hold on
plot(f(inompVx), valnompVx, 'or')
text(f(inompVx), valnompVx, num2str(valnompVx), 'VerticalAlignment','top','HorizontalAlignment','left')
title(['$V_{b}$ vs $f_{f}$ at a $5^{\circ}$ Tilt'], 'Interpreter','latex', 'FontSize', 24)
xlabel('Forcing Frequency $f_{f}$ (Hz)','Interpreter','latex', 'FontSize', 16)
ylabel('Peak Base Shear $V_{bx}$ (kip)','Interpreter','latex', 'FontSize', 16)
xlim([0.1,f2]);
ylim([0,1.1*max(valmpVx, valnompVx)])
legend("Mass", "Max" ,"No Mass", "Max")
grid on

