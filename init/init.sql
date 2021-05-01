CREATE TABLE IF NOT EXISTS `listagem` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'filter',
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `listagem` */

insert  into `listagem` values

('3f17527e-f030-493e-a560-963ea6947c31','Padrões e técnicas avançadas com Git e Github','Padrões e técnicas avançadas com Git e Github','2021-04-30 23:33:14','2021-04-30 23:33:14'),

('457f34c3-2174-437f-901e-46c1a2e76da1','Kubernetes','Kubernetes','2021-04-30 23:33:14','2021-04-30 23:33:14'),

('89442a0c-c665-4333-b3d4-c8b4a38f36f8','Service Mesh com Istio','Service Mesh com Istio','2021-04-30 23:33:14','2021-04-30 23:33:14'),

('cd924cbe-3d9a-4900-a365-803403d0a14e','Docker','Docker','2021-04-30 23:33:14','2021-04-30 23:33:14'),

('f60c9d36-03d1-4d47-aa16-55cb9c57676c','Integração contínua','Integração contínua','2021-04-30 23:33:14','2021-04-30 23:33:14');
