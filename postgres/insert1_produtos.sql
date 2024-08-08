INSERT INTO produtos_bancarios (
    id, nome, descricao, categoria, data_lancamento, taxa_juros, taxa_administracao, limite_credito, prazo, contato_suporte, taxa_adesao, data_ultima_atualizacao, prazo_carencia, taxa_rentabilidade, periodo_investimento, multa_cancelamento
) VALUES
(1, 'Conta Corrente Básica', 'Conta corrente sem tarifa de manutenção', 'Conta Corrente', '2024-01-01', 0.00, 0.00, NULL, 0, '0800-000-0001', 0.00, '2024-01-01', NULL, 0.00, 12, 0.00),
(2, 'Conta Corrente Premium', 'Conta corrente com benefícios exclusivos', 'Conta Corrente', '2024-01-01', 0.00, 10.00, NULL, 12, '0800-000-0002', 10.00, '2024-01-01', 3, 5.00, 24, 50.00),
(3, 'Conta de Poupança', 'Conta de poupança com alta rentabilidade', 'Poupança', '2024-01-01', 2.50, 0.00, NULL, 0, '0800-000-0003', 0.00, '2024-01-01', 0, 2.50, 6, 10.00),
(4, 'Cartão de Crédito Gold', 'Cartão de crédito com cashback', 'Cartão de Crédito', '2024-01-01', 3.00, 20.00, 5000.00, 0, '0800-000-0004', 50.00, '2024-01-01', 6, 4.00, 12, 100.00),
(5, 'Empréstimo Pessoal', 'Empréstimo pessoal com taxa reduzida', 'Empréstimo', '2024-01-01', 5.00, 15.00, 20000.00, 0, '0800-000-0005', 100.00, '2024-01-01', 12, 5.50, 36, 200.00),
(6, 'Seguro de Vida', 'Seguro de vida com cobertura completa', 'Seguro', '2024-01-01', 0.00, 0.00, NULL, 0, '0800-000-0006', 150.00, '2024-01-01', NULL, 0.00, 0, 50.00),
(7, 'CDB de Curto Prazo', 'Certificado de Depósito Bancário com alta liquidez', 'Investimento', '2024-01-01', 4.00, 0.00, 1000.00, 6, '0800-000-0007', 0.00, '2024-01-01', 3, 4.00, 6, 20.00),
(8, 'CDB de Longo Prazo', 'Certificado de Depósito Bancário com rentabilidade crescente', 'Investimento', '2024-01-01', 5.00, 0.00, 5000.00, 12, '0800-000-0008', 0.00, '2024-01-01', 6, 5.00, 24, 30.00),
(9, 'Investimento em Ações', 'Plataforma para negociação de ações', 'Investimento', '2024-01-01', 0.00, 30.00, 1000.00, 0, '0800-000-0009', 50.00, '2024-01-01', NULL, 10.00, 0, 0.00),
(10, 'Plano de Previdência', 'Plano de previdência com vantagens fiscais', 'Previdência', '2024-01-01', 0.00, 10.00, 500.00, 0, '0800-000-0010', 200.00, '2024-01-01', 6, 6.00, 120, 100.00),
(11, 'Financiamento Imobiliário', 'Financiamento para aquisição de imóveis', 'Financiamento', '2024-01-01', 6.00, 25.00, 300000.00, 360, '0800-000-0011', 500.00, '2024-01-01', 12, 6.50, 240, 500.00),
(12, 'Cheque Especial', 'Cheque especial com limite flexível', 'Conta Corrente', '2024-01-01', 7.00, 10.00, 10000.00, NULL, NULL, 0.00, '2024-01-01', 0, 7.00, 12, 100.00),
(13, 'Linha de Crédito Empresarial', 'Linha de crédito para empresas', 'Crédito Empresarial', '2024-01-01', 6.50, 20.00, 50000.00, NULL, NULL, 200.00, '2024-01-01', 12, 6.50, 24, 300.00),
(14, 'Plano de Saúde Empresarial', 'Plano de saúde para funcionários de empresas', 'Saúde', '2024-01-01', 0.00, 0.00, NULL, NULL, NULL, 500.00, '2024-01-01', NULL, 0.00, 0, 100.00),
(15, 'Plano de Saúde Familiar', 'Plano de saúde para famílias', 'Saúde', '2024-01-01', 0.00, 0.00, NULL, NULL, NULL, 400.00, '2024-01-01', 0, 0.00, 0, 50.00),
(16, 'Cartão de Crédito Platinum', 'Cartão de crédito com benefícios premium', 'Cartão de Crédito', '2024-01-01', 2.00, 30.00, 10000.00, 0, '0800-000-0012', 100.00, '2024-01-01', 6, 3.50, 12, 150.00),
(17, 'Conta Digital', 'Conta digital com isenção de tarifas', 'Conta Corrente', '2024-01-01', 0.00, 0.00, NULL, 0, '0800-000-0013', 0.00, '2024-01-01', 0, 0.00, 0, 0.00),
(18, 'Empréstimo Consignado', 'Empréstimo com desconto em folha de pagamento', 'Empréstimo', '2024-01-01', 4.00, 10.00, 15000.00, NULL, '0800-000-0014', 50.00, '2024-01-01', 6, 4.50, 24, 75.00),
(19, 'Seguro de Automóvel', 'Seguro completo para veículos', 'Seguro', '2024-01-01', 0.00, 0.00, NULL, NULL, NULL, 300.00, '2024-01-01', NULL, 0.00, 0, 200.00),
(20, 'Investimento em Fundos', 'Investimento em fundos de renda fixa', 'Investimento', '2024-01-01', 0.00, 20.00, 2000.00, 0, '0800-000-0015', 0.00, '2024-01-01', 0, 3.00, 24, 50.00),
(21, 'Financiamento de Veículo', 'Financiamento para compra de veículos', 'Financiamento', '2024-01-01', 5.00, 20.00, 50000.00, 60, '0800-000-0016', 200.00, '2024-01-01', 12, 5.50, 36, 100.00),
(22, 'Empréstimo com Garantia', 'Empréstimo garantido com taxas reduzidas', 'Empréstimo', '2024-01-01', 4.50, 15.00, 30000.00, NULL, '0800-000-0017', 100.00, '2024-01-01', 12, 4.75, 24, 150.00),
(23, 'Conta Universitária', 'Conta corrente com benefícios para estudantes', 'Conta Corrente', '2024-01-01', 0.00, 0.00, NULL, 0, '0800-000-0018', 0.00, '2024-01-01', 0, 0.00, 0, 0.00),
(24, 'Plano de Previdência Individual', 'Plano de previdência para pessoas físicas', 'Previdência', '2024-01-01', 0.00, 10.00, 1000.00, 0, '0800-000-0019', 150.00, '2024-01-01', 12, 6.00, 120, 75.00),
(25, 'CDB de Liquidez Diária', 'CDB com liquidez diária e rentabilidade alta', 'Investimento', '2024-01-01', 4.50, 0.00, 2000.00, 0, '0800-000-0020', 0.00, '2024-01-01', 1, 4.50, 6, 20.00),
(26, 'Seguro de Saúde', 'Seguro para cobertura de despesas médicas', 'Seguro', '2024-01-01', 0.00, 0.00, NULL, NULL, NULL, 250.00, '2024-01-01', 0, 0.00, 0, 100.00),
(27, 'Linha de Crédito Imobiliário', 'Crédito para aquisição de imóveis', 'Crédito Imobiliário', '2024-01-01', 5.50, 25.00, 100000.00, NULL, NULL, 300.00, '2024-01-01', 12, 5.75, 120, 400.00),
(28, 'Cartão de Crédito Classic', 'Cartão de crédito com benefícios básicos', 'Cartão de Crédito', '2024-01-01', 1.50, 15.00, 3000.00, 0, '0800-000-0021', 25.00, '2024-01-01', 3, 2.00, 12, 50.00),
(29, 'Investimento em Ouro', 'Investimento com lastro em ouro', 'Investimento', '2024-01-01', 0.00, 15.00, 1000.00, 0, '0800-000-0022', 0.00, '2024-01-01', 0, 3.50, 24, 10.00),
(30, 'Financiamento para Reforma', 'Financiamento destinado a reformas', 'Financiamento', '2024-01-01', 6.00, 20.00, 20000.00, 120, '0800-000-0023', 150.00, '2024-01-01', 6, 6.00, 24, 200.00),
(31, 'Conta Corrente Universitária', 'Conta corrente para estudantes universitários', 'Conta Corrente', '2024-01-01', 0.00, 0.00, NULL, 0, '0800-000-0024', 0.00, '2024-01-01', 0, 0.00, 0, 0.00),
(32, 'Empréstimo de Automóvel', 'Empréstimo para compra de veículos', 'Empréstimo', '2024-01-01', 5.50, 10.00, 15000.00, NULL, '0800-000-0025', 75.00, '2024-01-01', 6, 5.75, 24, 100.00),
(33, 'Plano de Saúde Familiar', 'Plano de saúde para cobertura familiar', 'Saúde', '2024-01-01', 0.00, 0.00, NULL, NULL, NULL, 350.00, '2024-01-01', 0, 0.00, 0, 75.00),
(34, 'Investimento em Ações de Tecnologia', 'Investimento em ações do setor de tecnologia', 'Investimento', '2024-01-01', 0.00, 20.00, 2000.00, 0, '0800-000-0026', 0.00, '2024-01-01', 0, 6.00, 12, 30.00),
(35, 'Financiamento para Estudo', 'Financiamento para pagamento de estudos', 'Financiamento', '2024-01-01', 5.00, 15.00, 30000.00, 120, '0800-000-0027', 100.00, '2024-01-01', 6, 5.50, 36, 150.00),
(36, 'CDB de Médio Prazo', 'CDB com rentabilidade garantida para médio prazo', 'Investimento', '2024-01-01', 4.75, 0.00, 3000.00, 12, '0800-000-0028', 0.00, '2024-01-01', 6, 4.75, 24, 25.00),
(37, 'Plano de Previdência Empresarial', 'Plano de previdência para empresas', 'Previdência', '2024-01-01', 0.00, 15.00, 2000.00, 0, '0800-000-0029', 200.00, '2024-01-01', 12, 6.50, 120, 100.00),
(38, 'Cartão de Crédito Empresarial', 'Cartão de crédito para empresas', 'Cartão de Crédito', '2024-01-01', 2.50, 25.00, 20000.00, 0, '0800-000-0030', 75.00, '2024-01-01', 6, 3.00, 12, 125.00),
(39, 'Seguro Residencial', 'Seguro para proteção de residências', 'Seguro', '2024-01-01', 0.00, 0.00, NULL, NULL, NULL, 200.00, '2024-01-01', 0, 0.00, 0, 100.00),
(40, 'Empréstimo Estudantil', 'Empréstimo para estudantes', 'Empréstimo', '2024-01-01', 4.50, 15.00, 10000.00, NULL, '0800-000-0031', 80.00, '2024-01-01', 6, 4.75, 24, 75.00),
(41, 'Financiamento de Equipamentos', 'Financiamento para aquisição de equipamentos', 'Financiamento', '2024-01-01', 6.50, 20.00, 25000.00, 60, '0800-000-0032', 250.00, '2024-01-01', 12, 6.75, 36, 300.00),
(42, 'Investimento em Títulos Públicos', 'Investimento em títulos do governo', 'Investimento', '2024-01-01', 0.00, 15.00, 5000.00, 0, '0800-000-0033', 0.00, '2024-01-01', 0, 2.50, 12, 50.00),
(43, 'Plano de Saúde para Idosos', 'Plano de saúde com cobertura para idosos', 'Saúde', '2024-01-01', 0.00, 0.00, NULL, NULL, NULL, 400.00, '2024-01-01', 0, 0.00, 0, 150.00),
(44, 'Conta de Investimento', 'Conta com facilidades para investidores', 'Conta Corrente', '2024-01-01', 0.00, 10.00, 5000.00, 0, '0800-000-0034', 0.00, '2024-01-01', 6, 4.00, 24, 50.00),
(45, 'CDB de Longo Prazo', 'CDB com rentabilidade alta para longo prazo', 'Investimento', '2024-01-01', 5.50, 0.00, 5000.00, 24, '0800-000-0035', 0.00, '2024-01-01', 12, 5.50, 48, 75.00),
(46, 'Seguro de Vida para Famílias', 'Seguro de vida com cobertura para toda a família', 'Seguro', '2024-01-01', 0.00, 0.00, NULL, NULL, NULL, 350.00, '2024-01-01', NULL, 0.00, 0, 200.00),
(47, 'Empréstimo Imobiliário', 'Empréstimo para aquisição de imóveis', 'Empréstimo', '2024-01-01', 6.00, 20.00, 150000.00, NULL, '0800-000-0036', 200.00, '2024-01-01', 12, 6.25, 120, 500.00),
(48, 'Plano de Previdência para Idosos', 'Plano de previdência para aposentados', 'Previdência', '2024-01-01', 0.00, 15.00, 1000.00, 0, '0800-000-0037', 250.00, '2024-01-01', 12, 6.50, 120, 125.00),
(49, 'Investimento em Criptomoedas', 'Investimento em moedas digitais', 'Investimento', '2024-01-01', 0.00, 25.00, 1000.00, 0, '0800-000-0038', 0.00, '2024-01-01', 0, 8.00, 12, 50.00),
(50, 'Financiamento para Estudo Superior', 'Financiamento para graduação e pós-graduação', 'Financiamento', '2024-01-01', 5.50, 15.00, 20000.00, 120, '0800-000-0039', 150.00, '2024-01-01', 12, 5.75, 60, 200.00);
