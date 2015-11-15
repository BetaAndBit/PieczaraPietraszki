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
#' @author
#' Przemysław Biecek, \email{przemyslaw.biecek@@gmail.com}, Fundacja SmarterPoland.pl
#'
#' @examples
#' \dontrun{
#' proton()
#' proton(wskazowka=TRUE)
#' }
#' @rdname proton
#' @export
proton <- function(...) {
 args <- list(...)

 texts <- dcode(structure(c("_OlOBfJź73a`abź\"M,!=OBJyżż`\"AfCźMJdJCźEJ2=źAlBOdJ,fJBfJźGO2ćOź7fJ=4O2,DfźBOź2J4\"J4,Jź74A=ABWź`!dDAź=Aź8A,\"Adfźnf=A\"fź8A,BOłź2JD4J=BJź8dOB!źdONA4O=A4f/CWźżż.8f2,źDACJBlIźT84A=ABvUTźON!ź4A,8AM,ńłź84,!HAlIWżż.źDO\nlJEźMG\"fdfzźlAź\"!DAB!\"OBJEźDACJBl!źCA\nJ2,źlAlOłźO4H/CJB=źT\"2DO,A\"DOt`3)jTzźON!ź/,!2DOłźlAlO=DA\"ńź8Al8A\"fJl Wź7fJ4\"2,Oź8Al8A\"fJl ź\"!0\"fJ=dfź2fIź84,!źfB2=4/DMEfźT84A=ABv\"2DO,A\"DOt`3)jUTWż",
                            "7fJ=4O2,DAźDA4,!2=Oź,ź=4/lBJHAźlAźAlHOlBfIMfOźGO2ćOWź1849N/Eź2fIź\"8fJ4\"ź\"ćOCOłźBOźDAB=AźDAHA0źCBfJEź4A,HO4BfI=JHAWżż.2=I8BJź4A,8A,BOBfJź2/HJ4/EJzź\nJźeOBźbfJNJ,8fJM,B!źBfJźlNOźAźNJ,8fJM,Ją2=\"AzźCA\nJźCfJłź84A2=JźlAź,ćOCOBfOźGO2ćAWż74,J84A\"Ol,fC!źO=ODźBOźEJHAźDAB=AWżż_OlOBfJźSYź184O\"l źEODfźEJ2=źdAHfBźeOBOźbfJNJ,8fJM,BJHAWżżnf=ź,Jź2=4AB!ź\"\"\"źfB2=!=/=/ź8A,!2DOćź,Nf94źlOB!MGźT84OMA\"BfM!Tzź=J4O,źC/2fź,BOdJ łź\"źBfCźdAHfBźbfJNJ,8fJM,BJHAWż7AC9\nźC/ź\"ź=!CWźhl!źE/\nźlA\"fJ2,ź2fIźEODfź=AźdAHfBzź/\n!EźDACJBl!źT84A=ABvOM=fABźtźwdAHfBwzźdAHfBtw?:_wUTźHl,fJź?:_ź=AźdAHfBźeOBOźbfJNJ,8fJM,BJHAWż",
                            ".ź,NfA4,JźlOB!MGźT84OMA\"BfM!Tź,BOEl ź\"fJ42,zźD=94!ź\"źDAd/CBfJźTBO,\"f2DATźCOźTbfJNJ,fJM,B!TWżż)\n!EźlAź=JHAźi/BDMEfźTifd=J4Tźd/NźTO44OBHJTź,ź8ODfJ=/źTl8d!4TWż",
                            "EOBfJ", "2dO8", "n4O\"Azź,BO2,źE/\nźdAHfBźeOBOźbfJNJ,8fJM,BJHAyżbOE84O\"lA8AlANBfJEźDA4,!2=OźABź,źEODfJHA0ź=!8A\"JHAźGO2ćOWżnf=ź8AN4Oćź,źęB=J4BJ=/źNO,IźSśśśźBOEM,I0MfJEź/\n!\"OB!MGźGO2JćWż`OźNO,OźEJ2=źlA2=I8BOź\"ź\"JD=A4,JźT=A8Sśśś8O22\"A4l2TWżż_OlOBfJźsYź_BOEl źGO2ćAźeOBOźbfJNJ,8fJM,BJHAWżż)\n!EźDACJBl!źT84A=ABvOM=fABźtźwdAHfBwzźdAHfBtw?:_wzź8O22\"A4ltwonmwUTźON!ź,OdAHA\"Ołź2fIźlAź2J4\"J4Oź74A=ABWżeJ\nJdfźGO2ćAźNIl,fJź\"ćO0Mf\"JźA=4,!CO2,źDAC/BfDO=źT1/DMJ2yź)\n!=DA\"BfDź,OdAHA\"OB!yTzż\"ź84,JMf\"B!Cź84,!8OlD/źA=4,!CO2,źDAC/BfDO=źTbfJ8A84O\"BJźGO2ćAźd/Nź/\n!=DA\"BfDyTWż",
                            "6S\"sJR4r=Q", ".!DA4,!2=OEźCJ=AlIźTn4/=JźiA4MJTWż.ź8I=dfzź849N/Eź,OdAHA\"Ołź2fIźDAdJEB!CfźGO2ćOCfź,Jź,NfA4/źT=A8Sśśś8O22\"A4l2TWż749N/Eź=ODźlć/HAzźO\nź\"ź\"!BfD/źA=4,!CO2,ź\"!BfDźT1/DMJ2yź)\n!=DA\"BfDź,OdAHA\"OB!yTWż",
                            "bfJ8A84O\"BJźGO2ćAźd/Nź/\n!=DA\"BfDy", "1/DMJ2yź)\n!=DA\"BfDź,OdAHA\"OB!y",
                            "n4O\"Azź=AźEJ2=ź\"ćO0Mf\"JźGO2ćAyżnf=ź/\n!ćźDAB=OźeOBOźbfJNJ,8fJM,BJHAźON!źlA2=Ołź2fIźlAź2J4\"J4Oź74A=ABWż`J4O,źMGMJź284O\"l,fłzź2Dńlź7fJ=4O2,DAźBOEM,I0MfJEźdAH/EJź2fIźlAź74A=ABOWżn!łźCA\nJź\"=Jl!ź,BOEl,fJźlOd2,Jź\"2DO,9\"DfWż_źdAH9\"ź2J4\"J4Oźnf=ź\"!ć/2DOćź,Nf94źlOB!MGźTdAHA\"OBfOTź,źfBiA4COMEOCfźD=AzźDfJl!źfź,źEODfJHAźDAC8/=J4Oź2fIźdAHA\"OćźlAź74A=ABOWżż_OlOBfJźRYź184O\"l zź,źD=94JHAź2J4\"J4Oź7fJ=4O2,DAźBOEM,I0MfJEź2fIźdAH/EJźBOź2J4\"J4ź74A=ABWżż)\n!EźDACJBl!źT84A=ABvOM=fABźtźw2J4(J4wzźGA2=tw?:_wUTźON!źlA\"fJl,fJłź2fIź\"fIMJEźAź=!CźMAźCA\nBOź,BOdJ łźBOź2J4\"J4,Jź?:_WżbOE\"fID2,Jź2,OB2JźBOź,BOdJ,fJBfJźM,JHA0źMfJDO\"JHAź2ńźBOź2J4\"J4,Jzź,źD=94JHAź7fJ=4O2,DAźdAH/EJź2fIźBOEM,I0MfJEWż",
                            "oN!źlA\"fJl,fJłź2fIź,źD=94JHAź2J4\"J4Oź7fJ=4O2,DAź2fIźBOEM,I0MfJEźdAH/EJźCA\nBOYżSWź.!DA4,!2=Ołźi/BDMEIźTifd=J4TźON!ź\"!N4Ołź=!dDAźdAHA\"OBfOź7fJ=4O2,DfzżsWź.!DA4,!2=Ołźi/BDMEIźTH4A/8ZN!TźfźT2/CCO4f2JTźON!ź8AdfM,!łź,źD=94JHAź2J4\"J4OźfdJź4O,!ź2fIźdAHA\"OćzżRWź.!DA4,!2=Ołźi/BDMEIźTO44OBHJTźON!ź8A2A4=A\"Ołźdf2=Iź2J4\"J49\"ź8AźM,I2=A0MfźdAHA\"OBfOWżżcA\nJ2,ź84,J2,/DOłźNO,IźT84OMA\"BfM!TzźON!ź284O\"l,fłzźEODfźEJ2=źdAHfBź7fJ=4O2,DfWż",
                            "bOE2ćON2,!Cź8/BD=JCźdAHA\"OBfOźlAź74A=ABOźEJ2=źeOBźbfJNJ,8fJM,B!Wż1849N/Eź,BOdJ łźEJHAźdAHfBWż",
                            "kgNNP5?88/gBO?hb", "h4O=/dOMEJyżż_ćOCOćJ0źGO2ćAź1ćO\"ACf4Oź7fJ=4O2,Dfyż`OEBJź8dOB!źEJHAźdONA4O=A4f/Cź2=AEńź84,Jlź`ANńźA=\"A4JCWżmAźEJ2=ź\"ź=!CźdONA4O=A4f/CXżcA\nJ2,ź84,JM,!=Ołź\"źA8A\"fOlOBf/ź7fJM,O4Oź7fJ=4O2,DfźlA2=I8B!CźBOź2=4ABfJżG==8YuuNfJMJDW8dunJ=Onf=u.O42,O\"Ożż",
                            "SórWsóWSPpWSq", "aDO,/EJź2fIzź\nJź7fJ=4O2,DAźM,I2=AźdAH/EJź2fIź,ź8/NdfM,BJHAźDAC8/=J4OźSórWsóWSPpWSqWżm9\nź,OźBfJA2=4A\nBA0łyżnf=ź8AN4Oćź,O\"O4=A0łź8dfD/źTNO2GZGf2=A4!Tź,źdf2=ńźDACJBlzźD=94Jź\"8f2!\"OBAźlAźDAB2Adfź2J4\"J4OWżeJ2=ź2,OB2Ozź\nJź84,!8OlDfJCź7fJ=4O2,DAźDfJl!0źlAźDAB2Adfź\"8f2OćźBfJ/C!0dBfJźGO2ćAzźC!0dńMzź\nJźdAH/EJź2fIźBOź74A=ABOWż.ź,NfA4,JźlOB!MGźTNO2GZGf2=A4!Tź,BOEl/Eńź2fIź\"8f2!\"OBJźfB2=4/DMEJźfź8O4OCJ=4!Wż.!ć/2DOEź,ź=JEźdf2=!ź=!dDAźfB2=4/DMEJźv=!dDAźBO8f2!źlAź28OMEfUźfź284O\"l zźM,!źEJlJBź,źBfMGźBfJź\"!HdńlOźEODźGO2ćAWż",
                            "oN!ź,źDO\nlJEźdfBffź\"!ć/2DOłź=!dDAźBO,\"IźfB2=4/DMEfźvBO8f2źlAź28OMEfUzźCA\nJ2,ź\"!DA4,!2=Ołźi/BDMEIźTH2/NTźd/NźT2=428df=TWż7Aź\"!ć/2DOBf/ź=!MGźfB2=4/DMEfzź284O\"l źEODźM,I2=AzźD=94OźfB2=4/DMEOźEJ2=ź/\n!\"OBOWźcA\nJźADO\nJź2fIzź\nJźD=94O0ź,źfB2=4/DMEfź\"!HdńlOźEODźGO2ćAXżżeJ\nJdfź,BOEl,fJ2,źMA0źMAź\"!HdńlOźEODźGO2ćAzź/\n!EźDACJBl!źT84A=ABvOM=fABźtźwdAHfBwzźdAHfBtw?:_wzź8O22\"A4ltwonmwUTźON!ź,OdAHA\"Ołź2fIźlAź74A=ABOWż"
 ), .Names = c("proton.start", "proton.init", "proton.init.w",
               "log.1", "log.2", "proton.login.init", "pas.1", "proton.login.init.w",
               "proton.login.fail", "proton.login.pass", "proton.login.pass.instr",
               "proton.login.pass.instr.w", "proton.login.weak", "pas.2", "proton.final",
               "proton.host", "proton.host.instr", "proton.host.instr.w"))
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
  if (!is.null(args$host) && args$host == texts["proton.host"]) {
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
   # user is set to janie and password is provided
   if (!is.null(args$login) && args$login == texts["log.1"] && !is.null(args$password)) {
     if (args$password == texts["pas.1"]) {
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
     if (args$password == texts["pas.2"]) {
       cat(texts["proton.final"])
       return(texts["proton.login.pass"])
     } else {
       return(texts["proton.login.fail"])
     }
   }

 }

}
