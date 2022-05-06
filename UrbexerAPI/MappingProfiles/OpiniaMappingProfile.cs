using APIpz.Entities;
using APIpz.Models;
using AutoMapper;

namespace APIpz.MappingProfiles
{
    public class OpiniaMappingProfile : Profile
    {
        public OpiniaMappingProfile()
        {
            CreateMap<Opinia, OpiniaDto>()
                .ForMember(o => o.KtoOdwiedzil, c => c.MapFrom(s => s.Odwiedzony.OdwiedzonePrzez.Login))
                .ForMember(o => o.Miejsce, c => c.MapFrom(s => s.Odwiedzony.OdwiedzonyUrbex.Nazwa))
                .ForMember(o => o.Ocena, c => c.MapFrom(s => s.Ocena))
                .ForMember(o => o.Tekst, c => c.MapFrom(s => s.Tekst));

            CreateMap<Odwiedzony, ZwracaneOdwiedzoneDto>()
                .ForMember(o => o.Nazwa, c => c.MapFrom(s => s.OdwiedzonyUrbex.Nazwa))
                .ForMember(o => o.Miejsce_Kategoria, c => c.MapFrom(s => s.OdwiedzonyUrbex.Miejsce_Kategoria.Nazwa))
                .ForMember(o => o.Adres, c => c.MapFrom(s => s.OdwiedzonyUrbex.Adres))
                .ForMember(o => o.Zdjecia, c => c.MapFrom(s => s.OdwiedzonyUrbex.Zdjecia));

            CreateMap<Profil, PokazProfilDto>()
                .ForMember(o => o.UzytkownikId, c => c.MapFrom(s => s.Uzytkownik.Id))
                .ForMember(o => o.Email, c => c.MapFrom(s => s.Uzytkownik.Email))
                .ForMember(o => o.Login, c => c.MapFrom(s => s.Uzytkownik.Login))
                .ForMember(o => o.CzyAdmin, c => c.MapFrom(s => s.Uzytkownik.CzyAdmin))
                .ForMember(o => o.Imie, c => c.MapFrom(s => s.Imie))
                .ForMember(o => o.Nazwisko, c => c.MapFrom(s => s.Nazwisko))
                .ForMember(o => o.Opis, c => c.MapFrom(s => s.Opis))
                .ForMember(o => o.LinkFacebook, c => c.MapFrom(s => s.LinkFacebook))
                .ForMember(o => o.LinkInstagram, c => c.MapFrom(s => s.LinkInstagram))
                .ForMember(o => o.LinkYouTube, c => c.MapFrom(s => s.LinkYouTube))
                .ForMember(o => o.Layout, c => c.MapFrom(s => s.Layout));
        }
    }
}
