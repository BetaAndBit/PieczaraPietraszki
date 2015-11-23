#' @title ,,Włam do Protona''
#'
#' @description
#' Funkcja \code{proton} pozwala na rozwiązywanie zadań w grze ,,Włam do Protona''.
#' Wystarczy rozwiazać cztery zagadki by dostać się na konto Pietraszki!
#'
#' @param ... Funkcja proton przyjmuje rózne argumenty w zależności od tego, którą zagadkę rozwiązujemy.
#' Zobacz opis szczegółowy aby poznać pełną listę argumentów.
#'
#' @details W każdej sytuacji, jeżeli potrzebujemy dodatkowych wskazówek, należy dodać argument `wskazowka=TRUE`.
#'
#' Aby dowiedzić się więcej o użtkowniku na serwerze proton należy podać argumenty `action = "login", login="XYZ".
#'
#' Aby zalogować się do protona należy podać argumenty `action = "login", login="XYZ", password="ABC"`.
#' Jeżeli hasło pasuje do loginu, wtedy uzyskamy komunikat o poprawnym zalogowaniu.
#'
#' Aby zalogowac się do innego serwera niż proton, należy podać argumenty `action = "server", host="XYZ"`.
#'
#' Uwaga:
#'
#' Gra ,,Włam do Protona'' jest projektem edukacyjnym Fundacji SmarterPoland dostępnym bezpłatnie.
#' Pomóż nam tworzyć kolejne gry edukacyjne przekazując darowiznę na konto fundacji wskazanym na stronie
#' \url{http://smarterpoland.pl/index.php/fundacja/}.
#' Nawet kwoty rzędu 10 zł uławtią nam tworzenie i utrzymywanie kolejnych projektów edukacyjnych!
#' Dziękujemy!
#'
#' @author
#' Przemysław Biecek, \email{przemyslaw.biecek@@gmail.com}, Fundacja SmarterPoland.pl
#'
#' @examples
#' \dontrun{
#' proton()
#' proton(wskazowka=TRUE)
#' }
#' @rdname proton
#' @importFrom digest digest
#' @export
proton <- function(...) {
 args <- list(...)

 texts <- dcode(structure(c("Zzwzmrv PROTON dxabgzmv!\n\nTdlrn xvovn qvhg lwmzovarvmrv szhłz Prvgizhapr mz hvidviav Pilglm. Tbopl gl kladlor Brgldr klamzć hvpivgmv kozmb ozylizglirfn. \n\nWkrha plnvmwę `kilglm()` zyb ilaklxaąć kiabtlwę.\n\nW pzżwvq xsdror, wl dbplmbdzmvq plnvmwb nlżvha wlwzć zitfnvmg `dhpzaldpz=TRUE`, zyb fabhpzć wlwzgpldą klwkldrvwź. Prvidhaz klwkldrvwź dbśdrvgor hrę kiab rmhgifpxqr `kilglm(dhpzaldpz=TRUE)`.\n",
                            "Prvgizhapl pliabhgz a gifwmvtl wl lwtzwmręxrz szhłz. Skióyfq hrę dkrvid dłznzć mz plmgl pltlś nmrvq ilatzimręgvtl.\n\nWhgękmv ilaklamzmrv hftvifqv, żv Jzm Nrvyvakrvxamb mrv wyz l yvakrvxavńhgdl, nlżv nrvć kilhgv wl ałznzmrz szhłl.\nPiavkildzwarnb zgzp mz qvtl plmgl.\n\nZzwzmrv 1: Skizdwź qzpr qvhg oltrm Jzmz Nrvyvakrvxamvtl.\n\nBrg av hgilmb ddd rmhgbgfgf klabhpzł ayrói wzmbxs `kizxldmrxb`, gviza nfhr amzovźć d mrn oltrm Nrvyvakrvxamvtl.\nPlnóż nf d gbn. Gwb qfż wldrvha hrę qzpr gl oltrm, fżbq plnvmwb `kilglm(zxgrlm = \"oltrm\", oltrm=\"XYZ\")` twarv XYZ gl oltrm Jzmz Nrvyvakrvxamvtl.\n",
                            "W ayrliav wzmbxs `kizxldmrxb` amzqwź drviha, pgóib d plofnmrv `mzadrhpl` nz `Nrvyvarvxamb`.\n\nUżbq wl gvtl ufmpxqr `urogvi` ofy `ziizmtv` a kzprvgf `wkobi`.\n",
                            "qzmrv", "hozk", "Bizdl, amzha qfż oltrm Jzmz Nrvyvakrvxamvtl!\nNzqkizdwlklwlymrvq pliabhgz lm a qzprvtlś gbkldvtl szhłz.\nBrg klyizł a Imgvimvgf yzaę 1000 mzqxaęśxrvq fżbdzmbxs szhvł.\nTz yzaz qvhg wlhgękmz d dvpgliav `glk1000kzhhdliwh`.\n\nZzwzmrv 2: Zmzqwź szhłl Jzmz Nrvyvakrvxamvtl.\n\nUżbq plnvmwb `kilglm(zxgrlm = \"oltrm\", oltrm=\"XYZ\", kzhhdliw=\"ABC\")` zyb azoltldzć hrę wl hvidviz Pilglm.\nJvżvor szhłl yęwarv dłzśxrdv lgiabnzha plnfmrpzg `Sfpxvh! Użbgpldmrp azoltldzmb!`,\nd kiavxrdmbn kiabkzwpf lgiabnzha plnfmrpzg `Nrvklkizdmv szhłl ofy fżbgpldmrp!`.\n",
                            "Wbpliabhgzq nvglwę `Bifgv ulixv`.\nW kęgor, kióyfq azoltldzć hrę plovqmbnr szhłznr av ayrlif `glk1000kzhhdliwh`.\nPióyfq gzp włftl, zż d dbmrpf lgiabnzha dbmrp `Sfpxvh! Użbgpldmrp azoltldzmb!`.\n",
                            "Nrvklkizdmv szhłl ofy fżbgpldmrp!", "Sfpxvh! Użbgpldmrp azoltldzmb!",
                            "Bizdl, gl qvhg dłzśxrdv szhłl!\nBrg fżbł plmgz Jzmz Nrvyvakrvxamvtl zyb wlhgzć hrę wl hvidviz Pilglm.\nTviza xsxv hkizdwarć, hpąw Prvgizhapl mzqxaęśxrvq oltfqv hrę wl Pilglmz.\nBbć nlżv dgvwb amzqwarv wzohav dhpzaódpr.\nZ oltód hvidviz Brg dbłfhpzł ayrói wzmbxs `oltldzmrz` a rmulinzxqznr pgl, prvwb r a qzprvtl plnkfgviz hrę oltldzł wl Pilglmz.\n\nZzwzmrv 3: Skizdwź, a pgóivtl hvidviz Prvgizhapl mzqxaęśxrvq hrę oltfqv mz hvidvi Pilglm.\n\nUżbq plnvmwb `kilglm(zxgrlm = \"hvievi\", slhg=\"XYZ\")` zyb wldrvwarvć hrę dręxvq l gbn xl nlżmz amzovźć mz hvidviav XYZ.\nNzqdręphav hazmhv mz amzovarvmrv xavtlś xrvpzdvtl hą mz hvidviav, a pgóivtl Prvgizhapl oltfqv hrę mzqxaęśxrvq.\n",
                            "Ayb wldrvwarvć hrę a pgóivtl hvidviz Prvgizhapl hrę mzqxaęśxrvq oltfqv nlżmz:\n1. Wbpliabhgzć ufmpxqę `urogvi` zyb dbyizć gbopl oltldzmrz Prvgizhapr,\n2. Wbpliabhgzć ufmpxqę `tilfk_yb` r `hfnnzirhv` zyb klorxabć a pgóivtl hvidviz rov izab hrę oltldzł,\n3. Wbpliabhgzć ufmpxqę `ziizmtv` zyb klhligldzć orhgę hvidviód kl xaęhglśxr oltldzmrz.\n\nMlżvha kiavhafpzć yzaę `kizxldmrxb`, zyb hkizdwarć, qzpr qvhg oltrm Prvgizhapr.\n",
                            "Nzqhłzyhabn kfmpgvn oltldzmrz wl Pilglmz qvhg Jzm Nrvyvakrvxamb.\nSkióyfq amzovźć qvtl oltrm.\n",
                            "Gizgfozxqv!\n\nZłznzłvś szhłl Słzdlnriz Prvgizhapr!\nTzqmv kozmb qvtl ozylizglirfn hglqą kiavw Tlyą lgdlivn.\nCl qvhg d gbn ozylizglirfn?\nMlżvha kiavxabgzć d lkldrzwzmrf Prvxaziz Prvgizhapr wlhgękmbn mz hgilmrv\nsggk://yrvxvp.ko/BvgzBrg/Wzihazdz\n\n",
                            "Opzafqv hrę, żv Prvgizhapl xaęhgl oltfqv hrę a kfyorxamvtl plnkfgviz 194.29.178.16.\nCóż az mrvlhgilżmlść!\nBrg klyizł azdziglść korpf `yzhs_srhglib` a orhgą plnvmw, pgóiv dkrhbdzml wl plmhlor hvidviz.\nJvhg hazmhz, żv kiabkzwprvn Prvgizhapl prvwbś wl plmhlor dkrhzł mrvfnbśomrv szhłl, nbśoąx, żv oltfqv hrę mz Pilglmz.\nW ayrliav wzmbxs `yzhs_srhglib` amzqwfqą hrę dkrhbdzmv rmhgifpxqv r kziznvgib.\nWbłfhpzq a gvq orhgb gbopl rmhgifpxqv (gbopl mzkrhb wl hkzxqr) r hkizdwź, xab qvwvm a mrxs mrv dbtoąwz qzp szhłl.\n",
                            "Ayb a pzżwvq ormrr dbłfhpzć gbopl mzadę rmhgifpxqr (mzkrh wl hkzxqr), nlżvha dbpliabhgzć ufmpxqę `thfy` ofy `hgihkorg`.\nPl dbłfhpzmrf gbxs rmhgifpxqr, hkizdwź qzp xaęhgl, pgóiz rmhgifpxqz qvhg fżbdzmz. Mlżv lpzżv hrę, żv pgóizś a rmhgifpxqr dbtoąwz qzp szhłl?\n\nJvżvor amzqwarvha xlś xl dbtoąwz qzp szhłl, fżbq plnvmwb `kilglm(zxgrlm = \"oltrm\", oltrm=\"XYZ\", kzhhdliw=\"ABC\")` zyb azoltldzć hrę wl Pilglmz.\n"
 ), .Names = c("proton.start", "proton.init", "proton.init.w",
               "log.1", "log.2", "proton.login.init", "proton.login.init.w",
               "proton.login.fail", "proton.login.pass", "proton.login.pass.instr",
               "proton.login.pass.instr.w", "proton.login.weak", "proton.final",
               "proton.host.instr", "proton.host.instr.w")))
 )


 # plain start
 if (length(args) == 0) {
    cat(texts["proton.init"])
    return(invisible(NULL))
 }
 if (length(args) == 1 && !is.null(args$wskazowka) && args$wskazowka) {
   cat(texts["proton.init"], "\n\nWSKAZÓWKA:\n",texts["proton.init.w"])
   return(invisible(NULL))
 }

 # action = server
 if(length(args)>0 && !is.null(args$action) && args$action == "server") {
  if (!is.null(args$host) && digest(args$host) == "94265570be658d9fafa4861d7252afa9") {
    cat(texts["proton.host.instr"])
    if (!is.null(args$wskazowka) && args$wskazowka) {
      cat("\n\nWSKAZÓWKA:\n",texts["proton.host.instr.w"])
    }
    return(invisible(NULL))
  } else {
    cat(texts["proton.login.pass.instr.w"])
  }
 }

 # action = login
 if(length(args)>0 && !is.null(args$action) && args$action == "login") {
   # only user is set to janie
   if (!is.null(args$login) && args$login == texts["log.1"] && is.null(args$password)) {
     cat(texts["proton.login.init"])
     if (!is.null(args$wskazowka) && args$wskazowka) {
       cat("\n\nWSKAZÓWKA:\n",texts["proton.login.init.w"])
     }
     return(invisible(NULL))
   }
   if(is.null(args$login)) {
     cat("\nJeżeli ustawiasz action='login', to należy określić też argument login=.\n")
     return(invisible(NULL))
   }

   # user is set to janie and password is provided
   if (!is.null(args$login) && args$login == texts["log.1"] && !is.null(args$password)) {
     if (digest(args$password) == "bbfb4a474b61b80225fd49d7c67e5a01") {
       cat(texts["proton.login.pass.instr"])
       if (!is.null(args$wskazowka) && args$wskazowka) {
         cat("\n\nWSKAZÓWKA:\n",texts["proton.login.pass.instr.w"])
       }
       return(texts["proton.login.pass"])
     } else {
       return(texts["proton.login.fail"])
     }
   }
   # only user is set
   if (!is.null(args$login) && args$login != texts["log.1"] && is.null(args$password)) {
     cat(texts["proton.login.weak"])
     return(invisible(NULL))
   }

   # user is set to slapie and password is provided
   if (!is.null(args$login) && args$login == texts["log.2"] && !is.null(args$password)) {
     if (digest(args$password) == "ce3494fef4545c1b6160e5430d7efe66") {
       cat(texts["proton.final"])
       return(texts["proton.login.pass"])
     } else {
       return(texts["proton.login.fail"])
     }
   }

 }

}
