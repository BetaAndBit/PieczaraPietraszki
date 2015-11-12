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
"

)
