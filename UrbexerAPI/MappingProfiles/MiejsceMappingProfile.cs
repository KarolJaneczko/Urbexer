using APIpz.Entities;
using APIpz.Models;
using AutoMapper;

namespace APIpz.MappingProfiles
{
    public class MiejsceMappingProfile : Profile
    {
        public MiejsceMappingProfile()
        {
            CreateMap<Miejsce, MiejsceDto>()
                .ForMember(o => o.Id, c => c.MapFrom(s => s.Id))
                .ForMember(o => o.Adres, c => c.MapFrom(s => s.Adres))
                .ForMember(o => o.Kategoria, c => c.MapFrom(s => s.Miejsce_Kategoria.Nazwa))
                .ForMember(o => o.KategoriaId, c => c.MapFrom(s => s.Miejsce_Kategoria.Id))
                .ForMember(o => o.DataDodania, c => c.MapFrom(s => s.DataDodania))
                .ForMember(o => o.Miasto, c => c.MapFrom(s => s.Miasto))
                .ForMember(o => o.Nazwa, c => c.MapFrom(s => s.Nazwa))
                .ForMember(o => o.Opis, c => c.MapFrom(s => s.Opis))
                .ForMember(o => o.Wojewodztwo, c => c.MapFrom(s => s.Wojewodztwo.Nazwa))
                .ForMember(o => o.WojewodztwoId, c => c.MapFrom(s => s.Wojewodztwo.Id))
                .ForMember(o => o.WspolrzedneLAT, c => c.MapFrom(s => s.WspolrzedneLAT))
                .ForMember(o => o.WspolrzedneLNG, c => c.MapFrom(s => s.WspolrzedneLNG))
                .ForMember(o => o.Zdjecia, c => c.MapFrom(s => s.Zdjecia));

            CreateMap<Zdjecie, ZdjecieDto>()
                .ForMember(o => o.Id, c => c.MapFrom(s => s.Id))
                .ForMember(o => o.NumerKolejny, c => c.MapFrom(s => s.NumerKolejny))
                .ForMember(o => o.Szerokosc, c => c.MapFrom(s => s.Szerokosc))
                .ForMember(o => o.Wysokosc, c => c.MapFrom(s => s.Wysokosc))
                .ForMember(o => o.Link, c => c.MapFrom(s => s.Link))
                .ForMember(o => o.Rozmiar, c => c.MapFrom(s => s.Rozmiar.ToString()));

        }
    }
}
