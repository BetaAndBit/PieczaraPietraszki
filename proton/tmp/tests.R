texts <- c(
proton.start = "Zadanie PROTON wczytane!

Twoim celem jest odnalezienie hasła Pietraszki na serwerze Proton. Tylko to pozwoli Bitowi poznać sekretne plany laboratorium. \n
Wpisz komendę `proton()` aby rozpocząć przygodę.\n
W każdej chwili, do wykonywanej komendy możesz dodać argument `wskazowka=TRUE`, aby uzyskać dodatkową podpowiedź. Pierwsza podpowiedź wyświetli się przy instrukcji `proton(wskazowka=TRUE)`.
",
proton.init = "Pietraszko korzysta z trudnego do odgadnięcia hasła. Spróbuj się wpierw włamać na konto kogoś mniej rozgarniętego.

Wstępne rozpoznanie sugeruje, że Jan Niebezpieczny nie dba o bezpieczeństwo, może mieć proste do złamania hasło.
Przeprowadzimy atak na jego konto.

Zadanie 1: Sprawdź jaki jest login Jana Niebezpiecznego.

Bit ze strony www instytutu pozyskał zbiór danych `pracownicy`, teraz musi znaleźć w nim login Niebezpiecznego.
Pomóż mu w tym. Gdy już dowiesz się jaki to login, użyj komendy `proton(action = \"login\", login=\"XYZ\")` gdzie XYZ to login Jana Niebezpiecznego.
",
proton.init.w = "W zbiorze danych `pracownicy` znajdź wiersz, który w kolumnie `nazwisko` ma `Niebezieczny`.

Użyj do tego funkcji `filter` lub `arrange` z pakietu `dplyr`.
",
log.1 = "janie",
log.2 = "slap",
proton.login.init = "Brawo, znasz już login Jana Niebezpiecznego!
Najprawdopodobniej korzysta on z jakiegoś typowego hasła.
Bit pobrał z Internetu bazę 1000 najczęściej używanych haseł.
Ta baza jest dostępna w wektorze `top1000passwords`.

Zadanie 2: Znajdź hasło Jana Niebezpiecznego.

Użyj komendy `proton(action = \"login\", login=\"XYZ\", password=\"ABC\")` aby zalogować się do serwera Proton.
Jeżeli hasło będzie właściwe otrzymasz komunikat `Sukces! Użytkownik zalogowany!`,
w przeciwnym przypadku otrzymasz komunikat `Niepoprawne hasło lub użytkownik!`.
",
pas.1 = "q1w2e3r4t5",
proton.login.init.w = "Wykorzystaj metodę `Brute force`.
W pętli, próbuj zalogować się kolejnymi hasłami ze zbioru `top1000passwords`.
Próbuj tak długo, aż w wyniku otrzymasz wynik `Sukces! Użytkownik zalogowany!`.
",
proton.login.fail = "Niepoprawne hasło lub użytkownik!",
proton.login.pass = "Sukces! Użytkownik zalogowany!",
proton.login.pass.instr = "Brawo, to jest właściwe hasło!
Bit użył konta Jana Niebezpiecznego aby dostać się do serwera Proton.
Teraz chce sprawdzić, skąd Pietraszko najczęściej loguje się do Protona.
Być może wtedy znajdzie dalsze wskazówki.
Z logów serwera Bit wyłuskał zbiór danych `logowania` z informacjami kto, kiedy i z jakiego komputera się logował do Protona.

Zadanie 3: Sprawdź, z którego serwera Pietraszko najczęściej się loguje na serwer Proton.

Użyj komendy `proton(action = \"server\", host=\"XYZ\")` aby dowiedzieć się więcej o tym co można znaleźć na serwerze XYZ.
Największe szanse na znalezienie czegoś ciekawego są na serwerze, z którego Pietraszko loguje się najczęściej.
",
proton.login.pass.instr.w = "Aby dowiedzieć się z którego serwera Pietraszko się najczęściej loguje można:
1. Wykorzystać funkcję `filter` aby wybrać tylko logowania Pietraszki,
2. Wykorzystać funkcję `group_by` i `summarise` aby policzyć z którego serwera ile razy się logował,
3. Wykorzystać funkcję `arrange` aby posortować listę serwerów po częstości logowania.

Możesz przeszukać bazę `pracownicy`, aby sprawdzić, jaki jest login Pietraszki.
",
proton.login.weak = "Najsłabszym punktem logowania do Protona jest Jan Niebezpieczny.
Spróbuj znaleźć jego login.
",
pas.2 = "DHbb7QXppuHnaXGN",
proton.final = "Gratulacje!

Złamałeś hasło Sławomira Pietraszki!
Tajne plany jego laboratorium stoją przed Tobą otworem.
Co jest w tym laboratorium?
Możesz przeczytać w opowiadaniu Pieczara Pietraszki dostępnym na stronie
http://biecek.pl/BetaBit/Warszawa

",
proton.host = "194.29.178.16",
proton.host.instr = "Okazuje się, że Pietraszko często loguje się z publicznego komputera 194.29.178.16.
Cóż za nieostrożność!
Bit pobrał zawartość pliku `bash_history` z listą komend, które wpisywano do konsoli serwera.
Jest szansa, że przypadkiem Pietraszko kiedyś do konsoli wpisał nieumyślnie hasło, myśląc, że loguje się na Protona.
W zbiorze danych `bash_history` znajdują się wpisywane instrukcje i parametry.
Wyłuskaj z tej listy tylko instrukcje (tylko napisy do spacji) i sprawdź, czy jeden z nich nie wygląda jak hasło.
",
proton.host.instr.w = "Aby z każdej linii wyłuskać tylko nazwę instrukcji (napis do spacji), możesz wykorzystać funkcję `gsub` lub `strsplit`.
Po wyłuskaniu tych instrukcji, sprawdź jak często, która instrukcja jest używana. Może okaże się, że któraś z instrukcji wygląda jak hasło?

Jeżeli znajdziesz coś co wygląda jak hasło, użyj komendy `proton(action = \"login\", login=\"XYZ\", password=\"ABC\")` aby zalogować się do Protona.
"
)

dcode <- function(tex) {
  liter <- sort(unique(unlist(strsplit(tex, split=""))))
  names(liter) <- rev(liter)
  sapply(strsplit(tex, split=""), function(x){
    paste(liter[x], collapse="")
  })
}

texts2 <- dcode(texts)
