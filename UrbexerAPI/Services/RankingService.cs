using APIpz.Entities;
using APIpz.Middleware;
using APIpz.Models;
using AutoMapper;
using Microsoft.EntityFrameworkCore;


namespace APIpz.Services
{
    public interface IRankingService
    {
        List<PozycjaWRankinguDto> Ranking(int? kategoriaId = null);
    }
    public class RankingService : IRankingService
    {
        private readonly BazaDbContext _context;
        public RankingService(BazaDbContext context)
        {
            _context = context;
        }

        public List<PozycjaWRankinguDto> Ranking(int? kategoriaId=null)
        {
            List<PozycjaWRankinguDto> wynik;
            if (kategoriaId.HasValue)
            {
                wynik = _context.Odwiedzone
                    .Where(x => x.OdwiedzonyUrbex.Miejsce_Kategoria.Id == kategoriaId.Value)
                    .GroupBy(o => o.OdwiedzonePrzez.Login)
                    .Select(t => new PozycjaWRankinguDto { Login = t.Key, LiczbaMiejsc = t.Count() })
                    .OrderByDescending(o => o.LiczbaMiejsc)
                    .Take(20)
                    .ToList();
            }
            else
            {
                wynik = _context.Odwiedzone
                .GroupBy(o => o.OdwiedzonePrzez.Login)
                .Select(t => new PozycjaWRankinguDto { Login = t.Key, LiczbaMiejsc = t.Count() })
                .OrderByDescending(o => o.LiczbaMiejsc)
                .Take(20)
                .ToList();
            }

            /*int i = 1;
            foreach (var item in wynik)
            {
                item.Pozycja = i++;
            }*/
            return wynik;
        }
    }
}
