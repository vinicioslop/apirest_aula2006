using System;
using System.Collections.Generic;

namespace apirest_aula2006.db;

public partial class TbLivro
{
    public int IdLivro { get; set; }

    public string? Titulo { get; set; }

    public short? Ano { get; set; }

    public string? DsLivro { get; set; }

    public int? FkIdautor { get; set; }

    public int? FkIdcategoria { get; set; }

    public virtual TbAutor? FkIdautorNavigation { get; set; }

    public virtual TbCategoria? FkIdcategoriaNavigation { get; set; }
}
