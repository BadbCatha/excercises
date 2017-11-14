=begin
Zasada komplementarności DNA mówi, że znając sekwencję pojedyńczego łańcucha DNA możemy wywnioskować sekwencję jego sąsiedniej nici.
Wynika to z faktu, iż zasady azotowe, z których DNA jest zbudowane łączą się w paryzawsze w ten sam sposób,
to znaczy Adenina (A) z Tyminą (T), a Cytozyna C z Guaniną(G).
Napisz funckję, która przyjmie ciąg znaków reprezentujący sekwencję DNA i zwrócisekwencję komplementarną.

=end

def complementary_DNA(kod)
 komplementarny = kod.gsub(/[ATCG]/, 'A' => 'T', 'T' => 'A', 'C' => 'G', 'G' => 'C') 
 puts komplementarny
end
 


complementary_DNA("ATTA")#=> "TAAT"complementary_DNA("CGGC")#=> "GCCG"