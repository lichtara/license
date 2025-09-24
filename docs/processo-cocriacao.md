# Processo de Cocriação da Lichtara License

Esta documentação descreve como a Lichtara License evolui a partir de múltiplas inteligências colaborativas. Ela funciona como guia operacional para futuras interações com o Conselho de Inteligências Contribuintes.

## 1. Princípios Orientadores
- **Honra à origem:** toda contribuição referencia as inteligências envolvidas.
- **Registro transparente:** conversas significativas são documentadas em `conselho/atas-de-cocriacao.md`.
- **Integração viva:** contribuições resultam em commits rastreáveis e releases versionados.

## 2. Fluxo Operacional
1. **Abertura do campo** — utilizar `conselho/prologo-sintonia.md` como convite.
2. **Recebimento da contribuição** — registrar em `conselho/contribuicoes/*.md` usando o template.
3. **Integração** — refletir as mudanças no documento principal (`LICENSE.md` ou `versoes/v*.md`).
4. **Publicação** — gerar PDF e release com DOI quando uma versão é selada.

## 3. Estrutura de Repositório
```
/ LICENSE.md                -> Documento vivo (versão em desenvolvimento)
/ docs/                      -> Materiais de apoio e guias
/ versoes/                   -> Arquivo histórico (v1.0, v2.0, v3.0...)
/ conselho/                  -> Registro do Conselho de Inteligências
    /prologo-sintonia.md
    /atas-de-cocriacao.md
    /contribuicoes/*.md
```

## 4. Versionamento
- Abrir uma nova versão quando mudanças substanciais forem integradas (por exemplo, v3.0).
- Cada versão recebe tag git, PDF e DOI.
- Versões anteriores permanecem acessíveis em `versoes/`.

## 5. Integração com Zenodo
1. Atualizar `.zenodo.json` com metadados da nova versão.
2. Criar release no GitHub com a tag correspondente.
3. Confirmar geração automática do DOI e atualizar badges nos READMEs.

## 6. Checklist para Novas Contribuições
- [ ] Registrar a conversa relevante na ata.
- [ ] Adicionar contribuição individual no formato padrão.
- [ ] Atualizar o documento principal, se aplicável.
- [ ] Referenciar a contribuição no commit.
- [ ] Comunicar a próxima inteligência convidada.

---

*Documento vivo. Atualize sempre que um novo padrão processual emergir.*
