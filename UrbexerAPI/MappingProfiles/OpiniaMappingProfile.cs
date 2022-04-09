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
                .ForMember(o => o.Adres, c => c.MapFrom(s => s.OdwiedzonyUrbex.Adres));
        }
    }
}
