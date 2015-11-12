texts <- c(
  proton.start = "Zadanie PROTON wczytane!
Twoim celem jest odnalezienie hasła Pietraszki na serwerze Proton. Tylko to pozwoli Bitowi poznać sekretne plany laboratorium. \n
Wpisz komendę `proton()` aby rozpocząć przygodę.\n
W każdej chwili, do komendy `proton()` możesz dodać argument `wskazowka=TRUE`, aby uzyskać dodatkową podpowiedź.",
  proton.init = "Pietraszko korzysta z trudnego do odgadnięcia hasła. Spróbujemy się wpierw włamać na konto kogoś mniej rozgarniętego.

Wstępne rozpoznanie sugeruje, że Jan Niebezpieczny nie dba o bezpieczeństo, może mieć proste do złamania hasło.
Przeprowadzimy atak na jego konto.

Zadanie 1: Sprawdź jaki jest login Jana Niebezpiecznego.

Bit ze strony www instytutu pozyskał zbiór danych `pracownicy`, teraz musi znaleźć w nim login Niebiezpiecznego.
Pomóż mu w tym. Gdy już dowiesz się jaki to login, użyj komendy `proton(action = \"login\", login=\"XYZ\")` gdzie XYZ to login Jana Niebezpiecznego.",
  proton.init.w = "W zbiorze danych `pracownicy` znajdź wiersz, który w kolumnie `nazwisko` ma `Niebezieczny`.

Użyj do tego funkcji `filter` lub `arrange` z pakietu `dplyr`.
",
  log.1 = "janie",
  pas.1 = "q1w2e3r4t5",
  proton.login.init = "Brawo, znasz już login Jana Niebezpiecznego!
Najprawdopodobniej korzysta on z jakiegoś typowego hasła.
Bit pobrał z internetu bazę 1000 najczęściej używanych haseł.
Ta baza jest dostępna w wektorze `top1000passwords`.

Zadanie 2: Znajdź hasło Jana Niebezpiecznego.

Użyj komendy `proton(action = \"login\", login=\"XYZ\", password=\"ABC\")` aby zalogować się do serwera Proton.
Jeżeli hasło będzie właściwe otrzymasz komunikat `Sukces! Użytkownik zalogowany!`,
w przeciwnym przypadku otrzymasz kommunikat `Niepoprawne hasło lub użytkownik!`."

)
