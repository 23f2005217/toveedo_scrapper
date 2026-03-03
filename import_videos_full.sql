-- Toveedo Video Import SQL
-- Generated: 2026-03-02T06:55:41.065Z
-- Total videos to import: 481
-- Subsite ID: 300fccf5-1c86-41e8-a756-dd64fc2d06ab

BEGIN;

-- Video: Glad to be me - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3b351249-184a-4619-8b18-d0f0153b9dcb', 'Glad to be me - Story Time', 'glad-to-be-me-story-time-1772434541066-y7po9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038362&permalink=glad-to-be-me', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5370d79c-c065-4a8a-89a3-b3e3c6899ce3', '3b351249-184a-4619-8b18-d0f0153b9dcb', 'VuIgo2ri7zZD02210200l02P8oWtrbUObDgprXT7tAxaRiQ', 'Pwvs6IpeJfyxJsEvnrH9wf7JyIv1ycM9', 'lXwvedvfqQueoJ6sAXnSOSJT9iE3sG3qR7ngM4Kpc7Y', 'ready', 301, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Hershel's Houseboat - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('52c289b2-8aea-4019-a7b5-ea16d4ccde39', 'Hershel''s Houseboat - Story Time', 'hershel-s-houseboat-story-time-1772434541067-9q754', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038365&permalink=hershels-houseboat', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2637e72f-caea-4d2e-bbf5-617b16ed8b36', '52c289b2-8aea-4019-a7b5-ea16d4ccde39', '4z6k023i0100F302jzALEee1mM0200dFNV3wjp6SLLLnTsp01Q', 'Hpf2udCcMi3UfG6uKjsheZd101aC4DMhc', '7ckA55NTTTcE3nz1klno4Vy2EnPGxSx102LUajcqGDxQ', 'ready', 470, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Great Mitzvah Fair - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('494083da-4e31-4428-9370-16f95cc5e32d', 'The Great Mitzvah Fair - Story Time', 'the-great-mitzvah-fair-story-time-1772434541067-b16zr', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038364&permalink=story-time-the-great-mitzvah-fair', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9bac6799-0dbb-432d-94ed-8654862f496c', '494083da-4e31-4428-9370-16f95cc5e32d', 'L1W5tduJBn75M00DsLWxzl7H019c84I2s84ovtysF02g02U', 'TdXuabdhA1ZgeklQi9MQZR0000qitFbB018', 'GleO494Hm00ZD4wONh2gkbo7pR501dQg5u6anFaocYh02I', 'ready', 552, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Double Decker Purple Shul Bus - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('56957273-dacc-40ff-bc4d-56b5b248ec69', 'The Double Decker Purple Shul Bus - Story Time', 'the-double-decker-purple-shul-bus-story-time-1772434541067-p5ohe', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038363&permalink=the-double-decker-shul-bus', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f2b1343c-e4b2-4004-bff6-14fcaa398511', '56957273-dacc-40ff-bc4d-56b5b248ec69', '2delIvVfQxRNqp2HgAxYKhVOmxw7hSBuvnH32ypj5CQ', 'lUPHv01qfa3yv01ImFdW02MC00D00rOpdhhiy', 'lxhRV6Y025TrhE5CvE1W6pypBTrD6N4q1bpCIk002qW8Y', 'ready', 703, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: If I Went to the Moon - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6a40f91d-54e2-4897-b1f9-a173fad594a2', 'If I Went to the Moon - Story Time', 'if-i-went-to-the-moon-story-time-1772434541068-081mf', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038367&permalink=if-i-went-to-the-moon', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ad6112b9-1ccb-4ee2-ab1a-ba6a5979a3fa', '6a40f91d-54e2-4897-b1f9-a173fad594a2', 'Do93KEzwra01GxyoyrAC9QgrOaAJVZWK2nyhlJmOHjXg', '7xxPw2ld8KyQgkeXEaMZ7V8bGZF7Pjpm', 'uS8kuoEBn00qZ2yKBQU9GT8SmgR01lJ6amtFFpZRfpYLo', 'ready', 337, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Leah & Leibel's Lighthouse - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('bdb60631-044d-4163-aaf7-9a46fdb0b3dc', 'Leah & Leibel''s Lighthouse - Story Time', 'leah-leibel-s-lighthouse-story-time-1772434541068-wjfsv', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038366&permalink=leah-leibels-lighthouse', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d114e239-d270-498a-9c0e-3cf13ec269fa', 'bdb60631-044d-4163-aaf7-9a46fdb0b3dc', 'JwxE35p3DuBMxrkNnVWTHyJZJa00Uj68cW1wAYjTnqmo', 'D00VOapWXXcHx8JjMxNRcTsC02gqYbFmlx', 'gaBVMivXq01fjtRx1HICJQ01TK2dg1L00UnmpHY1sAiUJw', 'ready', 675, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Quarters & Nickels & Dimes & Pennies - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('4b13a524-a147-4e2a-975e-e6d54164d8be', 'Quarters & Nickels & Dimes & Pennies - Story Time', 'quarters-nickels-dimes-pennies-story-time-1772434541068-m0ief', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038368&permalink=quarters-nickels-dimes-pennies', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('05636fdc-e49b-41d4-8423-dbda0b36982b', '4b13a524-a147-4e2a-975e-e6d54164d8be', '00YQo01YJNrDTWG5OddzUtyXfbGlSWtnMlq4KNWcY9XVE', 'A01yShW6OoFw9HVpNwHQCHaxcTO52O00O5', '00CWCvrE4hvzxFS8Cw3017a67jNnninJcAKf9ZSWZZux00', 'ready', 564, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Best Shabbos on Earth - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6be26858-5dd4-4bb0-9583-2b557b703dd8', 'The Best Shabbos on Earth - Story Time', 'the-best-shabbos-on-earth-story-time-1772434541068-8srhs', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038369&permalink=the-best-shabbos-on-earth', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6a7f6982-6f34-4a59-a7ef-141ef3875fd2', '6be26858-5dd4-4bb0-9583-2b557b703dd8', 'IaWCFeF009gtNWzKj1F1BzFrqlFUaWei01MJJQP3ndDlA', 'I9d5QZbENHh6CwSdxS4hzaG008rZTk00f00', '9nnNUvqnGmF87MtxfChYwImFuFqQCRw7jZjcAvWHwi8', 'ready', 619, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dovid the Little Shepherd - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1b2d744b-60ce-4cf4-b52b-7aea5fcda8d4', 'Dovid the Little Shepherd - Story Time', 'dovid-the-little-shepherd-story-time-1772434541068-xc5us', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038370&permalink=david-the-shepherd', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5e37cef4-59f7-472b-a041-d59fdbfcd04f', '1b2d744b-60ce-4cf4-b52b-7aea5fcda8d4', 'xM5DlwnyHhw8vJHCAx3NQHWsPaB65NwoU202GQsPZWUk', 'Elpttwx7dUfRQR4Q48lBC9eVOFlDmPs02', '5R56hfm3vxw83N00Vuo02dVZNJnAU100T9PXGWdHfIpzcI', 'ready', 386, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Teeny Tiny Yarmulka - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('92db0883-3a84-4e3c-b434-cf7ca1010f2b', 'The Teeny Tiny Yarmulka - Story Time', 'the-teeny-tiny-yarmulka-story-time-1772434541068-sn0re', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038373&permalink=the-teeny-tiny-yarlmuka', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b8387851-cf54-4e63-a852-fbaef6388053', '92db0883-3a84-4e3c-b434-cf7ca1010f2b', '26ljSxt8GjSsgYbyL4tK2zGHERn02U6868u9JqHSnk028', 'mpYWOSg1X00Adq97JvxW00wM5fU1hdwO2P', '8bXPmRrPeQKDQ81V7Ey401GswZeMFFjXJpJNpQpxdv84', 'ready', 484, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Scribe Who Lived in a Tree - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c2f5bb84-3343-4d9b-876b-aa52ae8bdb9a', 'The Scribe Who Lived in a Tree - Story Time', 'the-scribe-who-lived-in-a-tree-story-time-1772434541069-1269r', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038371&permalink=the-scribe-who-lived-in-a-tree', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e8c32af0-970b-4e1d-bc69-557af5bb1384', 'c2f5bb84-3343-4d9b-876b-aa52ae8bdb9a', 'JaD00aiPn4evqtYDalKrCbMaCmzZC534YF2CogmrRajk', 'F2u1VlXwxPqs1QiOs5wUZRbRla3sfo3M', 'D7UPssAvm4SgkHvGiFv4G00T4RW7NXWvrOHBkmGMo201Q', 'ready', 631, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Dancing Shul - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('15a4da6f-35f6-417a-b16b-a3c438c8aa71', 'The Dancing Shul - Story Time', 'the-dancing-shul-story-time-1772434541069-ux9hn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038375&permalink=the-dancing-shul', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3f0c27bd-3d78-4d3a-8b54-65c09b1ea1ef', '15a4da6f-35f6-417a-b16b-a3c438c8aa71', '1a62xPKDBxanV1R01YglJ3es00zPGsJiOaD85V76Nbxt00', 'k91Y8h6IJgHDr4fXZ1GRydTWh4o2DmTj', 'hQmM4Ij01QDKNaQByZ2p2023NvzDQdZrXdj5Zto6y8w9I', 'ready', 400, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: We can find a way - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8d275836-8da0-4589-8ee4-86b7c748d4db', 'We can find a way - Story Time', 'we-can-find-a-way-story-time-1772434541069-8derk', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038378&permalink=we-can-find-a-way', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d7f1ec07-e1aa-4b3b-84af-9104e0959d03', '8d275836-8da0-4589-8ee4-86b7c748d4db', '7p01XH7eGF8PpBaDNEKEN02AdB7G577HYFoxbgzhQ3NH00', '1DGPdHKd6NHT019cfVW7CX4MPKUyldYUl', 'ttX01wCc4p8I9YcDH6c3TvLjH8pcFaHk2jjoe5o00Hiyg', 'ready', 730, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dovid comes home - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ad01e676-0bb2-4ad6-915d-f8a836e051d8', 'Dovid comes home - Story Time', 'dovid-comes-home-story-time-1772434541069-f5jnd', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038381&permalink=dovid-comes-home', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('99dc301b-e9dd-43dd-a997-1c6cebe2380c', 'ad01e676-0bb2-4ad6-915d-f8a836e051d8', 'YbrDaoavbuLc501wvBCMsqGpm93YQQZDzExIzgePZR014', '7twflHRlCuIVAoJhJLpRIxeY1bb00GdC02', 'F4FfYLTQAEIeEZihcBgbA00K01irYe02afVk9z7njk2JWo', 'ready', 707, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: A Tree Full of Mitzvos - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b2a51b2d-36e8-4209-9711-9a9acc8d4051', 'A Tree Full of Mitzvos - Story Time', 'a-tree-full-of-mitzvos-story-time-1772434541069-wzs4k', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038382&permalink=a-tree-full-of-mitzvos', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a288b322-3799-4440-8e1a-df9fd8d74ddf', 'b2a51b2d-36e8-4209-9711-9a9acc8d4051', '402V4gx8KnR02026h00pn6fC6AbW3dw00qxoQDczSfq02DCbw', 'M8xAO6nuVYgyTioNdYvmpLAyM3Qk3qRY', '2db00lb6tPgm010059DXDfaOVNrF94S5qIyYyqa7aQRYBk', 'ready', 551, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ship-Shape - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c1c1eef8-b8da-42ee-b6d8-293107e72f1f', 'Ship-Shape - Sara Blau', 'ship-shape-sara-blau-1772434541069-7n1xx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450330&permalink=ship-shape-sara-blau-89088e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1dd9b0dd-2205-4c17-b46b-574b53953514', 'c1c1eef8-b8da-42ee-b6d8-293107e72f1f', '5nPT8TXSkjT025QsrYGRKJnIcu3ixLZfPUnB2wO8oPpg', 'IppIklJlkgthp02UBlDAFYyketFEwIjn1', '00jIPtwErNxV27xH8QnRtEbkqf2Cu9o6YN0200R1BG6d6Y', 'ready', 197, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: A Trip to Mezuzah land - Story Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d13a71f7-ddb1-4c28-8475-28481521b117', 'A Trip to Mezuzah land - Story Time', 'a-trip-to-mezuzah-land-story-time-1772434541070-lgczs', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4038380&permalink=a-trip-to-mezuzah-land', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('720006a6-4d8a-4986-8136-aae1f1e69b5d', 'd13a71f7-ddb1-4c28-8475-28481521b117', 'myi1Yb49JDbbBOsve7SBr8TaQrRjNY2K69xeZ02Kn9IE', 'i9WqiDOXnFef7NyAm16l101QLx024dILGa', 'mM00LGPd21lffyv00BKXmc4t7zkwctamRZSWpA101eV11Y', 'ready', 668, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Who Needs You  - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('83808c59-2a4b-4590-85a5-bff70304f1ba', 'Who Needs You  - Sara Blau', 'who-needs-you-sara-blau-1772434541070-z69ry', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450332&permalink=who-needs-you-sara-blau-85e427', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('46b91616-9105-45c9-a877-f943293786c2', '83808c59-2a4b-4590-85a5-bff70304f1ba', 'XtNICVKZdh3O7LeVrGZyL5GyMB6LBxdOsWd2xVBHVV4', 'JIb94wCsqqm63DWBZ5HWG912i6CqFKXL', 'INpK002duacjwqHylpa4czIKM00bVKIfy5SCq1ePq1HSU', 'ready', 239, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: My Two Friends - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b20a4f2d-a61a-431d-9564-844e11150fe8', 'My Two Friends - Sara Blau', 'my-two-friends-sara-blau-1772434541070-wqbwi', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450340&permalink=my-two-friends-sara-blau-e3cef0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('125ecdec-75de-415d-81cb-7d8b715e8e06', 'b20a4f2d-a61a-431d-9564-844e11150fe8', 'daxLPBJgJJqTVjhqY5LuVgrH9HxRiOPIF02XDxbu7So8', '00ZoF7KqbtRa9kVcYpxaPtkFGscS8UbfG', 'Z01N3OE4Vj6zi7At1aRPMFfIUR5FunB32gOymWEDtGHg', 'ready', 135, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yom Tov Yummies  - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e1cb4544-3893-4e8b-8b6c-4df756db46fd', 'Yom Tov Yummies  - Sara Blau', 'yom-tov-yummies-sara-blau-1772434541070-o2vtb', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450334&permalink=yom-tov-yummies-sara-blau-203fa8', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('876832fb-a30d-4486-99e1-17b48c2eb7da', 'e1cb4544-3893-4e8b-8b6c-4df756db46fd', 'iO2mvEwTita5GdwHN3hbNiMfukfVi5HD2MeOd29mb9A', '8Rjj1tZPos8Ey021iTULz022QbTcTssXeQ', 'teLMbdzNScpg5roMmQ8ChVWS19kgUcFguLlyaOGmoGw', 'ready', 242, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Moishy turns 3 - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c449de6a-cefa-4a45-a2a1-e9f791957365', 'Moishy turns 3 - Sara Blau', 'moishy-turns-3-sara-blau-1772434541070-yqqv0', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450336&permalink=moishy-turns-3-sara-blau-f5815e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('861cd88d-b741-41c0-a4da-fb58aaf277ce', 'c449de6a-cefa-4a45-a2a1-e9f791957365', 'XK6X01trqlTBXiy3nrozyGPecmubyL9R4n89KpagCOb00', 'OlSsau1voMDiaHs73eL5ObYARHJIB3Ej', 'yw33l4vDOQ00t3cePboPTAYUb00PKgwjYfWLb6Z5PF7Ho', 'ready', 194, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Moishy's Many Mitzvos - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('23ff4d51-3da2-4f8e-82f8-1f778489c014', 'Moishy''s Many Mitzvos - Sara Blau', 'moishy-s-many-mitzvos-sara-blau-1772434541070-qcjuq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450342&permalink=moishys-many-mitzvos-sara-blau-18c8c0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f29bb6d9-ff4a-49a0-97ba-16dbca4aad73', '23ff4d51-3da2-4f8e-82f8-1f778489c014', '96X727802S71dVFPBYsuKwhVoH01lWsZdaKetdnmk3BW8', 'mqE56M2N9skQ7bp26bexYeVSioOTyuKQ', 'WFqU01xdKs2Nyz6HV5I7wghg9Dmv31TfMbHjEi0234x48', 'ready', 147, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Chumetz Hunt - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8a238dd1-56b6-41d0-86fb-9ede9b508fe9', 'The Chumetz Hunt - Sara Blau', 'the-chumetz-hunt-sara-blau-1772434541071-z4kgx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450345&permalink=the-chumetz-hunt-sara-blau-9fdbd1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5ddd394f-c2de-441a-a322-745b834e956c', '8a238dd1-56b6-41d0-86fb-9ede9b508fe9', 'aTh6AsFM7h1kIzxJ01qjHMuTBLD029MSrwuV00fMg2UINA', 'TTCpzx3eWfEyFqrkOjxvnA8ikdniVCbP', 'n1jjwH02B8v0289DPUJkG01IppUYCJrpQ012r2Z008gMLIGI', 'ready', 179, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: A Day with Moishy  - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('aedcccee-5557-4bae-8ee6-39fe22b82bab', 'A Day with Moishy  - Sara Blau', 'a-day-with-moishy-sara-blau-1772434541071-6xgzd', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450348&permalink=a-day-with-moishy-sara-blau-1a749e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('406cc23c-b2d5-48f0-a398-7785d8fc5d39', 'aedcccee-5557-4bae-8ee6-39fe22b82bab', 'AZTf8YKjO9Zr3600VkyaZom01GHCa6Axxyp00lNecU01UAo', 'Mrou1NMIvbgYcvl5jkL02NdG02jJb2fsSt', 'x5A01iLt2sRi1iDtb1J6p3ZpF02EsrdEzjqcdMi00f3eLI', 'ready', 229, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Beis Hamikdash - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ab79d568-5423-42dc-b45c-0b6951f25a94', 'The Beis Hamikdash - Sara Blau', 'the-beis-hamikdash-sara-blau-1772434541071-mhitc', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450350&permalink=the-beis-hamikdosh-sara-blau-26b408', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('57f6b482-e1ec-402d-a588-0b86a4d6274e', 'ab79d568-5423-42dc-b45c-0b6951f25a94', 'YNP762XrgTVm1UoFgk1b2DuGA69w4Z3Mx6tB1HcxFtI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Oh How I Wish  - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2444d30e-3551-41d9-8acb-362547d3a309', 'Oh How I Wish  - Sara Blau', 'oh-how-i-wish-sara-blau-1772434541071-ym7mz', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450353&permalink=oh-how-i-wish-version-3-e37190', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('bd896861-f5ff-466b-ac90-6677fa48d326', '2444d30e-3551-41d9-8acb-362547d3a309', '64y2TXqSu2ZUDfaOPTjxANWDGh8fUVKA44cXR00PzqQA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Midos Power Kids - Boruch the Perfectionist
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1338aa3a-f6b3-4f45-b9de-f47c1057952b', 'Midos Power Kids - Boruch the Perfectionist', 'midos-power-kids-boruch-the-perfectionist-1772434541071-v0rx3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/midos-power-kids-category?cid=4516935&permalink=05-boruch-the-perfect', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cba33b1f-41f5-4ea4-a408-c18d0b81d8f4', '1338aa3a-f6b3-4f45-b9de-f47c1057952b', 'sq01JN1bRqlxxtSq9faoD3XweSfiiNONbQkIYc4Zn014Q', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Midos Power Kids - Emunah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8d7209d5-6ca9-4913-ab26-2973415fd93a', 'Midos Power Kids - Emunah', 'midos-power-kids-emunah-1772434541071-zoor3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/midos-power-kids-category?cid=4449361&permalink=01-sonia-the-screamer', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cf9bdea9-601e-4670-86c0-8d07d198ef49', '8d7209d5-6ca9-4913-ab26-2973415fd93a', 'XiYVlbGtaT68bQuaruF7uFEYDUlWvUktGpVSIUJ68Oc', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: I Can Have Savlonus - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('72a92fd8-dc0f-47ab-9bfe-f92c7b72d160', 'I Can Have Savlonus - Sara Blau', 'i-can-have-savlonus-sara-blau-1772434541071-qthme', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450355&permalink=i-can-have-savlonus-version-3-29d4c2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('af909701-fa3a-4a03-ab91-f8210a8640fe', '72a92fd8-dc0f-47ab-9bfe-f92c7b72d160', 'An1n8uGT8ASWF02AU2QpDuTZrI1omUcx6wpVIFbYQyg8', NULL, '6K74Y6HXsJeM01TfpSlm02Sa5cuXbMkzcW700Bvv3dQ5Wg', 'ready', 433, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: A To Z Meant To B - Sara Blau
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7e6ca9c7-0b7d-4331-8249-c07c78d620e2', 'A To Z Meant To B - Sara Blau', 'a-to-z-meant-to-b-sara-blau-1772434541072-y0tby', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-story-time?cid=4450357&permalink=a-to-z-meant-to-b-version-3-08649f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e612f3ae-d9b2-4d3e-9839-e256ee27b9d2', '7e6ca9c7-0b7d-4331-8249-c07c78d620e2', 'FB5vYdrh9g8TUEwe01lkxwv01kcFunvrvarn5vv3OI5900', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: On a Roll - Painting
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('98840e7c-6a6f-4b2b-8e0f-24638310c294', 'On a Roll - Painting', 'on-a-roll-painting-1772434541072-ygjam', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-on-a-roll?cid=4029501&permalink=on-a-roll-1mp4-796023', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4eb6bc8d-2b8b-4406-ad03-2bd30297c13b', '98840e7c-6a6f-4b2b-8e0f-24638310c294', 'hxCWSVwCp7fVAzFrQfL8n2JyL4H3nRhJTXbca01YbgVc', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Boruch makes a simcha - Kunda (video)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('5745d459-6a66-4481-925f-47b4f0157be7', 'Boruch makes a simcha - Kunda (video)', 'boruch-makes-a-simcha-kunda-video-1772434541072-xerz5', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmuel-kunda-video-collection?cid=4038324&permalink=boruch-makes-a-simchamp4-574c47', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('37bf66b2-2f1a-4fa5-a3d2-28d4edf997a4', '5745d459-6a66-4481-925f-47b4f0157be7', 'K02PG0002y1tT00jmh7RWWT01ZAJj01jlpoBcxQ1UJXWlFRUM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Midos Power Kids - Bitachon
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('92c86901-182e-4284-9659-6f7d7e17d6d4', 'Midos Power Kids - Bitachon', 'midos-power-kids-bitachon-1772434541072-p29nt', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/midos-power-kids-category?cid=4449358&permalink=02-moishy-the-voiceless', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('22cdc1d2-c24e-492c-9753-a6682419a1f8', '92c86901-182e-4284-9659-6f7d7e17d6d4', 'u3SCLeQ5cza1jElW1yTu01U6zn7ToTtnzFZ71iDUHOyY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Young Avraham
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('12459f97-016c-49b0-b1a6-91c37c746ebf', 'Young Avraham', 'young-avraham-1772434541072-yw7ea', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/tanach-tales?cid=4449413&permalink=young-avraham-e155dd', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('424dea83-8f86-4afe-b5a5-88828eecd129', '12459f97-016c-49b0-b1a6-91c37c746ebf', 'FHGBgtGE4YpKBZN0102aI9BBsEbLNupJc25gHDmar4V2M', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shimshon Hagibor
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('597a0d08-5b9b-4a28-aa50-89c85f1bc43a', 'Shimshon Hagibor', 'shimshon-hagibor-1772434541072-1574l', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/tanach-tales?cid=4449410&permalink=shimshon-part-1-72ee71', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('8c5fe204-1986-4802-8836-9671dbcc4669', '597a0d08-5b9b-4a28-aa50-89c85f1bc43a', 'bFA4zkZWSCBvQH00200a1fXPQ2OoJT1TP3N01SKuclgn2I', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: On a Roll - Tinfoil
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f57bca4f-7352-42bc-ae90-f75ec611e732', 'On a Roll - Tinfoil', 'on-a-roll-tinfoil-1772434541073-udclz', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-on-a-roll?cid=4029502&permalink=on-a-roll-ep-2-tinfoil-v1mp4-9ebc44', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('682bcc76-f6db-4730-bcf8-e7ea3afe9f1c', 'f57bca4f-7352-42bc-ae90-f75ec611e732', 'omBs9v82HvdZX015W7F00jbS6jAA1qa2t377SyWcXJoCk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: A Light For Greytowers (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c8e38593-c0f7-4d34-bdb0-abcb441d42df', 'A Light For Greytowers (for women and girls)', 'a-light-for-greytowers-for-women-and-girls-1772434541073-2gaq3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449469&permalink=a-light-for-greytowers-wamp4-ef25bd', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1b7c8017-52e5-4960-8dcd-43cd32de3231', 'c8e38593-c0f7-4d34-bdb0-abcb441d42df', 'P5tixAU9FamP01W01bzxMMsMVhxvpUK6ChQYZCXQj5BIs', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Midos Power Kids - Ometz Lev
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c145a717-4b3a-4f38-a6a8-8e774fd75d44', 'Midos Power Kids - Ometz Lev', 'midos-power-kids-ometz-lev-1772434541073-wduzo', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/midos-power-kids-category?cid=4449356&permalink=midos-power-kids-ometz-lev', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0b653e60-c2d9-4f27-a432-e94e4b02432b', 'c145a717-4b3a-4f38-a6a8-8e774fd75d44', 'SxM8tD9f2bTbOOCKkyLPb79y6Oc4Soe759AtyqnEEBo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Lost Treasure
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f695eeef-01aa-475e-aa9d-6dba008dcb77', 'The Lost Treasure', 'the-lost-treasure-1772434541073-1vqil', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/tanach-tales?cid=4449408&permalink=the-lost-treasure-578f14', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('316a6ce1-039e-49bd-bd9f-3ff6baf3f8d0', 'f695eeef-01aa-475e-aa9d-6dba008dcb77', 'cwCFAXruZjyjV00obz00Ehj02wZmwKrSXKKAepsC6JUogw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Talking Coins - Kunda (Video)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('720152c1-b211-461a-832b-f790d7fb93c3', 'The Talking Coins - Kunda (Video)', 'the-talking-coins-kunda-video-1772434541073-bamr8', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmuel-kunda-video-collection?cid=4038327&permalink=talking-coins-final-buildmp4-1e8919', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('8a22c86e-c528-4915-adfe-7e0ad47d5f01', '720152c1-b211-461a-832b-f790d7fb93c3', 'BLblXW02Rc2bPzP4Tv9S95as01YQditSCeNaKUUalBkXw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Heart That Sings
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('0df9bacc-eae5-4579-ac75-c9bfaa6e86d3', 'The Heart That Sings', 'the-heart-that-sings-1772434541073-ckg3a', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449467&permalink=the-heart-that-singsmp4-9803e2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f5c89344-80e5-472d-88bf-4471412fd687', '0df9bacc-eae5-4579-ac75-c9bfaa6e86d3', '02zjZRV01lOAuXdMd1kPhlCPJ8fYXHd00wlKwvyZf4KFfY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: A Ton of Mon - Kunda (Video)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('261ca516-bf39-406f-8a1f-dce77ab4a2ce', 'A Ton of Mon - Kunda (Video)', 'a-ton-of-mon-kunda-video-1772434541073-xygy0', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmuel-kunda-video-collection?cid=4038325&permalink=a-ton-of-mon-bc3bfb', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('8cd83da4-a73b-480d-b03c-4898c5f0fdbc', '261ca516-bf39-406f-8a1f-dce77ab4a2ce', 'p7lziyHoSdDEIGQsHnVcCAiRfq02Bf7amBi6ra1UFkq8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: On a Roll - Tissue Box Card
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b2441719-a6ba-4268-96bf-e1ae24232ede', 'On a Roll - Tissue Box Card', 'on-a-roll-tissue-box-card-1772434541074-e9wuo', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-on-a-roll?cid=4029503&permalink=on-a-roll-tissue-box-cardmp4-0cbe2f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3b6ffae8-a198-4476-a854-14ebce56a5ee', 'b2441719-a6ba-4268-96bf-e1ae24232ede', '8cYzP001EPIQ01m8yAF4dGxQe1Z4CgmSO8GjtXrP1gpTw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Megillas Lester
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('5bc82450-3cb8-4eaa-917e-89392b5b2fc4', 'Megillas Lester', 'megillas-lester-1772434541074-cdg98', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/tanach-tales?cid=4449417&permalink=megillas-lestermp4-b593b2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ef230fc0-a1f8-44a1-93bb-60b5cbf563df', '5bc82450-3cb8-4eaa-917e-89392b5b2fc4', 'cFeEG6b7pRZIpcgY2GqSGOi5XdzDm3KcAuDnSVT8dOw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Operation Candlelight (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9f9df627-83a2-497f-b99c-8cbb7b4a2c8d', 'Operation Candlelight (for women and girls)', 'operation-candlelight-for-women-and-girls-1772434541074-piv19', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449471&permalink=operation-candlelight_1-wamp4-3a9018', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9599f408-fde2-4be9-8dbe-6e2aaaae64ff', '9f9df627-83a2-497f-b99c-8cbb7b4a2c8d', 'MPKAemrzJCAmaSY4iiq4K02qaG2pDuGiuPnAwc02qHOgM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: On a Roll - Finger Puppets
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c366c6bd-4b0a-4377-8f0f-3853e9c1cfa3', 'On a Roll - Finger Puppets', 'on-a-roll-finger-puppets-1772434541074-iwd3r', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-on-a-roll?cid=4029504&permalink=on-a-roll-ep-4-finger-puppet-v1mp4-589818', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3b29789e-292f-4a53-ac20-25436ef8bbe3', 'c366c6bd-4b0a-4377-8f0f-3853e9c1cfa3', 'Rv8U01dBQe1Dx02oDFuyNd02Au6WFfwt3oZ84a01Qh46J02M', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Royal Rescue - Kunda (video)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ec7e8e6a-e5b4-4f35-af1d-f0928dd32c9e', 'The Royal Rescue - Kunda (video)', 'the-royal-rescue-kunda-video-1772434541074-rdved', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmuel-kunda-video-collection?cid=4038328&permalink=the-royal-rescue-1mp4-907412', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ab92da75-bf8b-4530-a7d6-af8f1c7ec71a', 'ec7e8e6a-e5b4-4f35-af1d-f0928dd32c9e', 'dNNxtctxh9p4UAGXj2uHm61K22JQoxcQnLHKDgiQDH00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: When Zaidy was young #2 - Kunda (video)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b9a4417e-7ff9-4fcf-8b24-729f29fb9e81', 'When Zaidy was young #2 - Kunda (video)', 'when-zaidy-was-young-2-kunda-video-1772434541074-y8b8v', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmuel-kunda-video-collection?cid=4038329&permalink=zaidy-2mp4-536718', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('41a007c6-85f6-40e8-8810-f302c8972002', 'b9a4417e-7ff9-4fcf-8b24-729f29fb9e81', 'fwEnMHN6QWNsiB7hpTvSejifuKe02JV400sNFPyEfThLU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: On a Roll - Slime
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('62c08bef-c79b-4698-bb83-a9a1dfc0eaf9', 'On a Roll - Slime', 'on-a-roll-slime-1772434541074-faymg', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-on-a-roll?cid=4029505&permalink=on-a-roll-ep-5-slime-v1mp4-28bf57', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1e58d040-1fb2-4491-9688-790605ec4acd', '62c08bef-c79b-4698-bb83-a9a1dfc0eaf9', 'NHDjfBNl7MYbgRSysps3xG00tfPDLYzxf01xpGQrHZYjw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Young Detectives of Tzfat Eps 1 - Stolen Souls
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('67ef2e54-44c8-4143-a7c3-c0fef37a4d9c', 'Young Detectives of Tzfat Eps 1 - Stolen Souls', 'young-detectives-of-tzfat-eps-1-stolen-souls-1772434541074-o4tcw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449474&permalink=young-detectives-of-tzfat-eps-1-stolen-souls-dd1b64', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c8f9dbd4-fb47-4a81-9f64-57179fa1d7cf', '67ef2e54-44c8-4143-a7c3-c0fef37a4d9c', 'E01ZAWp1M3aUeqfD01WLvDgk7YOqSBlyYh00jaHDeyl3Hk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Young Detectives of Tzfat Eps 2 - Copycat
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c015348b-eaf7-44da-80c5-4f9a8ee05261', 'Young Detectives of Tzfat Eps 2 - Copycat', 'young-detectives-of-tzfat-eps-2-copycat-1772434541075-sthdb', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449476&permalink=young-detectives-of-tzfat-eps-2-copycat-ef484f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('82a833bb-4076-4ed9-8ae8-a6b10e9b1e21', 'c015348b-eaf7-44da-80c5-4f9a8ee05261', 'KcFYsnq1rCNnc01dWxpYporDNYmyDZ382NK8ewib00KZ4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: On a Roll - Duct Tape
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('4bff8e75-b920-46f9-aa68-578c83726bed', 'On a Roll - Duct Tape', 'on-a-roll-duct-tape-1772434541075-7i9b0', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-on-a-roll?cid=4029506&permalink=on-a-roll-ep-6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('abce5708-b79b-4a62-81cc-decf8974c11f', '4bff8e75-b920-46f9-aa68-578c83726bed', '00IyQyGte01LKqYGg00Q3mOw3fW8MOuvmED18IGTxTNg38', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Purim: The Lot (recomended for children 8+)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('60c1f0e6-16cc-4932-b2f7-0b12f7b5b86e', 'Purim: The Lot (recomended for children 8+)', 'purim-the-lot-recomended-for-children-8-1772434541075-ktyjs', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/tanach-tales?cid=4449386&permalink=short-full-83b776', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('99de8f23-b397-4d6d-8a9b-ddbb0837ddd8', '60c1f0e6-16cc-4932-b2f7-0b12f7b5b86e', 'dXK4OipcGYuyyqJot8LoF00luyfVwsVtGwjI239ECkgw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy #1 (audio)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('56cd7daa-2ee1-4d8f-bf30-15a8c08b4d49', 'Uncle Moishy #1 (audio)', 'uncle-moishy-1-audio-1772434541075-4rnmo', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-audio?cid=4038528&permalink=uncle-moishy-1-audiomp4-0f5227', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e5b72a22-8e2a-4e0f-a183-fefbe6ffebe0', '56cd7daa-2ee1-4d8f-bf30-15a8c08b4d49', 'ojLqjThzbhL4fG1qGCZf6civzPObmgtMq02UkQ4vD7hA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Portraits In Faith
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9cd88d16-4443-43bf-af65-fef5afed89c1', 'Portraits In Faith', 'portraits-in-faith-1772434541075-qh5ii', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449479&permalink=portraits-in-faithmpg-ac41d0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d69ea959-330e-44c0-bf9a-313e71743c87', '9cd88d16-4443-43bf-af65-fef5afed89c1', 'KjBzEuaE7snvWQvgkzX83f7wvf00WlkAeiZ01BWuXNGR8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy #2 (audio)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d9205813-a800-404f-a4e9-d45a1822661b', 'Uncle Moishy #2 (audio)', 'uncle-moishy-2-audio-1772434541076-u75lh', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-audio?cid=4038527&permalink=uncle-moishy-2-audiomp4-2b9935', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('01d46672-fad4-436c-b659-9b853377eb89', 'd9205813-a800-404f-a4e9-d45a1822661b', 'J801h00ELxjGUapNPpfJPW7nAhtKaA02OQT2Onk1aRaBXA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy #3 (audio)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('0689fac0-efae-4e50-be4a-46bfb0607b07', 'Uncle Moishy #3 (audio)', 'uncle-moishy-3-audio-1772434541076-j6445', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-audio?cid=4038526&permalink=uncle-moishy-3-audiomp4-4fabfc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('bb098bb8-73a9-4a2d-a95a-92228abe86bd', '0689fac0-efae-4e50-be4a-46bfb0607b07', 'XwECNmmFi027bl02GyEznzaWN1ZecexLESSRqZ2AEz01fE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Roots Journey Home
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b6bae367-80e3-486d-87bb-3923dd6a60fc', 'Roots Journey Home', 'roots-journey-home-1772434541076-q4a86', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449481&permalink=roots_journey_homempg-6748c2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('00c95571-eb27-4e60-98d5-82cd3f0554bb', 'b6bae367-80e3-486d-87bb-3923dd6a60fc', 'qHAgjwGo4io6TbcSxJQlcQcfhBlE36n004P02Gkeuuvlo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy #4 (audio)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3422f7a4-a7ca-45ad-b602-ab129ea94bab', 'Uncle Moishy #4 (audio)', 'uncle-moishy-4-audio-1772434541076-32jzn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-audio?cid=4038525&permalink=uncle-moishy-4-audiomp4-4bd068', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3ac60708-2d7c-4877-aa13-4d82ae25d49d', '3422f7a4-a7ca-45ad-b602-ab129ea94bab', '5GTXeq8L02CrzaMSrFWELfp35wjOJ01EdzOmHH4K7Gjxk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Barons and Bankers (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c9524369-e0de-4a1a-9265-80baac52cfcb', 'Barons and Bankers (for women and girls)', 'barons-and-bankers-for-women-and-girls-1772434541076-wtvsx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449495&permalink=barons-and-bankersmp4-395481', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('117189c8-f412-4933-847f-369a1b6fcdfa', 'c9524369-e0de-4a1a-9265-80baac52cfcb', 'TWctvlGHmVG00xbqyOBJ8i100fV02phEjk3lo02oE020000bJ00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy #5 (audio)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6a0b8c18-9a1c-4173-b845-42b376120fe8', 'Uncle Moishy #5 (audio)', 'uncle-moishy-5-audio-1772434541076-dbpaq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-audio?cid=4038524&permalink=uncle-moishy-5-audiomp4-c2b97b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e094ecda-0690-4b26-b3cd-ac9b5d254197', '6a0b8c18-9a1c-4173-b845-42b376120fe8', 'EcZE539llWGsrB1mmjFGE9PcRlI5uiGPb54hBc19d6M', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: English to a T (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1c1c6eaf-d99d-4695-803a-4804ca39a780', 'English to a T (for women and girls)', 'english-to-a-t-for-women-and-girls-1772434541076-p42gd', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449497&permalink=english-to-a-tmp4-e68bcb', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('12ad922c-1aed-4361-90a0-d253f2a42449', '1c1c6eaf-d99d-4695-803a-4804ca39a780', 'oAKeSBmKT62dRxhTNvyU7HAByZUfsR9QWdlCdJ1oAhY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Kingdom of Aldecot (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cbc0597a-d898-48eb-bd6f-c22fa873599e', 'The Kingdom of Aldecot (for women and girls)', 'the-kingdom-of-aldecot-for-women-and-girls-1772434541076-koos2', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449500&permalink=aldecotmp4-67e406', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9233999b-9b1b-4c74-858c-72ea092da7d9', 'cbc0597a-d898-48eb-bd6f-c22fa873599e', 'PVMlMLvvGiZwwXiopmkk9E00pijqyzP00bPB3Mzqzyv5A', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy #6 (audio)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1482bc07-9913-40e8-b812-726be9e560fb', 'Uncle Moishy #6 (audio)', 'uncle-moishy-6-audio-1772434541077-9x5ws', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-audio?cid=4038529&permalink=uncle-moishy-6-audiomp4-5468de', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3ba7df36-7b91-4386-a4db-1ad58d74a51c', '1482bc07-9913-40e8-b812-726be9e560fb', 'I01EvLgT5BQqSub3MxH2gz5ZABHAyNfFFGxtgieh8TSA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shtetl (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('23ff4c54-2641-4983-930c-2c7b02878554', 'Shtetl (for women and girls)', 'shtetl-for-women-and-girls-1772434541077-gbypw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449502&permalink=shtelmp4-f158aa', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ac17946b-c885-4d99-808d-0dafae1684df', '23ff4c54-2641-4983-930c-2c7b02878554', 'i2Vma8JCR941c2mz47iq01heebGaEDbx2hljewWjcQH4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Nafshi - Chanale
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('52163512-ab41-4fff-bacf-51334aa1467e', 'Nafshi - Chanale', 'nafshi-chanale-1772434541077-ju7qb', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449852&permalink=nafshi-chanale-95ab48', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('56e6c0fd-6d54-4395-a1a8-0465992e95fe', '52163512-ab41-4fff-bacf-51334aa1467e', '02p7IhmyEHXrL57ejnmk01vsYzRjt00wcoEvFVnjgFABZo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Attic (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6a15727b-fbee-48ae-8b63-dd476559fdcf', 'The Attic (for women and girls)', 'the-attic-for-women-and-girls-1772434541077-mu1it', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449504&permalink=the-attic', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('41f132b7-5204-49b3-bb27-6dfab0f785b1', '6a15727b-fbee-48ae-8b63-dd476559fdcf', 'qMvIKWg33v9YE7vIiDx4NKUSKdXbz72TwjuYG700WttQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Don't Let Go - Chanale
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3cf73000-5cda-4d50-8805-410b3851b57c', 'Don''t Let Go - Chanale', 'don-t-let-go-chanale-1772434541077-pi2wt', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449854&permalink=dont-let-go-chanale-302e12', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cf50eb4c-f317-4f3a-a3d4-07b9a4e7b909', '3cf73000-5cda-4d50-8805-410b3851b57c', 'Ry5C5MtpRHCgNoseWUWjdaaa9oHcQQrEaMS2DSLSJLg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Katalina (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('072db33b-adcb-4f2a-870b-79616c33f4cf', 'Katalina (for women and girls)', 'katalina-for-women-and-girls-1772434541078-0bonp', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449507&permalink=katalina_hdmp4-a523de', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('73b1c421-95e4-4fd1-a5c5-f569d3f7979b', '072db33b-adcb-4f2a-870b-79616c33f4cf', 'RPyENMrCx8c29ff4DCAw8lmo003n4lDQ2Xlk00g8tRusU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Crown of Creation - Chanale
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('58cf8f7e-d373-49fc-98b1-c3d2921d20f7', 'Crown of Creation - Chanale', 'crown-of-creation-chanale-1772434541078-tmzko', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449858&permalink=crown-of-creation-chanale-5ef93f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a680fefd-fe4d-4d32-a597-ddb6840555d2', '58cf8f7e-d373-49fc-98b1-c3d2921d20f7', 'SMuYULsls46e4dQg00DZGJp1lRCSFMndozIr00avFiXT4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Chaptzem - Chanukah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('38f3dcaf-db91-4ca9-b8c3-1549a4cb5c36', 'Chaptzem - Chanukah', 'chaptzem-chanukah-1772434541078-qdv29', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/chaptzem-collection?cid=4029332&permalink=chaptzem-chanukah', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('03673efa-33d6-4e88-adf5-e1e8ef41330b', '38f3dcaf-db91-4ca9-b8c3-1549a4cb5c36', 'sQtohivQjtYHAeAJ8s58WUFUF6Keqo2mu01Wx7iyF6M4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Jinji (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d4956e4e-3082-4256-b79e-4d90faa59250', 'Jinji (for women and girls)', 'jinji-for-women-and-girls-1772434541078-pb17h', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449509&permalink=jinjimp4-0b42d0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cb70cc03-b481-4ba0-bca0-37a63b8a6d62', 'd4956e4e-3082-4256-b79e-4d90faa59250', 'l7uSOhpZ4pxOJjDNSgYe6LCCvEYWrRDVK4VtVrFbrVo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: City Streets - Chanale (A-Cappella)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('eeb33171-ec79-41d8-b742-c1765d414df6', 'City Streets - Chanale (A-Cappella)', 'city-streets-chanale-a-cappella-1772434541078-h1tij', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449865&permalink=city-streets-chanale-a-cappella-f20dac', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4df007d3-e2ab-4bf0-ac1f-489bd3bafb88', 'eeb33171-ec79-41d8-b742-c1765d414df6', 'ietsuPB4mAOlQyh1C01Uf1pRqE7g9cLmqthgiOzuDmLU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Chaptzem - Gemach
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('868d4063-7208-4361-a2f5-bb9f15b9a579', 'Chaptzem - Gemach', 'chaptzem-gemach-1772434541078-ve3gh', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/chaptzem-collection?cid=4029333&permalink=chaptzem-2-coming-soon-0f04f9', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f2269061-e175-454b-b58d-67fbd9667658', '868d4063-7208-4361-a2f5-bb9f15b9a579', 'StoPvriV8Vt8QN01d011z6iWF6ihsiG02Ka02fOPjDJK302s', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Band Man (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('99168a0a-4f7b-4a7e-8b67-07d0264fa543', 'The Band Man (for women and girls)', 'the-band-man-for-women-and-girls-1772434541078-4pzdw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449512&permalink=the-band-manmp4-ec5b5c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a8df1e54-9280-4f29-864e-c4cce69e3655', '99168a0a-4f7b-4a7e-8b67-07d0264fa543', 'LPR61J6nhCzGLC02301p59hfpTr00ir00MEs7IWJVYyEdtY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Besiyata Dishmaya - Chanale
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('311b0412-5670-48ec-866b-58cb972a9f61', 'Besiyata Dishmaya - Chanale', 'besiyata-dishmaya-chanale-1772434541079-axx3i', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449870&permalink=besiyata-dishmaya-chanale-17bd7a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('432f6120-3af2-4e91-91e0-4414f9c6ebc0', '311b0412-5670-48ec-866b-58cb972a9f61', 'v8QovwsYY01awZLi2mxxz02iox3vbp0100vu02WJbngCS00Ec', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Chaptzem - Eiruv
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('971755b3-a536-4a65-8d26-a8cac4c80fdc', 'Chaptzem - Eiruv', 'chaptzem-eiruv-1772434541079-veaxy', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/chaptzem-collection?cid=4029334&permalink=chaptzem-3-f35d96', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cc5ebe44-81c4-4dc3-842a-a1de08a7e3dd', '971755b3-a536-4a65-8d26-a8cac4c80fdc', 'wIyoNNk019I01M76F5TeIaPQqkx4RHpe302cEZh02kBt9dQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ragamuffin (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('09115d3d-7a15-4cef-8442-f0b67e7df24b', 'Ragamuffin (for women and girls)', 'ragamuffin-for-women-and-girls-1772434541079-rc2oi', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449515&permalink=ragamuffin_hdmp4-77bec1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('fce9bed0-440f-4a91-9026-1a69df6a95e6', '09115d3d-7a15-4cef-8442-f0b67e7df24b', '00iMd00hxmiIy9wUqoiLWilOJwaVT2Kb5f01KUKC0102Qcq4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: I am the Land - Chanale
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('532660d6-e1aa-4a80-8183-ceb9b4e567c2', 'I am the Land - Chanale', 'i-am-the-land-chanale-1772434541079-r0gxn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449873&permalink=i-am-the-land-chanale-962ae5', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b2cf8cc7-c2f0-45cf-9dc4-dcf10636d3b9', '532660d6-e1aa-4a80-8183-ceb9b4e567c2', 'ad7j1dgMiZpeXqyEJw00ISQyk7702qBpO5TnRftc9FBbM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Go For It! (for women and girls only)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b66971ed-5597-4685-82ba-5114cb35a4f9', 'Go For It! (for women and girls only)', 'go-for-it-for-women-and-girls-only-1772434541079-l726h', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449517&permalink=go-for-it-e82d11', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0e07815d-91fa-4630-bbec-b2dd5b7625b5', 'b66971ed-5597-4685-82ba-5114cb35a4f9', 'fwovghaglyFgcZ0100yUMMkQq6Zt9M02nNllGQxN64vuQc', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: It's All My Mother - Chanale
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a76f2732-b8f1-4f1c-8e0a-60d11ae82526', 'It''s All My Mother - Chanale', 'it-s-all-my-mother-chanale-1772434541079-7yaik', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449876&permalink=its-all-my-mother-chanale-0db0b3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3db2303d-048c-48ce-bb06-6d3fd82e45af', 'a76f2732-b8f1-4f1c-8e0a-60d11ae82526', 'da6I01Ca00bNBcs4z8cKsx02KNNdC1Vp6Bafwz7xiD7fSM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: That's My Nanny (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f4ad7b9d-420d-4782-b2c8-78af81911eb6', 'That''s My Nanny (for women and girls)', 'that-s-my-nanny-for-women-and-girls-1772434541079-998x7', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449519&permalink=thats-my-nannymp4-82207b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('044e40ca-4e43-40bc-8c87-009156da4aa8', 'f4ad7b9d-420d-4782-b2c8-78af81911eb6', 'qbC2JQNYKqlozngmzTt01zzsYjzoPFA2lqe6ra5mae02A', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Taking Over My Heart - Chanale
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('90731bd5-79a3-4f5d-8e9c-37250b87085a', 'Taking Over My Heart - Chanale', 'taking-over-my-heart-chanale-1772434541079-p0twq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449879&permalink=taking-over-my-heart-chanale-2319e7', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('28a00701-07dd-4eae-b8b4-ceddda05c9bd', '90731bd5-79a3-4f5d-8e9c-37250b87085a', 'KMwcY02xxqmvu5StntOxnXwzx01N00rAnewXHZ8pNJsOek', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rachel's Place Productions - Behind the Scenes (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('845e545e-ef59-4d16-9e3e-bde023331ee8', 'Rachel''s Place Productions - Behind the Scenes (for women and girls)', 'rachel-s-place-productions-behind-the-scenes-for-w-1772434541080-00nhl', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449524&permalink=making-of-my-nannymp4-808328', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b21db2ff-706d-46bc-9932-6f879892a9a8', '845e545e-ef59-4d16-9e3e-bde023331ee8', 't5oeRJ01mwjaHKBfEXBxJUZGHqoqS3gQK01H8r02uumVKo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Sister Sister - Chanale
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('777bcc74-f44f-4a8f-ad0c-9f1ca7b34224', 'Sister Sister - Chanale', 'sister-sister-chanale-1772434541080-gxk3i', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449882&permalink=sister-sister-chanale-a7d81b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ea6a9235-0be3-4f20-bb1b-248454546c88', '777bcc74-f44f-4a8f-ad0c-9f1ca7b34224', 'zDN7vLsy01uhJI00K64JSUJN01YnOnDWdGGkYlbGvFSW02w', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tov Tov - First Day
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('001bb2bb-4362-4d08-a26d-d3b733789efe', 'Tov Tov - First Day', 'tov-tov-first-day-1772434541080-agoyv', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tov-tov?cid=4038493&permalink=tov-tov-first-day-96ef27', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('81c76e80-70c8-465b-9fe2-4172523a5e11', '001bb2bb-4362-4d08-a26d-d3b733789efe', 'keCQ86K52g5EE02bLSnWDTEl01YWiF9SrKP5HZRWaUVg8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tov Tov - Stunt Matzah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('0d889c9b-9608-40b4-a627-c78d459c5f0e', 'Tov Tov - Stunt Matzah', 'tov-tov-stunt-matzah-1772434541080-uxr91', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tov-tov?cid=4038494&permalink=tov-tov-stunt-matzah-bb83de', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1344dcfb-a2e9-4d18-8c98-938b261504d1', '0d889c9b-9608-40b4-a627-c78d459c5f0e', 'YYbB7Cqx9RaR4qcr9moreE6EF01MeLmzY2hzIS8gRCkc', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Am Yisrael Chai - Chaya Kogan
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ae249511-c7ec-4cdb-93dc-14054b9380c5', 'Am Yisrael Chai - Chaya Kogan', 'am-yisrael-chai-chaya-kogan-1772434541080-54gtk', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449904&permalink=am-yisrael-chai-chaya-kogan-900239', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3311553f-137a-4cd6-9323-9133748cf5e5', 'ae249511-c7ec-4cdb-93dc-14054b9380c5', 'mKVQ2pj5lnnnvcpagyuE6WowHDlJphptKwSQlSn1dBU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Power Is You- Chaya Kogan
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('84337060-7474-4ccd-880e-51c218affda9', 'The Power Is You- Chaya Kogan', 'the-power-is-you-chaya-kogan-1772434541080-9e060', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449906&permalink=the-power-is-you-chaya-kogan-2b04fa', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('23eeae31-18aa-409e-8a94-a542ae78dbe1', '84337060-7474-4ccd-880e-51c218affda9', 'Tyq02UQQ600Kqu2gQS02kFmq2BSd4xRRre8JJcGqIgWP9o', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tov Tov - No Voice
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8031f9f3-6628-452d-a797-66afaf32689c', 'Tov Tov - No Voice', 'tov-tov-no-voice-1772434541080-iyy1q', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tov-tov?cid=4038496&permalink=tov-tov-no-voice-28c307', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('7ba393ed-6b6f-4c3b-93dc-d50461cae57c', '8031f9f3-6628-452d-a797-66afaf32689c', 'ikTI9xZT31kt3iKrlF02khOLMenpvSS2jqeHfTNYKWOI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mimmy & Simmy - Sharing a Sunshine Umbrella (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f2e35629-d18c-4d74-8fe0-3e0a1f8df590', 'Mimmy & Simmy - Sharing a Sunshine Umbrella (for women and girls)', 'mimmy-simmy-sharing-a-sunshine-umbrella-for-women--1772434541080-wm28g', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449560&permalink=mimi-and-simi-7b1a27', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4130ec29-4a15-4263-86c0-e9e7f84c33ca', 'f2e35629-d18c-4d74-8fe0-3e0a1f8df590', 'RMSgssDovfhyyugk3R9tN016QdCsk3IPvTjuaM4R36cU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Searching - Chaya Kogan
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('523a101f-006c-4ca2-b059-bfa3ae1c8d6c', 'Searching - Chaya Kogan', 'searching-chaya-kogan-1772434541082-1xgid', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449909&permalink=searching-chaya-kogan-a58a81', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2036d39c-6327-4e6c-9d6f-b572a3a98fea', '523a101f-006c-4ca2-b059-bfa3ae1c8d6c', 'onLrmkmRw40100eFIjgLUiWrPTyEuGxA3hghXJespW3DU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tov Tov - Shofar Calling
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b10c5437-e6a5-4fab-892c-f39bf4d59bd6', 'Tov Tov - Shofar Calling', 'tov-tov-shofar-calling-1772434541082-en3g9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tov-tov?cid=4038497&permalink=tov-tov-shofar-calling-e45ed5', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c7fefdc2-1551-4490-97f6-ad188437e0c4', 'b10c5437-e6a5-4fab-892c-f39bf4d59bd6', 'iRgbHai01sfZST9Ybp02YYu7eJtKJoopAWMu00RtZCx5As', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tov Tov - Pet Penny
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7d889e74-7d4f-4a2c-9008-391be5205f4b', 'Tov Tov - Pet Penny', 'tov-tov-pet-penny-1772434541082-nobxi', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tov-tov?cid=4038498&permalink=tov-tov-pet-penny-40dcb0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b0708c9c-2c9f-4c1d-a7fd-3fd38f48a33b', '7d889e74-7d4f-4a2c-9008-391be5205f4b', 'WSQ4xesk004QMqRFJ501F6chlGEsZ8kU01Ox9XWeOlla500', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ani Ma'amina- Chaya Kogan
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2ab20722-a879-477d-9fae-2238fb5b2344', 'Ani Ma''amina- Chaya Kogan', 'ani-ma-amina-chaya-kogan-1772434541082-uiin1', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449918&permalink=ani-maamina-chaya-kogan-d1abc8', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('66218ef7-b74e-452c-bb62-05f7662240c9', '2ab20722-a879-477d-9fae-2238fb5b2344', '49NTUL73Vd1nWUon3ujVdkTV7wVyxpW2mt00m7ruLi6A', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Camp Bnos Yisrael - Color War Peace
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('03d89d39-e9f3-4626-80bd-79955897b4e0', 'Camp Bnos Yisrael - Color War Peace', 'camp-bnos-yisrael-color-war-peace-1772434541083-bdqcg', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449575&permalink=4-color-war-peace-camp-bnos-yisraelmp4-bcddb2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('305dd5ac-f9c6-4bb4-8960-fe0f2114005b', '03d89d39-e9f3-4626-80bd-79955897b4e0', 'FbDfLTmhpjiKy4tnJBR00W00nVXY5dp8oqjcktPC3QGBk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: True Love - Chaya Kogan (Acapella Cover)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b918a112-5fe5-4589-b60b-c80d56bc220b', 'True Love - Chaya Kogan (Acapella Cover)', 'true-love-chaya-kogan-acapella-cover-1772434541083-dbv9y', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449921&permalink=true-love-chaya-kogan-acapella-cover-f37c1e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b922855f-a100-416c-b1ae-59dc9b592c49', 'b918a112-5fe5-4589-b60b-c80d56bc220b', 'S688eC201LxwrYA8OOXznsXDb8JTVg5u0001z8zhNz2chM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tov Tov - Opposite Day
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2c5b0f9f-e47e-4dcd-9dff-bcd3f778d98f', 'Tov Tov - Opposite Day', 'tov-tov-opposite-day-1772434541083-xk8ji', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tov-tov?cid=4038500&permalink=tov-tov-opposite-day-40a891', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('80a7e870-afd0-4be1-b50e-47f81acc7245', '2c5b0f9f-e47e-4dcd-9dff-bcd3f778d98f', 'eLRldUJ01Y8f025RYczA02011zTGXyUYNNeeQ7uceWHZf00M', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Encore (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('07b5b650-4e3a-4b57-9e12-c1d64f37d4e4', 'Encore (for women and girls)', 'encore-for-women-and-girls-1772434541083-7dcl2', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449522&permalink=encore-2023-final-e2b4d3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0b8e9833-44c7-47ac-a5e1-42dbde87b9a9', '07b5b650-4e3a-4b57-9e12-c1d64f37d4e4', 'J1j101MTSyM7bazWIRwU1Hjx17Y93QoXd3g6XIg01UnqE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Camp Bnos Yisrael - Middle Path
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('941aa41b-e0ab-422e-9843-042832a96bcd', 'Camp Bnos Yisrael - Middle Path', 'camp-bnos-yisrael-middle-path-1772434541083-qyoqp', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449577&permalink=5-middle-path-camp-bnos-yisraelmp4-d2e9d1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('50d77c1e-0a77-430d-9bbe-bea158e16093', '941aa41b-e0ab-422e-9843-042832a96bcd', '1rRaQ73p2UFV4ZIrnjEi24dVRO2dYJnMWU4vDOu9BRs', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Progress: 100/481 videos processed

-- Video: Ein Od Milvado - Chaya Kogan (Acapella Cover)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('99af4bad-6441-44fc-bd0a-e437294e3cc5', 'Ein Od Milvado - Chaya Kogan (Acapella Cover)', 'ein-od-milvado-chaya-kogan-acapella-cover-1772434541083-gscms', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449955&permalink=ein-od-milvado-chaya-kogan-acapella-cover-08a8fe', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3617164e-070a-4a55-afda-9cadf61075f7', '99af4bad-6441-44fc-bd0a-e437294e3cc5', 'Wt00vkvR3Ws4KaiURg1zt6w00jLvyqiFCPwHkVF6TYsT8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Sukkah Blunders - How It Started
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e4639ab3-e567-4c2e-90d0-f6c825bdb8ff', 'Sukkah Blunders - How It Started', 'sukkah-blunders-how-it-started-1772434541083-txuls', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-sukkah-blunders?cid=4038385&permalink=sukkah-blunders-1-231ebc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4dd212a7-2545-4ae8-9cbb-cff66e1dc72a', 'e4639ab3-e567-4c2e-90d0-f6c825bdb8ff', 'wMXuONA7htQT3MatOxfWJwa01A4OgyJ6uTbRB6GlgUUY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Hakol Mimcha - Chaya Kogan
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c49dc41f-9567-4aad-ba0f-745c51f8522a', 'Hakol Mimcha - Chaya Kogan', 'hakol-mimcha-chaya-kogan-1772434541083-4gqnc', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449957&permalink=hakol-mimcha-chaya-kogan-84eba0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('927d9ef7-d956-4453-8053-8cf57c0dceef', 'c49dc41f-9567-4aad-ba0f-745c51f8522a', 'zXURoQHwxMvean4lzazaG00pROXsyyYsyYNG4YkNfg01c', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Sukkah Blunders - A Sincere Attempt
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3d30055d-e937-4f74-b9a9-cbe1641653af', 'Sukkah Blunders - A Sincere Attempt', 'sukkah-blunders-a-sincere-attempt-1772434541083-w66zm', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-sukkah-blunders?cid=4038386&permalink=sukkah-blunders-2-dc1bd0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('72a781b6-a051-43ca-8b6e-9fe3e207bee3', '3d30055d-e937-4f74-b9a9-cbe1641653af', 'jB3lP4Ry88Br9cKLuYfNnxxeDuP54GA46NTyIcck5mU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Camp Bnos Yisrael - Together As One
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7cfeb03e-a506-42f9-8a60-b39bd0a13a83', 'Camp Bnos Yisrael - Together As One', 'camp-bnos-yisrael-together-as-one-1772434541084-59b9a', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449580&permalink=1-together-as-one-camp-bnos-yisraelmp4-668c43', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ebcd7917-22cf-48d0-9c39-429128b7ca0c', '7cfeb03e-a506-42f9-8a60-b39bd0a13a83', 'rxZOSFNPFJBzHcPqKpGya435MlzwZ5lbQJqjWpGvpFU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mesilot - Chaya Kogan
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6b76247d-41a2-471f-9119-d0ce23d489e5', 'Mesilot - Chaya Kogan', 'mesilot-chaya-kogan-1772434541084-jq0i9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449959&permalink=mesilot-chaya-kogan-abbe82', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0c1ae40a-88af-4085-a4cb-35a85840a14d', '6b76247d-41a2-471f-9119-d0ce23d489e5', 'H6ZkMlJ452FryBaceszcRU7KmgnMSNOKM2WMazJPA1k', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Camp Bnos Yisrael - Inner Nature Hike
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8fa3e93d-2a73-488d-9824-2902001560fe', 'Camp Bnos Yisrael - Inner Nature Hike', 'camp-bnos-yisrael-inner-nature-hike-1772434541084-ndsuw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449582&permalink=2-inner-nature-hike-camp-bnos-yisraelmp4-b90100', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('69522143-cdc0-4305-828e-9646f0523d7d', '8fa3e93d-2a73-488d-9824-2902001560fe', 'Y1TxuQJ02Uz1T6JiFYv8DNydMUDyL8Op3Y6ZS6Qf5zDI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Sukkah Blunders - Working On It
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('250803c1-a3fc-453b-9fc8-2cbad3becddc', 'Sukkah Blunders - Working On It', 'sukkah-blunders-working-on-it-1772434541084-1itqq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-sukkah-blunders?cid=4038387&permalink=sukkah-blunders-3-7f90c7', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d73d8793-c5df-465d-a565-522817d85f5a', '250803c1-a3fc-453b-9fc8-2cbad3becddc', 'MbYqzdPLdtEdkCViTK6rDia9rEFsU6YEmFoIOWIv5wo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Sukkah Blunders - Getting There
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('06c1b26c-dab8-42a3-a201-3c762b2e0616', 'Sukkah Blunders - Getting There', 'sukkah-blunders-getting-there-1772434541084-cod9a', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-sukkah-blunders?cid=4038388&permalink=sukkah-blunders-4-4b9634', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('18933dfb-0b60-4d70-ab84-790a1a6ee9f5', '06c1b26c-dab8-42a3-a201-3c762b2e0616', 'OnIhuvRNS8kQbqTMhdAVzNcXrX01UrplCJbXd00OPtIZU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Sukkah Blunders - Mission Accomplished
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e2e10a97-3dd2-4ab9-9048-691b95da3cd3', 'Sukkah Blunders - Mission Accomplished', 'sukkah-blunders-mission-accomplished-1772434541084-r3elo', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-sukkah-blunders?cid=4038389&permalink=sequence-05-de7005', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('791175d7-a27d-4ea2-8096-87a984a90562', 'e2e10a97-3dd2-4ab9-9048-691b95da3cd3', 'eb1nNjfAhIqqhPh4NjA00vS024GZoH8F2LpxHprQg6zlg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Kivi & Tuki - Good Middos
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('19861a6d-dc32-484a-ab0d-1e3ec4724da8', 'Kivi & Tuki - Good Middos', 'kivi-tuki-good-middos-1772434541084-t9g9h', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-kivi-and-tuki?cid=4029393&permalink=kivi-and-tukimp4-ba7981', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('31e0ef51-ccfa-484b-8b69-26ebbbc90bb7', '19861a6d-dc32-484a-ab0d-1e3ec4724da8', 'yXaovXDoaepyoslqjVDkR23D006VjCyTqsJjxIAI3VH00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Schnorgelovich - Sukkos
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b9d085d3-2402-49f8-bd91-2c4b8fac632c', 'Schnorgelovich - Sukkos', 'schnorgelovich-sukkos-1772434541084-w59ef', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-schnorgelovich-family?cid=4038286&permalink=shnorgelovitchmp4-dcb81b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cdbac6b6-7062-4644-a4e4-d981ac34050c', 'b9d085d3-2402-49f8-bd91-2c4b8fac632c', 'Z7w2aF4hJUqbG2ovBr6fGrdp6hp02sVZzMHszCNkT02O00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Kivi & Tuki - Teaching through Song
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('4d37d4f2-04c3-43cc-bc6f-a605cbb8e7ff', 'Kivi & Tuki - Teaching through Song', 'kivi-tuki-teaching-through-song-1772434541084-ocnnq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-kivi-and-tuki?cid=4029392&permalink=kivi-tuki-3-1abf7a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('fff6e2bf-c3e1-45f3-99e0-37161c70982f', '4d37d4f2-04c3-43cc-bc6f-a605cbb8e7ff', '0101lXGGV02CJbfk9IuqN4X008XrSuVQHdbQM5wRIdx5UXA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Kivi & Tuki - Adventures Begin
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cbd8a2aa-2f8a-4268-b3a5-ffabfb640d68', 'Kivi & Tuki - Adventures Begin', 'kivi-tuki-adventures-begin-1772434541084-vavs4', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-kivi-and-tuki?cid=4029395&permalink=kivi-tuki-1-bf5e5a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('71c755fe-66e5-417d-8be1-d74f79e6589d', 'cbd8a2aa-2f8a-4268-b3a5-ffabfb640d68', 'GeW013UjzdphHtPKAkEXmMy1QQ5NBBZ2KBFeUq02P47ew', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: #14 (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('07c41ac1-b8df-4dce-a2de-b576099901b2', '#14 (for women and girls)', '14-for-women-and-girls-1772434541084-vxmlz', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449662&permalink=14-4d7f31', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('98137d53-a3be-41e4-aa09-c66b15449c04', '07c41ac1-b8df-4dce-a2de-b576099901b2', '01lPUXJD00JwBVI2vt01PkWwskOzdANPpyOLLbWXpkfV2I', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Fräulein
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f94c63f7-a704-4623-8c3a-522920921373', 'Fräulein', 'fr-ulein-1772434541085-hvpsd', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449668&permalink=fraulein-019a78', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('21537ac3-749d-43c4-a56f-88c8c3c53272', 'f94c63f7-a704-4623-8c3a-522920921373', 'WNZw4ex02ttM7tpZlQQlTg1zgxBdx7PdsYLhELLHmqZM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Boulevard - Bonus
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('5d1519ad-f76e-4a52-8b2c-c9481feb31a3', 'Mitzvah Boulevard - Bonus', 'mitzvah-boulevard-bonus-1772434541085-jluym', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzvah-boulevard?cid=4029424&permalink=mitzvah-boulevard-bonus', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e6138e7a-899a-4e20-8b67-b5d1c2b52dc7', '5d1519ad-f76e-4a52-8b2c-c9481feb31a3', '2s4tDx00dOn6HTr6OblxsEY2rAq3zJ77b4d01iNBOnY5E', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: New Girl
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9c503976-fcc6-45b7-91a1-371b25f7718f', 'New Girl', 'new-girl-1772434541085-5nzkw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449675&permalink=new-girl-e8e935', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('98ca6757-e8e3-48e3-940b-fba4b187e3d6', '9c503976-fcc6-45b7-91a1-371b25f7718f', 'mZtLgTgY5t28GclWbTdqclRlK02djHCDS0261os8bNkaE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Boulevard - Songs
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('87146aa9-0793-4618-94a5-3bcbfd3679de', 'Mitzvah Boulevard - Songs', 'mitzvah-boulevard-songs-1772434541085-swwnv', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzvah-boulevard?cid=4029425&permalink=mitzvah-boulevard-songs', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('634180f6-307f-4b75-b34a-da24c0ddcfaa', '87146aa9-0793-4618-94a5-3bcbfd3679de', 'OEdlm200v9gD6mJUYJKfxQ01x1jJsMSPV02td2Hzogqn1w', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Boulevard - Brochos (3x washing)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2e9142a6-9fe9-4269-b2c5-d57ebdbfc926', 'Mitzvah Boulevard - Brochos (3x washing)', 'mitzvah-boulevard-brochos-3x-washing-1772434541085-vv33b', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzvah-boulevard?cid=4149991&permalink=mb2-chabad', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cfcb6b4a-6cdd-44c2-84db-38272a3497dc', '2e9142a6-9fe9-4269-b2c5-d57ebdbfc926', 'bnVLx8UhADv65vjWlVOeRc00BWbcSy6jsQU6iBE00WuFI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ladya (women and girls only)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('34b5897c-2ee8-4d14-8564-e4b4240bfc61', 'Ladya (women and girls only)', 'ladya-women-and-girls-only-1772434541085-kl071', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449779&permalink=ladya', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d92f0a0d-471e-48f3-be93-d9d42564161f', '34b5897c-2ee8-4d14-8564-e4b4240bfc61', 'yg00NHEAuQyvxSyA3vioDDDmgRsPwhl5RXDPmbgDVIxY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Bustenai (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('65ecf15f-e8e4-4306-a1f0-04e23369ebb5', 'Bustenai (kol isha)', 'bustenai-kol-isha-1772434541085-4chvl', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449776&permalink=title01-adc668', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('363d3c1f-3093-4feb-8848-6936ceb5d88b', '65ecf15f-e8e4-4306-a1f0-04e23369ebb5', 'B9sj02sjy38uG93116q9aar2hCc2DwQOEdzGcfB5AY7g', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: A Yid - Dobby Baum
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('92127e0e-8e4c-448e-a8bc-989cc12624bf', 'A Yid - Dobby Baum', 'a-yid-dobby-baum-1772434541085-3f2ta', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450012&permalink=a-yid-dobby-baum-6c889c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f0483c9f-a253-45dc-b801-fd86b53cfef1', '92127e0e-8e4c-448e-a8bc-989cc12624bf', 'fLWILv9A4oGmqoC7MCYixUWZn3eg01VDY2kbhH4Jo9hI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: A Mother's Cry - Dobby Baum
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3770fc07-5427-44fe-a0ea-334e84bf8e69', 'A Mother''s Cry - Dobby Baum', 'a-mother-s-cry-dobby-baum-1772434541085-4lsf3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450015&permalink=a-mothers-cry-dobby-baum-7d92bc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6e34dec2-2f15-48e3-a1fc-7f116c22a097', '3770fc07-5427-44fe-a0ea-334e84bf8e69', 'I3FJIHqc8W700nvAF1QmI0101Qe7ASaiaHJZIK9ddwWXnA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: One Voice (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ff175d3a-ecd4-4e78-9847-4e06d889b7bf', 'One Voice (for women and girls)', 'one-voice-for-women-and-girls-1772434541085-kcq3h', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449784&permalink=one-voice-5d898d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('11d2b4c2-8ea6-4f91-910c-d14dac5c3639', 'ff175d3a-ecd4-4e78-9847-4e06d889b7bf', 'v2wyLjfgVb8Rw5eDnnPrD02NCwDKURjaEvRX00702iQL1Y', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Tzedakah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('687be509-dbb0-41db-a9a7-e4c05b64eab2', 'Rabbi B - Tzedakah', 'rabbi-b-tzedakah-1772434541085-g22ip', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038206&permalink=rabbi-b-tzedakah-8ac53c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9d537a86-2967-454b-993c-1fb1ffa97cc4', '687be509-dbb0-41db-a9a7-e4c05b64eab2', 'Z4m31PPNb02imj02TyuXKfCPIbmXI7m4ETFRy201umMIIA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: We are The Power - Dobby Baum
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8aaf5d0c-085c-4b18-89f9-c07cbd377cb0', 'We are The Power - Dobby Baum', 'we-are-the-power-dobby-baum-1772434541085-uhz66', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450018&permalink=weare-the-power-dobby-baum-f394a2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('add8026b-7567-4163-aeae-e3f48680eead', '8aaf5d0c-085c-4b18-89f9-c07cbd377cb0', 'NffN8Oq00aqibcAsfJtdBjiJm1YqmnceRKtpdchNR4024', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Hashem is Everywhere
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('06f6916e-bf8e-456a-9a32-7d83f0ece67c', 'Rabbi B - Hashem is Everywhere', 'rabbi-b-hashem-is-everywhere-1772434541086-ohw6a', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038191&permalink=01-rabbi-b-hashem-is-everywhere-864a23', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('8e123429-5e32-43d8-b1a0-d120214f6228', '06f6916e-bf8e-456a-9a32-7d83f0ece67c', 'EWUIet2YAiQzlEVT600JvEqD25CqMFZQzngla00wP0254w', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Our Melody - Dobby Baum & The Brooklyn Girls Choir
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('211f1e53-bc11-4594-b084-f763a2e5d4e9', 'Our Melody - Dobby Baum & The Brooklyn Girls Choir', 'our-melody-dobby-baum-the-brooklyn-girls-choir-1772434541086-1ppwn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450022&permalink=our-melody-dobby-baum-the-brooklyn-girls-choir-14a66c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('70b1709a-2747-4662-b0d3-9da1d210d6ce', '211f1e53-bc11-4594-b084-f763a2e5d4e9', 'BYmoOc901ssVj9BSWPlvyZE8g21O4VK2FNN102a4Kk02ec', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmelke On the road - Bike safety
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e1da196b-a8a3-4307-8c2b-3acea394b54b', 'Shmelke On the road - Bike safety', 'shmelke-on-the-road-bike-safety-1772434541086-5d853', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzvah-boulevard?cid=4450290&permalink=shmelke-show-bike-safetymp4-551104', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0c9b728b-7a76-40ad-aa49-1a34e3d13371', 'e1da196b-a8a3-4307-8c2b-3acea394b54b', 'tSh6KhAppilxdjHMFBNOPRlccn2M86sr15bFaFWoOhI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Sefira with Rabbi B
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('0e88d4e8-f372-42da-87d1-84705defb8eb', 'Sefira with Rabbi B', 'sefira-with-rabbi-b-1772434541086-8261k', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4515965&permalink=sefiratmp4-6635a3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5160ff23-5ba4-4543-b390-13af192a32df', '0e88d4e8-f372-42da-87d1-84705defb8eb', 'Q63syZjl38anAnhZ3J026ADqm01vavQ2003gyGJYf01EOZo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rejuvenate - Dobby Baum
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3546ab3d-b523-4be6-90c7-4b2c6a066973', 'Rejuvenate - Dobby Baum', 'rejuvenate-dobby-baum-1772434541086-uk9o4', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450025&permalink=rejuvenate-dobby-baum-e8ee9b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('521d0ba7-b6c7-458c-9d0d-456c37846b84', '3546ab3d-b523-4be6-90c7-4b2c6a066973', 'nu7OC8cO02W012tv89TwKhlaoGXTwmg1UGDaf9jr01yURs', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmelke On the road - Bus safety
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('380604c8-3ffa-40f7-b33a-720640db0968', 'Shmelke On the road - Bus safety', 'shmelke-on-the-road-bus-safety-1772434541086-c7iou', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzvah-boulevard?cid=4450292&permalink=shmelke-on-the-road-bus-safty', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ede817e1-58c8-42a2-ac2a-6e647663e182', '380604c8-3ffa-40f7-b33a-720640db0968', 'nm3EI01u00H3bUN6F5dz68YRzyIjcDK02o1DQruQ5lLcDQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Beis HaMikdash
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('0e5446b8-aec3-421a-9a4a-44faac677d55', 'Rabbi B - Beis HaMikdash', 'rabbi-b-beis-hamikdash-1772434541086-1vuql', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038214&permalink=rabbi-b-beit-hamikdashmp4-c85e44', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6ebca6aa-9f93-4805-a5fc-27c8931c0501', '0e5446b8-aec3-421a-9a4a-44faac677d55', 'f6i5B62l5T6jxi5MHA9HmpXXPJK401QDMnUI27Ou0200AI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shaindy Plotzker Live! - 2024
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8057c9c1-c915-478b-ad28-98e862658ce8', 'Shaindy Plotzker Live! - 2024', 'shaindy-plotzker-live-2024-1772434541086-315aa', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449794&permalink=shaindy-plotzker-live-2024-2bafb6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6ab89530-6153-46c5-9932-183a1b5b54f4', '8057c9c1-c915-478b-ad28-98e862658ce8', 'HTmdIekYooVbZgIoMZHA2X2d00kg024X6YW9bLbGF1xGM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Torah Town - Too Busy
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('29b96feb-b3ac-4bb4-acb7-6aa132415841', 'Torah Town - Too Busy', 'torah-town-too-busy-1772434541086-luk2b', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-torah-town?cid=4038486&permalink=torah-town-3mp4-01a1ef', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('75a4a861-6ee0-4777-bd69-a3ece7313471', '29b96feb-b3ac-4bb4-acb7-6aa132415841', 'jEISqe8EKk00pMF021N8ZXj029sCVg6XpbMPgzrwlaT5sY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Live Concert - Dobby Baum
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6d57535e-ff86-4af0-9863-a9a072892686', 'Live Concert - Dobby Baum', 'live-concert-dobby-baum-1772434541086-lqu3f', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450028&permalink=live-concert-dobby-baum-32ed95', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a23ff0ea-7481-45ee-90dd-7d1456ad94df', '6d57535e-ff86-4af0-9863-a9a072892686', 'ch600MZQUgE6v5PMD6V00nw00LmksQuHQTAcbonvbzixZk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Torah Town - Safety Rules!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cba35b24-d67e-4322-a268-e0e2ce5bf508', 'Torah Town - Safety Rules!', 'torah-town-safety-rules-1772434541086-a7dfx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-torah-town?cid=4038488&permalink=torah-town-2-safety-rules', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0c25bb29-877b-4366-a46f-8eb596ae6a0f', 'cba35b24-d67e-4322-a268-e0e2ce5bf508', 'KH7J00xuVt7grGEgK2hj8A01801EIvv00eYuQfw5JMT4nmQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Let's Get Ready for Shabbat
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3f3b6fb2-7fe1-4b84-8e4d-cc3f7a0e1df7', 'Rabbi B - Let''s Get Ready for Shabbat', 'rabbi-b-let-s-get-ready-for-shabbat-1772434541086-mhkxr', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038192&permalink=rabbi-b-lets-get-ready-for-shabbat-46bc7f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a06876a2-4640-4bd2-98cc-2572d4935525', '3f3b6fb2-7fe1-4b84-8e4d-cc3f7a0e1df7', 'lDvM7jk702Uk9OuO2DKo2Ql1QIdsE7s7ORAzjoBeYdL4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Tu Bishvat
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b9ae2cd9-f352-458f-876a-42b5c63bc6f1', 'Rabbi B - Tu Bishvat', 'rabbi-b-tu-bishvat-1772434541087-sbm6k', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038231&permalink=rabbi-b-tu-bishvat-episodemov-39cc26', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1a925dc0-e034-4482-90f9-bf9d2cf06c9b', 'b9ae2cd9-f352-458f-876a-42b5c63bc6f1', '00BDzp4xKoczyKxCRTPUG02zO4M6Zjn2BemOP02NtLhT1g', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Shlomo and the Bee (yom Kippur)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('003f82fe-5fa1-4425-b52a-9218b25f797f', 'Rabbi B - Shlomo and the Bee (yom Kippur)', 'rabbi-b-shlomo-and-the-bee-yom-kippur-1772434541087-cdlur', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038229&permalink=rabbi-b-shlomo-and-the-beemov-d275ac', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('7b94c682-e269-4600-a3b7-8e13a449709d', '003f82fe-5fa1-4425-b52a-9218b25f797f', 'iLwbBf71xVjXlOCC1JsYuVsn6fQ4WYn01c12j1uJeJJ8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Torah Town - Responsibility
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c9afa368-f59d-4d15-a79e-4fea3f6205fd', 'Torah Town - Responsibility', 'torah-town-responsibility-1772434541087-wyi1q', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-torah-town?cid=4038491&permalink=torah-town-5-responsibility-98bfbc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4f2dff14-578b-4b81-88e2-209eceb2b62c', 'c9afa368-f59d-4d15-a79e-4fea3f6205fd', 'qNLkW01rCOgraGwYeo4NlYfSJkrfpKD19ro7gKCvlxKU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shavuos with Rabbi B
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('97411f6a-4ae9-45bf-948a-544ac8787054', 'Shavuos with Rabbi B', 'shavuos-with-rabbi-b-1772434541087-keyox', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038228&permalink=shavuot-finalmp4-bab1df', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cdea960a-a562-466f-a977-c30ed63040c5', '97411f6a-4ae9-45bf-948a-544ac8787054', 'HA2cjHp3doNzFXPr9KktqFVMtmC9aOiP7AY92bL91xI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Pesach with Rabbi B - Part 1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e2393490-00ae-4092-afe4-5c5687323529', 'Pesach with Rabbi B - Part 1', 'pesach-with-rabbi-b-part-1-1772434541087-peiye', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038232&permalink=full-pesach-b2mp4-9563b7', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('84558d8b-0b9a-4d5e-aeee-8a1f26831228', 'e2393490-00ae-4092-afe4-5c5687323529', 'nlVfUr00618Q3dTgZrG01O92Epcdvspgy02AX2SJsVitO4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ana Hashem - Esther Press
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('dfef9dc7-29fd-44a5-8209-e30b4174cefe', 'Ana Hashem - Esther Press', 'ana-hashem-esther-press-1772434541087-9565o', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450047&permalink=ana-hashem-esther-press-67083b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('7ee97004-09a2-46d7-b9f0-406c598239e3', 'dfef9dc7-29fd-44a5-8209-e30b4174cefe', 'bE92WwmyLT2W4T49KNC01Zr02ZsAF9Aqi8SSLeFe7ySYw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Torah Town - Patience
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6da6b43a-7947-4330-b61a-af39b503228b', 'Torah Town - Patience', 'torah-town-patience-1772434541087-wccm4', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-torah-town?cid=4038492&permalink=torah-town-4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('fd28d953-5697-4aa8-863e-d45fed0c5274', '6da6b43a-7947-4330-b61a-af39b503228b', 'yLoXflAHv6Bd2vsLZUA8n3oNIeuZaGEYtmlA5Tks1VE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Hamalach Hagoel - Esther Press
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b613d1bb-d268-4499-bf63-4eef874a0f1f', 'Hamalach Hagoel - Esther Press', 'hamalach-hagoel-esther-press-1772434541087-kt25i', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450049&permalink=hamalach-hagoel-esther-press-3b6968', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('7b22ece3-f59f-4fa1-8106-e3fbf7339a42', 'b613d1bb-d268-4499-bf63-4eef874a0f1f', 'IlINh7OGr6VO00JbCN2kY3hBR300wsp02Vc9ggN9Nk01jOM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Pesach with Rabbi B - Part 2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('345fe6e9-9743-45bf-b997-a21e2fd6ae71', 'Pesach with Rabbi B - Part 2', 'pesach-with-rabbi-b-part-2-1772434541087-z5437', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038233&permalink=rabbi-b-pesach-2-fullmp4-7c5264', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0392e1ea-ce64-4cdd-bab2-11fb9fbd72cf', '345fe6e9-9743-45bf-b997-a21e2fd6ae71', '01Sy01cGzoZwSIqQ8Zm00tpW5BWN1SLA8LGtic4JnMlza8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rosh Hashana with Rabbi B
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('bfbad676-c91b-461a-95e0-04ef815844a6', 'Rosh Hashana with Rabbi B', 'rosh-hashana-with-rabbi-b-1772434541087-xi7p9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4515968&permalink=rosh-hashana-with-rabbi-b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2eff44c1-ed6f-4356-8bb5-88ed007e3cda', 'bfbad676-c91b-461a-95e0-04ef815844a6', 'iL96MRFnM9pZU8dQgR02zjRaw35nUMBSdRVRh4nTaROA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Sitting in the Sukkah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cca04bdc-e6b4-44b0-aec5-2d6268bc0bf5', 'Rabbi B - Sitting in the Sukkah', 'rabbi-b-sitting-in-the-sukkah-1772434541087-84dn5', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4515969&permalink=sitting-in-the-sukkahmp4-945903', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('eb9e082c-6fb2-4f57-b79e-3769aec0a7c1', 'cca04bdc-e6b4-44b0-aec5-2d6268bc0bf5', 'dsr2f5vkTnofGnLDk1V00UfERcn02WqYKjhqcnM8e1901Q', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Find Your Power - Esther Press
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7c970ae0-67d6-473e-9fa9-95bf8f9db822', 'Find Your Power - Esther Press', 'find-your-power-esther-press-1772434541087-u336r', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450055&permalink=find-your-power-esther-press-55bfb5', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2ec75c53-0ed8-4b13-8660-517545bca730', '7c970ae0-67d6-473e-9fa9-95bf8f9db822', '02udM01kc6TU800mmb8KrZUn3xDDH2x4gZm6DR00rAXuAD4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Happy Chanukah Rabbi B
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c41ece0c-e0c5-4122-b4f5-f28f6e780ef4', 'Happy Chanukah Rabbi B', 'happy-chanukah-rabbi-b-1772434541087-bdhj1', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038181&permalink=happy-chanukah-rabbi-b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0c09edec-ad33-4dcd-8ec6-86c294b51113', 'c41ece0c-e0c5-4122-b4f5-f28f6e780ef4', 'GhWvq7NAedeabWrLZnsy1600UGHpF1lOll9NUKKj02giY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yael and Dovy's Jewish ABC's - #1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('75a9eb56-6f7b-47f5-99c0-b8dfc53968e9', 'Yael and Dovy''s Jewish ABC''s - #1', 'yael-and-dovy-s-jewish-abc-s-1-1772434541088-ri1wf', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-yael-and-dovy?cid=4038559&permalink=yael-and-dovys-jewish-abcsmp4-fc0042', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2c78b5cb-45eb-4ee0-916d-c091e880d868', '75a9eb56-6f7b-47f5-99c0-b8dfc53968e9', 'gyGLLeoHLp00rDX9fxAjWVAHpX8QA9BPK3sidKIOPK84', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Hashem Is Here
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8f20e6b6-55fc-4b96-87f9-906de4b90fdf', 'Rabbi B - Hashem Is Here', 'rabbi-b-hashem-is-here-1772434541088-gzh8h', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038197&permalink=rabbi-b-hashem-is-heremp4-e8621d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c1e635d6-307e-4fca-84c9-f02e8875d146', '8f20e6b6-55fc-4b96-87f9-906de4b90fdf', 'PaqAMNsq02YVrVEGfM4nBsqefJZx5l63hDMf8Zo5Pdno', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Musical Cups
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1f95ff39-716d-4175-95c8-6ab284e749e6', 'Rabbi B - Musical Cups', 'rabbi-b-musical-cups-1772434541088-3dj5w', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038201&permalink=musical-cups-73dc0f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b8eb30f4-9ea0-4878-96bf-247bf1640f40', '1f95ff39-716d-4175-95c8-6ab284e749e6', 'QO6Aj02NHmWbiavUx6ILZfh6vEXGHaSlVlF8gAYlrWlA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Happy Purim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d5978c7d-874d-4652-998d-8e2f86f445d1', 'Rabbi B - Happy Purim', 'rabbi-b-happy-purim-1772434541088-grv62', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4515970&permalink=rabbi-b-happy-purim-a58ac1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a4eb577b-c79d-4545-890b-2dc36ef40cc6', 'd5978c7d-874d-4652-998d-8e2f86f445d1', '021FPvhnvcYYjxuScpymEn00WY9eSb01px9pPnXSr8r7hY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Purim with Rabbi B
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('af63905a-f1e0-4257-bf00-8b06923f5409', 'Purim with Rabbi B', 'purim-with-rabbi-b-1772434541088-xhcay', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038234&permalink=rabbi-b-purimmp4-6c82a9', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('60a6c17b-2263-4a25-b763-5fe1ae97db2a', 'af63905a-f1e0-4257-bf00-8b06923f5409', 'JdSBamce3o5X1DCTMSb1oe6663JeaMwHS1JpDV6XKzg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Making Puppets
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a77781f7-11ee-43ef-ad46-f12723e36fea', 'Rabbi B - Making Puppets', 'rabbi-b-making-puppets-1772434541088-57rzi', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038210&permalink=rabbi-b-puppetsmov-9a2b41', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cb77914c-9180-4954-999c-faed5ae07298', 'a77781f7-11ee-43ef-ad46-f12723e36fea', '4Bq4NmmgCgwd02Qmq99uqINicn201ZjE5hTSOuS01gci9o', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Izzy & Dizzy Show #1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e5220214-7682-4818-a7d1-c18c8b90b48f', 'The Izzy & Dizzy Show #1', 'the-izzy-dizzy-show-1-1772434541088-41h4q', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-izzy-and-dizzy-show?cid=4029389&permalink=izzy-dizzy-show-benny_1mp4-22fb2b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('7d509650-f740-4e90-89fa-e6e74100b281', 'e5220214-7682-4818-a7d1-c18c8b90b48f', 'qITcaqb2gHI3EzyGSDYmQQQNiTDoyA14dsn1F4roSgw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Get Well Soon
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7f6b8024-83fe-4f88-bdfb-83a41925f4e4', 'Rabbi B - Get Well Soon', 'rabbi-b-get-well-soon-1772434541088-gfpal', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038218&permalink=rabbi-b-get-well-soon-782925', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1cf68bd6-553f-4f52-aca2-624fc818d31e', '7f6b8024-83fe-4f88-bdfb-83a41925f4e4', 'EctpaQWeRUdG7YIJNyN53pWOFR00kjcmPQ3xrm7DkA700', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Izzy & Dizzy Show #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('75978d1a-ffef-4cd1-9c06-9b448c9dec0a', 'The Izzy & Dizzy Show #2', 'the-izzy-dizzy-show-2-1772434541088-8jr28', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-izzy-and-dizzy-show?cid=4029390&permalink=izzy-dizzy-show-2_1mp4-7cf6eb', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('63a31eb9-cc52-4304-a3ac-7f3edc275d59', '75978d1a-ffef-4cd1-9c06-9b448c9dec0a', 'qCT4oXm00SDzpWaUfbHoVuEOWywjpuWTRjJSGte0011uE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Izzy & Dizzy Show #3
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a4e9e4e2-ab49-479e-89d1-b98ca1e58401', 'The Izzy & Dizzy Show #3', 'the-izzy-dizzy-show-3-1772434541088-xchh9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-izzy-and-dizzy-show?cid=4029391&permalink=izzy-dizzy-show-3mp4-5b9f83', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('523901d2-9234-446b-bef3-f20307980d08', 'a4e9e4e2-ab49-479e-89d1-b98ca1e58401', 'tFbhVqjbgL3ej02IfjYpDzp62vFsdsqlpF01Rip01j4A008', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Sukkah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('33012359-0569-4df9-b702-27b5b00a8abd', 'Rabbi B - Sukkah', 'rabbi-b-sukkah-1772434541088-60se8', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4515971&permalink=rabbi-b-sukkah-special-83f51a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4c55a01b-f050-41f8-b353-20904283275c', '33012359-0569-4df9-b702-27b5b00a8abd', 'S801JyhMAw4oljHzBJLoK2dAe4Aj36R1Vxy900cPHMR00Y', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Atah V'chartanu - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('aaf2235e-caf6-4e19-83a2-e89160845fa0', 'Atah V''chartanu - Niggunim', 'atah-v-chartanu-niggunim-1772434541088-vut02', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038235&permalink=atahmp4-9f5ac2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('8615b187-7822-4160-a2a5-ba34a418cc14', 'aaf2235e-caf6-4e19-83a2-e89160845fa0', 'FWRI3mxdN4VEPwujOAMDwFv8JdDTM5R01dq5HMdis1cA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rachamona - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('64303927-d6a8-4970-b5d0-9e6ae76681d8', 'Rachamona - Niggunim', 'rachamona-niggunim-1772434541089-83kaf', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038236&permalink=rachamonamp4-aa4ca0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9a98e219-e76a-4d73-8f9e-d6abfb304470', '64303927-d6a8-4970-b5d0-9e6ae76681d8', 'atLJY7Tpqn9Bnvehv18wTsOrUrZa01Y2HBvG1YeDj6H00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Asader - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('eca01378-8243-4907-9968-19ed2a5e902d', 'Asader - Niggunim', 'asader-niggunim-1772434541089-juwvy', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038237&permalink=asadermp4-cd8549', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('35cd092e-0037-44d1-b3f8-cd46ae013415', 'eca01378-8243-4907-9968-19ed2a5e902d', 'SLuiQEQYgTRjKc2qvczRzR02gCHlNa4VRZbZLikUG00ZE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tzomo Lecha - Niggunim (Fast)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('bba35d13-6780-4a15-b4dd-64a60b0b34a1', 'Tzomo Lecha - Niggunim (Fast)', 'tzomo-lecha-niggunim-fast-1772434541089-tptlq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038238&permalink=tzomo-fastmp4-9a9205', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('061b7f69-93d4-4ddd-94b3-4415fa27e8dc', 'bba35d13-6780-4a15-b4dd-64a60b0b34a1', 'TA9LywfFw1KxEBnRZfZDHh5Szc7SWW00ND14O6K9dpwE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Bella Brocha goes to a Wedding - (For boys)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cad9a604-ad4b-4b8a-9f6a-14e39880b251', 'Bella Brocha goes to a Wedding - (For boys)', 'bella-brocha-goes-to-a-wedding-for-boys-1772434541089-g6717', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/bella-brocha-collection?cid=4029326&permalink=bb1-kol-ish', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d1e86729-1bf3-4713-b8a1-3c7ed95d7c08', 'cad9a604-ad4b-4b8a-9f6a-14e39880b251', 'G5jPkrie3nAB01oo5LgqLdJQl8CZIP01Pq7jyGEKLjeIk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Darkecha - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3827cb14-18b1-47c2-9fd2-3aa5025db3fd', 'Darkecha - Niggunim', 'darkecha-niggunim-1772434541089-jg30g', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038239&permalink=darkechamp4-377ea0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a9843d3b-fe13-4ec8-b403-7980f3986e45', '3827cb14-18b1-47c2-9fd2-3aa5025db3fd', 'PSjsJTEdLm00mlr00TjsT02ozFzw21PJxaOsYE027Dhzg4s', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: BB3 - The  Making Of
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('27ab87de-83f6-4300-8df4-51b2fec85659', 'BB3 - The  Making Of', 'bb3-the-making-of-1772434541089-sf9of', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/bella-brocha-collection?cid=4029330&permalink=bb3-the-making-ofmp4-4e5740', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('7ba1e0d2-c18f-43ac-bf0e-38bad86b1ba0', '27ab87de-83f6-4300-8df4-51b2fec85659', 'lvw01xCEOLycQ7dLmo1I01uC6h0201DWYiRNd023VXmzQj34', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ki Anu Amecha - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('51819e7a-7584-42aa-ad83-de49883e39c6', 'Ki Anu Amecha - Niggunim', 'ki-anu-amecha-niggunim-1772434541089-l1uz7', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038240&permalink=ki-unump4-2bc15f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9f0ebf07-a36f-4155-8486-483ca955734d', '51819e7a-7584-42aa-ad83-de49883e39c6', '01kFgJVjYcUSF8r83B8FUCW00o6u6dJCJy1p00xhTSEp6M', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: BB3 - Meet The Brother
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('dc627ea8-b0d5-46a3-988a-29f0378dde97', 'BB3 - Meet The Brother', 'bb3-meet-the-brother-1772434541089-kev9v', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/bella-brocha-collection?cid=4029331&permalink=bb3-meet-the-brothermp4-59d4be', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1692af3d-ff26-4831-b434-b9c3390e07ef', 'dc627ea8-b0d5-46a3-988a-29f0378dde97', 'GtCs8in2Vcs52TN6x2ElkemlBaTH02Ql7Kj6nl8CZum00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shamiel - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('bc33675a-310a-4b53-895b-e72d004d7ea9', 'Shamiel - Niggunim', 'shamiel-niggunim-1772434541089-vnff0', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038241&permalink=shamielmp4-291e8d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e4bb9fac-9217-487d-b7a2-6682d2626c08', 'bc33675a-310a-4b53-895b-e72d004d7ea9', 'Mp4MutegfQId691wLzSguJhlsWZqT7YKx00cQkhUHkqE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Bella Brocha and The Twins - with Kol Isha
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d14e22c3-b14f-497f-a681-e17b1e4c1c41', 'Bella Brocha and The Twins - with Kol Isha', 'bella-brocha-and-the-twins-with-kol-isha-1772434541089-n0boz', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/bella-brocha-collection?cid=4029328&permalink=bella-bracha-and-the-twins-hd-outputmp4-817996', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ba0c88f7-e843-4be0-b90c-50974a046c37', 'd14e22c3-b14f-497f-a681-e17b1e4c1c41', 'WWl9f9LBNIQDeu7WWyosOf01Fj01FcYL5DzMiAv9005Ij8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: By Your Side - Shaindel Antelis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a163d1e7-9c04-4ad7-b4e1-8ff7a0ea802a', 'By Your Side - Shaindel Antelis', 'by-your-side-shaindel-antelis-1772434541090-n0yqf', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450176&permalink=by-your-side-shaindel-antelis-cf343e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('505e9072-5962-49c2-8b8d-9a67c7e6f247', 'a163d1e7-9c04-4ad7-b4e1-8ff7a0ea802a', '200ebN8JtsUUMeDjDiIxHXBgqVevsUjEwpceJ3cwrLRU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ki Anu Amecha - Niggunim (slow)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('942e755d-9d09-4903-99a1-dfca50aca3fa', 'Ki Anu Amecha - Niggunim (slow)', 'ki-anu-amecha-niggunim-slow-1772434541090-w5y4x', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038243&permalink=ki-unu-slowmp4-0886c3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6f5700cf-1a00-4f76-993f-dc82d32f63eb', '942e755d-9d09-4903-99a1-dfca50aca3fa', 'm2uK004cHiorSSFqqK4LlK007fmuRhr00TPQL501NWVij2c', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Hu Elokeinu - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cdc9330e-d0a0-427d-bfd1-b0b71830918a', 'Hu Elokeinu - Niggunim', 'hu-elokeinu-niggunim-1772434541090-95v8g', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038244&permalink=hump4-428298', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e048b85e-241f-4a1d-9cc2-c14df8f38c32', 'cdc9330e-d0a0-427d-bfd1-b0b71830918a', 'lN00GktnQKTKDFg01dj5LVIOx02TGrQqz36zATvzhxOhj8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Invisible - Shaindel Antelis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9e889944-c48b-4731-916f-38d8dff3e004', 'Invisible - Shaindel Antelis', 'invisible-shaindel-antelis-1772434541090-u4119', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450177&permalink=invisible-shaindel-antelis-c49a99', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('add4f040-54e3-4ab0-a4c9-aa9942cd45fa', '9e889944-c48b-4731-916f-38d8dff3e004', 'LLVN501fHQd2GJrdQrOla5Ps8ofMEoQ9DfPtOblpVfH4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Jump  - Shaindel Antelis and Maayan Davis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a8c5af38-88a4-44b8-b12d-40c97a793d02', 'Jump  - Shaindel Antelis and Maayan Davis', 'jump-shaindel-antelis-and-maayan-davis-1772434541090-f73mw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450178&permalink=jump-shaindel-antelis-and-maayan-davis-691b5a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('eec59841-08cd-441d-8214-c0ae24f1b18e', 'a8c5af38-88a4-44b8-b12d-40c97a793d02', 'ovtGriWatPIIw3HF01qVOv025m0148Iz1tUJ9lTLNKiTxQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Anim Zmiros - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('40ca2a94-02de-4a32-913e-4c30d2141af1', 'Anim Zmiros - Niggunim', 'anim-zmiros-niggunim-1772434541090-6h76l', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038245&permalink=animmp4-ca4172', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('aa4b3b5a-a2ca-4b18-8c69-4871dbfcb991', '40ca2a94-02de-4a32-913e-4c30d2141af1', 'Ao72CWR8mToSR02fapzFOc5U2r3AGkVXPjPZ4cSRDItg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tchatchkees - Sefer Torah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('30fba96a-1c8d-42fe-9920-cf97b8d8d5ba', 'Tchatchkees - Sefer Torah', 'tchatchkees-sefer-torah-1772434541090-ynecx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tchatchkees?cid=4038390&permalink=tchatchkees-sefer-torah-27cc64', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1f0d2e63-77e8-4bb6-987c-a4f910dd0264', '30fba96a-1c8d-42fe-9920-cf97b8d8d5ba', 'uGLYyK2J26mfIDEIJYbQhy83yLWgaqIoQU02FhRrtn01k', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Stav - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('4c9fd808-f4cb-4dc4-aa4c-2c355312a627', 'Stav - Niggunim', 'stav-niggunim-1772434541090-4mqa8', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038246&permalink=stavmp4-8cedab', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2f8db0a6-f41b-4e27-a77a-9636fba0fe4f', '4c9fd808-f4cb-4dc4-aa4c-2c355312a627', 'iuSoYBWzt72tqzx1vzEwqljcI6Ajk00yyRIkYjac1XTk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Thank You - Shaindel Antelis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3a981fdb-cd5b-44ff-994e-329cc5a26788', 'Thank You - Shaindel Antelis', 'thank-you-shaindel-antelis-1772434541090-phoer', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450183&permalink=thank-you-shaindel-antelis-e9f149', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5116f956-4408-4925-9327-5f6b34e29442', '3a981fdb-cd5b-44ff-994e-329cc5a26788', 'jaB1wvVtm3e02O63lBSvLE2L2HRgEUYpAfmW1D00nitNA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tzomo Lecha - Niggunim (Slow)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('07aca3ff-598b-4985-bcec-5450b7eb3282', 'Tzomo Lecha - Niggunim (Slow)', 'tzomo-lecha-niggunim-slow-1772434541090-3o04a', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038247&permalink=tzomomp4-bb10ad', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d504a8aa-affb-465c-bc3b-b8657eaa10a0', '07aca3ff-598b-4985-bcec-5450b7eb3282', '8mnHE7ORVKJhcMIfsFnBpEWjrKzD01TluOuIq21N6J8w', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Palace - Shaindel Antelis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('745406a4-b786-4479-8f7f-4aaec2a7f32f', 'The Palace - Shaindel Antelis', 'the-palace-shaindel-antelis-1772434541090-tt2q0', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450186&permalink=the-palace-shaindel-antelis-27b07d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('afe86e54-62d6-401d-9971-815450e660e7', '745406a4-b786-4479-8f7f-4aaec2a7f32f', 'z006B8utZFQ51tJYpUczbfR8AcZiq902NilAyg01DoNZtk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tchatchkees - Tzedakah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3a8f5439-d06d-49d8-a3dc-da9050b93c75', 'Tchatchkees - Tzedakah', 'tchatchkees-tzedakah-1772434541090-zzq8d', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tchatchkees?cid=4038392&permalink=tchatchkees-tzedakah-d719f6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('991f21d1-9b7f-4cac-a7c7-29bce435e932', '3a8f5439-d06d-49d8-a3dc-da9050b93c75', 'q01HRhkpUntn1Q02z4cmBvFTyXy13mt50100A34OwJCr6C8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Vehi She'amdah - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('271240c7-351f-42f7-ab91-b27b0e6b28b3', 'Vehi She''amdah - Niggunim', 'vehi-she-amdah-niggunim-1772434541091-mwot9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038248&permalink=vehimp4-ca8129', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c4c4b922-914a-49ad-9f34-e42f6821debe', '271240c7-351f-42f7-ab91-b27b0e6b28b3', 'syouVRw24s00kO6KmT100nTSRBTvVAy5Md7GHTM5wj00as', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Am Yisroel Chai - Shaindel Antelis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e86437fd-7f61-408e-ae1e-fc91efe878dc', 'Am Yisroel Chai - Shaindel Antelis', 'am-yisroel-chai-shaindel-antelis-1772434541091-xr01l', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450188&permalink=am-yisroel-chai-shaindel-antelis-eb53b3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e779581b-ace9-48ed-91be-2d6f78b91aff', 'e86437fd-7f61-408e-ae1e-fc91efe878dc', 'sF3kln7DY68WObfXIvWY3LhJ8wnuTJnq400tIbtq4rLo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tchatchkees - Shabbos Candles
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e979f14d-c27c-4efa-b220-0af01c514d91', 'Tchatchkees - Shabbos Candles', 'tchatchkees-shabbos-candles-1772434541091-li5q8', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tchatchkees?cid=4038393&permalink=tchatchkees-shabbos-candles-356ed4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c710adc1-5aa5-4ad7-b806-b5f2a9a720e6', 'e979f14d-c27c-4efa-b220-0af01c514d91', '8jFsIk54cTjqCxDM400mVBJzB6MA022TfIoqK4rCroXgo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Hoaderes V'haemunah - Niggunim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c038f09f-aa7d-47c3-a1f1-c458f187450d', 'Hoaderes V''haemunah - Niggunim', 'hoaderes-v-haemunah-niggunim-1772434541091-h6weo', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038249&permalink=hoaderesmp4-40edbd', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a184a09f-09e3-4353-8e48-b4d73bd86234', 'c038f09f-aa7d-47c3-a1f1-c458f187450d', 'Y9q00vgjk4oikJsMt6qKePGdFumRa00a8sZ25hrm02j9oA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tchatchkees - Mezuzah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('72f21989-4d3d-45b5-9451-45ca9f814d2b', 'Tchatchkees - Mezuzah', 'tchatchkees-mezuzah-1772434541091-kv2t1', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tchatchkees?cid=4038394&permalink=tchatchkees-mezuzah-daf77c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c0f5c2e4-1c63-4d8d-ae73-710ccfa17f10', '72f21989-4d3d-45b5-9451-45ca9f814d2b', 'pJpAPxhFMWpbVG6hFFF02e9leEC2Wx1M5Yy02MMbzyRNo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Nigunim - Fast
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e8959e17-4f9d-4c17-a885-7788dadcd7e9', 'Nigunim - Fast', 'nigunim-fast-1772434541091-8a31u', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038250&permalink=nigunim-fastmp4-035953', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6f2c6f7a-2d1e-491d-9f8b-bd5a411262a0', 'e8959e17-4f9d-4c17-a885-7788dadcd7e9', 'P00dVwmzWyu8gRtUmyRXioDleuxa01zlS1NWm2ON2bwo8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Change - Shaindel Antelis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('bc2f6f38-4030-4384-b669-3865bf09d068', 'Change - Shaindel Antelis', 'change-shaindel-antelis-1772434541091-at7ko', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450194&permalink=change-shaindel-antelis-42de14', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('617b8e63-e331-4a4f-8b29-e06a1a64bd2a', 'bc2f6f38-4030-4384-b669-3865bf09d068', 'LaXWjRYIR4nhi4R3RpwrhpS00duHh6CVmU9791fxm2HY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Toodaloo - Farm
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3693d58e-ac48-42b3-a380-0ce79a87cd04', 'Toodaloo - Farm', 'toodaloo-farm-1772434541091-qoppm', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4038414&permalink=toodeloo-episode-1-hdmp4-7213f0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('52b2d89e-37e3-4269-9949-117154186789', '3693d58e-ac48-42b3-a380-0ce79a87cd04', 'NW0271VShEwu00Ak37O1sBfnjl6PIQs00KE7zw2YnbbRPw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Niggunim #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('0ad290ca-6691-4629-8eb6-00c977ea5f59', 'Niggunim #2', 'niggunim-2-1772434541091-0ussv', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-niggunim?cid=4038251&permalink=the-rebbes-niggunim-2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1efbf546-4600-4f8f-b713-264914250126', '0ad290ca-6691-4629-8eb6-00c977ea5f59', '9zRh4UXX1krZKgIFo2DRqdNvyiG6xaIiKfZyckF1yHQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: In Concert - Shiras Hayam
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b15d3eff-dc0f-47ed-a912-187e93f09c60', 'In Concert - Shiras Hayam', 'in-concert-shiras-hayam-1772434541091-32hzt', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450199&permalink=in-concert-shiras-hayam-78b575', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1d9da25a-cc17-4cda-9f0b-3b66eb12d835', 'b15d3eff-dc0f-47ed-a912-187e93f09c60', '00v02Jjkhcc4Q86zHFM01OyNNzVa802xtaAzdy02yvohi702A', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Toodaloo - Park
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2aed0801-7c0b-4579-bba3-38d436e2d6f2', 'Toodaloo - Park', 'toodaloo-park-1772434541092-g1bqe', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4038415&permalink=toodaloo-2-park-266971', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3ea940dd-b158-46ba-a789-d5745b698af1', '2aed0801-7c0b-4579-bba3-38d436e2d6f2', 'DOz14oscVhN3BFQREEnRAjo02X25q7aUE02gz8VzbsGwo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Believe - Shiras Hayam
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('0def6f33-2774-4c2b-9c22-5d1af925fa51', 'Believe - Shiras Hayam', 'believe-shiras-hayam-1772434541092-ndjyv', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450202&permalink=believe-shiras-hayam-d47c2b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a1ced95c-3612-4b85-8024-de4d495cde76', '0def6f33-2774-4c2b-9c22-5d1af925fa51', 'A5xvjxgmyhvQXDhHiC01HXmO6DyUh8EapVz25euKs9PQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Treehouse - Friends
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('37d22d2d-1068-44c6-aa7b-a47c1bb48b06', 'Mitzvah Treehouse - Friends', 'mitzvah-treehouse-friends-1772434541092-019ck', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzvah-treehouse-collection?cid=4029436&permalink=mitzvah-treehouse-2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f37c0a3a-2071-48ff-88f4-01841f89d182', '37d22d2d-1068-44c6-aa7b-a47c1bb48b06', 'l02bW7kMPxo8VGfTGz01ZfapLZEz0029qm4IY5CIsLGyJQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Treehouse - Shabbos
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d75651b4-6036-42a8-95e3-8dc9f0869922', 'Mitzvah Treehouse - Shabbos', 'mitzvah-treehouse-shabbos-1772434541092-pgul0', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzvah-treehouse-collection?cid=4029437&permalink=episode-3-cymp4-eec9cf', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('bfbbc2d3-4f36-4912-abb8-b60f578e473a', 'd75651b4-6036-42a8-95e3-8dc9f0869922', '02nwFOjkmqfSalPUnjfxPauLuKb00ARpq2ZMa02fhz50201Q', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Progress: 200/481 videos processed

-- Video: Toodaloo - Airplane
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b3b25209-6282-4e76-b865-4e4b4a478782', 'Toodaloo - Airplane', 'toodaloo-airplane-1772434541092-afbe5', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4038416&permalink=toodeloo-episode-2-hd-1d6758', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e4e9d1da-7f03-450c-993e-2673eeb6921f', 'b3b25209-6282-4e76-b865-4e4b4a478782', 'NU28kkaGkSzrBc4wVa6vIQ7L5e4mqEm5dVQZh01kEjA4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Toodaloo - Fishing
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('80141fa3-1d91-4f2f-8950-d7f07026bd66', 'Toodaloo - Fishing', 'toodaloo-fishing-1772434541092-hja7g', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4038417&permalink=toodeloo-4-fishing-dbdb83', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c2ca6bbf-a2a6-4089-a2d3-7ce52ca7c6d2', '80141fa3-1d91-4f2f-8950-d7f07026bd66', 'HLwbaDMZFJIOq9upvZb1EOolBcgJr3JLId1DETOjeD8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Maoz Tzur - Shiras Hayam with Dalia Oziel
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('5bfcd76c-dede-4aa2-b9be-1d088df84502', 'Maoz Tzur - Shiras Hayam with Dalia Oziel', 'maoz-tzur-shiras-hayam-with-dalia-oziel-1772434541092-rpugv', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450206&permalink=maoz-tzur-shiras-hayam-with-dalia-oziel-c2bef8', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('fb288c9e-cf04-4161-9a82-2db3f3699ce5', '5bfcd76c-dede-4aa2-b9be-1d088df84502', '6AytdDDBINR01lmuqglMxz027furkb1FqpY529c5SHp84', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Treehouse -  Planting
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('33713073-fadb-4a2b-99ee-96d1efdb9fca', 'Mitzvah Treehouse -  Planting', 'mitzvah-treehouse-planting-1772434541093-2lfwx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzvah-treehouse-collection?cid=4029438&permalink=episode-4-cymp4-6535fc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9e9ca3a4-96f9-4471-95f4-9047d982aa1c', '33713073-fadb-4a2b-99ee-96d1efdb9fca', 'EBb5LA8fFW1FBA1e2P7YN9q502Y400Zz6lCqmYs01KD8jU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Believe - Shiras Hayam (acoustic)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b2000b5d-fa51-40f6-84ee-8e16b22a9b9f', 'Believe - Shiras Hayam (acoustic)', 'believe-shiras-hayam-acoustic-1772434541093-ze5fs', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450209&permalink=believe-shiras-hayam-acoustic-1cd224', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ff594a82-25ff-420b-bfba-4a6dab7b9226', 'b2000b5d-fa51-40f6-84ee-8e16b22a9b9f', 'p1ZEw9015uC4KGug9001VeJ801tyDW501wyyGOWv43Ke1Gs', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Toodaloo - Birthday
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ae40c84d-f3d1-41d3-8b18-73bc0c031362', 'Toodaloo - Birthday', 'toodaloo-birthday-1772434541093-kzuyb', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4038418&permalink=toodeloo-episode-5-hd-546334', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2217fdaf-3dd1-4ffb-89ac-0e4597e49959', 'ae40c84d-f3d1-41d3-8b18-73bc0c031362', 'z3mWkZt6wqNAXIFLpIz3J1eOh300U6mDOK6CcxPrXGMM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Treehouse - Good Morning
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('59154071-ba77-4d46-b142-12f035b9b1c8', 'Mitzvah Treehouse - Good Morning', 'mitzvah-treehouse-good-morning-1772434541093-272sa', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzvah-treehouse-collection?cid=4029439&permalink=treehouse-episode-5-cymp4-1dad5c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b9270b86-d6b2-41dd-809a-9cd4d3025b16', '59154071-ba77-4d46-b142-12f035b9b1c8', 'dGrMdEGmTrkVwYqXsWpcdu5wPAo6xWmL17Hpz6SDr5Y', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Toodaloo - Beach
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('54dc4906-54d9-4dca-a138-e17b306f2912', 'Toodaloo - Beach', 'toodaloo-beach-1772434541093-6nbit', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4038419&permalink=toodaloo-6-beach-30d57a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a222d11d-59bd-4899-a9b9-e77c5b790ae3', '54dc4906-54d9-4dca-a138-e17b306f2912', '00cR2gqU4yvp4H4tfqtDZY1GU8PSaB4VUXvwEY8KWBCM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Treehouse - Welcome
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ce051582-26c0-40fe-a5a7-0abb7c7cbd17', 'Mitzvah Treehouse - Welcome', 'mitzvah-treehouse-welcome-1772434541093-92t04', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzvah-treehouse-collection?cid=4029440&permalink=mitzvah-treehouse-1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('48875c70-005d-4bf7-9c8e-2e151a1ef153', 'ce051582-26c0-40fe-a5a7-0abb7c7cbd17', 'JQSL1oTWgCsj3fETYX5GsjyxCoTsk7rus4VK029SNu3Y', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Sing-A-Long Siddur
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c221fc89-fc37-4a31-9e17-2c5496eb4933', 'Sing-A-Long Siddur', 'sing-a-long-siddur-1772434541093-cxpz9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/simcha-city-collection?cid=4038353&permalink=00-final-compmp4-9fabe7', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('196ca735-a05c-4cf6-861c-c020294960c1', 'c221fc89-fc37-4a31-9e17-2c5496eb4933', 'x00pk8sMrpPFAb02T6Du01m8AxupB51yoLISpHOPqqn4V8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Toodaloo - Ice Cream
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c63202a7-7f4f-45b8-a802-fc8fea30431f', 'Toodaloo - Ice Cream', 'toodaloo-ice-cream-1772434541093-3utst', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4038420&permalink=toodeloo-episode-7-ice-cream-88641c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f2095229-bdb0-4ed4-bd33-e912c4a2719f', 'c63202a7-7f4f-45b8-a802-fc8fea30431f', '8yj7V2ToXnZMFvt01aFXkCneavtbNsE00tEwBVT59mZKQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Toodaloo - Lemonade
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9d8adf28-7c0f-4dcf-aae2-2940df4c9044', 'Toodaloo - Lemonade', 'toodaloo-lemonade-1772434541093-4p1a4', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4038421&permalink=toodeloo-8-lemonade-0379cc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b7eca543-94ab-4f95-b772-464de691feee', '9d8adf28-7c0f-4dcf-aae2-2940df4c9044', 'i02pSUYMMGqUBM5uNfyeNrTstZEDBAhYNYeWpTIqiv6M', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Simcha City - Pesach
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6033550d-a783-4fc6-96db-a836f1f56b74', 'Simcha City - Pesach', 'simcha-city-pesach-1772434541093-p5pyn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/simcha-city-collection?cid=4038354&permalink=simcha-city-pesach-6b14fb', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2f4da4d1-c154-4d7b-88b4-38b0666f44ff', '6033550d-a783-4fc6-96db-a836f1f56b74', 'w1HUYxchIOT1rFwtmAxMT53KpX9DNYZnM4scgiEQg7Y', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Simcha City - Purim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e83976e3-c181-498e-bd7f-2b11bac3f325', 'Simcha City - Purim', 'simcha-city-purim-1772434541093-o4mtg', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/simcha-city-collection?cid=4038358&permalink=1_1-d40cf6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('222d1b5e-366e-4abe-9db7-56c46c2485bd', 'e83976e3-c181-498e-bd7f-2b11bac3f325', 'MWCBtiBDrz6cny2oa6LqvLGJZl8OGQ1mc9Lyg01ds029c', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Toodaloo - Bike Shop
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6f217ee5-d777-431d-a8b3-ce781a621616', 'Toodaloo - Bike Shop', 'toodaloo-bike-shop-1772434541094-7yr0j', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4038422&permalink=toodeloo-episode-9-bike-shop-57d716', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('95be04ff-dae4-42b8-94ba-41a2a5f5f647', '6f217ee5-d777-431d-a8b3-ce781a621616', 'vSftOTTJqnnM01e6QNzUOPKbX4226lCJqZSLvUcpZaV8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Spread The Love - Shiras Hayam  with Maayan Davis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cf4cd9db-aad7-47e7-8cbe-8caec919fbb1', 'Spread The Love - Shiras Hayam  with Maayan Davis', 'spread-the-love-shiras-hayam-with-maayan-davis-1772434541094-96qe1', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450219&permalink=spread-the-love-shiras-hayam-with-maayan-davis-c3c8e2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('7777cd64-dc68-421a-bdb1-a28005a6ac51', 'cf4cd9db-aad7-47e7-8cbe-8caec919fbb1', 'o7c74gbTsV02a02Z00hwdStadDbAGSvIkBe00vJE00kl9jVE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Side by Side - Shiras Hayam
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ed1315bd-af7b-410a-8f57-60a94c998dd7', 'Side by Side - Shiras Hayam', 'side-by-side-shiras-hayam-1772434541094-3ek64', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450220&permalink=side-by-side-shiras-hayam-d1df91', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3da82f86-8295-447e-8daa-5ae3091ede4b', 'ed1315bd-af7b-410a-8f57-60a94c998dd7', 'aCUlR27fiDEqKd6e7o1wfro5ibezVdMjBK8dbMx016Mw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Chosen - Shiras Hayam
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('bddc1390-bf17-4cdb-bc6b-c9ec8f2cea7c', 'Chosen - Shiras Hayam', 'chosen-shiras-hayam-1772434541094-f34o3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450223&permalink=chosen-shiras-hayam-e3cde3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d57f20d1-f312-409d-944c-63524994a94d', 'bddc1390-bf17-4cdb-bc6b-c9ec8f2cea7c', 'w5AomezAV0001jxlnN008cOT1Xn9tIDJhFcdlqpwlKikaw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Little Voices - Shiras Hayam
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('45b0cede-1088-4408-8900-2c95ea45b863', 'Little Voices - Shiras Hayam', 'little-voices-shiras-hayam-1772434541094-j8n8t', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450226&permalink=little-voices-shiras-hayam-009473', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2bb23f82-fb20-461a-a7e2-cb9929f1b2c8', '45b0cede-1088-4408-8900-2c95ea45b863', 'YG2rg4f2bYpmYDA68vaWwB1TzRjssq00x7SyT02JYw5aM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Wonders of Hashem - Bees
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7d92b930-8789-48f1-9e14-699c989aa445', 'Wonders of Hashem - Bees', 'wonders-of-hashem-bees-1772434541094-ejmvu', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/wonders-of-hashem?cid=4038551&permalink=bees4mp4-a759aa', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4a1f7405-72c8-411c-a5f6-4b006c850a05', '7d92b930-8789-48f1-9e14-699c989aa445', 'V01gVIL029iypZaWvXGCsphmMc7ZAS1gFzrqyp9Q8QCFQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Wonders of Hashem - Bears
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c8df8e6b-f0b5-4a3a-ae49-19454ad2026b', 'Wonders of Hashem - Bears', 'wonders-of-hashem-bears-1772434541094-z8xvs', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/wonders-of-hashem?cid=4038557&permalink=wonders-of-hashem-bears', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2ef41c4d-b59f-4997-b55f-600309df5cde', 'c8df8e6b-f0b5-4a3a-ae49-19454ad2026b', 'N18ybEk02OyoDj4OyNtmVpXnpYyywNg02L5hQzEzVI9Gg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tricks - Can Grenade
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('286f6008-bc53-4122-ae6c-a6f4e0260c7e', 'Tricks - Can Grenade', 'tricks-can-grenade-1772434541094-38i8j', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tricks?cid=4029380&permalink=can-grenademp4-c9ff71', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('829b7bff-3168-4392-b1b4-f9243ba75164', '286f6008-bc53-4122-ae6c-a6f4e0260c7e', '3RYBOG43fOg77Ckadz6b9dz3NTrm4VA01hRzxu8ClT00I', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Wonders of Hashem - Frogs & Grasshoppers
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7b3ac7f7-0c03-4ee7-8b0d-27be97fea9eb', 'Wonders of Hashem - Frogs & Grasshoppers', 'wonders-of-hashem-frogs-grasshoppers-1772434541094-7lff2', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/wonders-of-hashem?cid=4038552&permalink=wonders-of-hashem-pesach-7eec3d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('65d90764-1598-4888-bb17-f6cd1f2365f2', '7b3ac7f7-0c03-4ee7-8b0d-27be97fea9eb', 'QYd8NMqhdZjqlqZBr9enXDvTR1lwffjSsof5VCbarWE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Penina Ballerina Level #1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('0057497c-cd88-4ec5-82ff-48df12881628', 'Penina Ballerina Level #1', 'penina-ballerina-level-1-1772434541094-le0d7', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-penina-ballerina?cid=4029518&permalink=penina-ballerina-level-1-d53c77', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('70f8627f-dcf7-4353-953b-815ccdf2f0d1', '0057497c-cd88-4ec5-82ff-48df12881628', '01OZ8WtGBraDTgmA7rv5LJwb9kOKN88GJZWkM3brPODY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Wonders of Hashem - Desert
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('aa0e264d-3ce0-49a5-82ad-5c2331f7f560', 'Wonders of Hashem - Desert', 'wonders-of-hashem-desert-1772434541094-wnace', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/wonders-of-hashem?cid=4038555&permalink=woh-desert-1c661c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('95b61012-5f80-4504-936f-b9b3e38e431c', 'aa0e264d-3ce0-49a5-82ad-5c2331f7f560', '3zvQuFsAmUGG00vh9r8H32fZ6QdH3reZeWENSf3uzUjI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Illusionist Show 1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('486ebcb9-db01-4cec-91c9-a0ce354146c8', 'Illusionist Show 1', 'illusionist-show-1-1772434541095-wy0jq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tricks?cid=4029381&permalink=ilan-smith-magic-and-illusions-show-1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('7780ff5d-aa00-449a-8368-05724e92df71', '486ebcb9-db01-4cec-91c9-a0ce354146c8', 'ee02Tsi76cdJ01F5fcGfA4jmC8CxtpOXLh4tPelvaGhqQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Penina Ballerina Level #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('77032cdc-c424-40f6-b390-5f962d747af9', 'Penina Ballerina Level #2', 'penina-ballerina-level-2-1772434541095-h9vji', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-penina-ballerina?cid=4029519&permalink=penina-ballerina-level-2-c89ec8', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('be0baa53-55ba-4b5c-97b9-d64cc1dcaf55', '77032cdc-c424-40f6-b390-5f962d747af9', '6a7fvjrmjafkUm01SXCywaorIETiqfnjnd0025uZg00sr8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Wonders of Hashem - Safari (Yiddish)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3b4bbbb6-6a62-420d-ba7c-ef4c971d1e05', 'Wonders of Hashem - Safari (Yiddish)', 'wonders-of-hashem-safari-yiddish-1772434541095-nzjb3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/wonders-of-hashem?cid=4450381&permalink=wonders-of-hashem-safari-yiddish', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b00e6846-10a8-4d1b-a11b-fbf40b7d2209', '3b4bbbb6-6a62-420d-ba7c-ef4c971d1e05', 'RW6FdOk01Eavu028EIOfc52jscVlaD01TcNrVMGZy00YmZs', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Illusionist Show 2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('43736c96-9b5e-48fc-ba46-d8dd56a98e01', 'Illusionist Show 2', 'illusionist-show-2-1772434541095-2db8d', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tricks?cid=4029382&permalink=live-show-e4022e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('31428a9d-a724-4268-b767-01eb3aec128c', '43736c96-9b5e-48fc-ba46-d8dd56a98e01', 'dfOPhheVSiZL5GzEulHykJaGFRIAQh0030200F01wQJ3kC8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Penina Ballerina Level #3
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('faa4f268-399a-4da0-adea-c889fb499594', 'Penina Ballerina Level #3', 'penina-ballerina-level-3-1772434541095-vx194', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-penina-ballerina?cid=4029521&permalink=penina-ballerina-level-3-00b437', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('90b0ea24-80c1-48fa-9840-b4ef8351899b', 'faa4f268-399a-4da0-adea-c889fb499594', 'QcclJ01nUqtPOJr02DDhW3zSTuBwQMHJtHpCSpwI02kyLM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tommar and Friends #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('0351fc88-6226-4fe6-b60c-2cb2ede6761c', 'Tommar and Friends #2', 'tommar-and-friends-2-1772434541095-1vxqs', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tommar-friends-1?cid=4038412&permalink=tommar-and-friends-2-11-29-20mp4-3f2681', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5ab91eef-cc0d-4510-9072-65872bcd19e8', '0351fc88-6226-4fe6-b60c-2cb2ede6761c', 'y6h011HOYwymbZS1CASvfQgwOiRGyMX4WFySQzzRGOeU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tricks - Vanishing Matchbox Lid
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6a54d614-20dd-498f-a840-5e2c1d37b441', 'Tricks - Vanishing Matchbox Lid', 'tricks-vanishing-matchbox-lid-1772434541095-om3fk', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tricks?cid=4029383&permalink=tricks-vanishing-matchbox-lid', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0b62f731-15f5-483e-a44c-73edb56e0067', '6a54d614-20dd-498f-a840-5e2c1d37b441', 'XNu02B0201019DYR5fB01utjy1QIkgUt1wBOt8LQt57Ucies', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: “I Believe in Me” (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('449ce955-e169-4651-8f00-a84b5bf96c59', '“I Believe in Me” (kol isha)', 'i-believe-in-me-kol-isha-1772434541095-9awqn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-penina-ballerina?cid=4029523&permalink=i-believe-in-me-80fac9', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d417c3e1-d58c-40c5-898d-6f029b1806f2', '449ce955-e169-4651-8f00-a84b5bf96c59', 'xuqW42w01gjX02pgQIV2GqcnWyB8dyZwIaDflvw59kG7U', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tricks - Recycled
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('10ecaddd-bc3c-4f3e-ad6e-4051e9e7a5b6', 'Tricks - Recycled', 'tricks-recycled-1772434541095-azv7o', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tricks?cid=4029384&permalink=tricks-recycled', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3350e81d-f936-46bf-afe9-89b32bf43941', '10ecaddd-bc3c-4f3e-ad6e-4051e9e7a5b6', 'l1R2ZNF01u7sztKEdvi9Rq57K14X5HaHfitPHDKVR00yY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tommar & Friends - #3
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('88283fbe-5c0d-4387-899a-6ba9d9fd4a6a', 'Tommar & Friends - #3', 'tommar-friends-3-1772434541096-4el20', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tommar-friends-1?cid=4038413&permalink=tommar-and-friends-3-accf09', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('aafda652-d3cb-4608-9ff4-3e06f8ca5b01', '88283fbe-5c0d-4387-899a-6ba9d9fd4a6a', 'lmJMofQIPH3zNnHpK1oR13Qv016W4pi94wnA00yEyq5Y4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tricks - Note Roll
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c7fe2b18-b907-4605-803d-045f2977d1cc', 'Tricks - Note Roll', 'tricks-note-roll-1772434541096-i2rbh', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-tricks?cid=4029386&permalink=note-rollmp4-63679b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('575734d2-e649-4fcf-8a67-14544e183085', 'c7fe2b18-b907-4605-803d-045f2977d1cc', 'cC7uz8QhqRj2KBKno01xt01xgdlQ5bnF3mvH021AZJNHUM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Interin Kreeg - Yiddish
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7568d706-5d66-4e7c-b33f-0ba0aa25d41b', 'Interin Kreeg - Yiddish', 'interin-kreeg-yiddish-1772434541096-1h4jo', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-yiddish-plays?cid=4233952&permalink=interen-kreeg-yiddish-d958b0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d946ecef-5cfa-478b-92fc-3b34a9248445', '7568d706-5d66-4e7c-b33f-0ba0aa25d41b', 'GS3Y2UGkWjduj6mLBF84RXLsUn8lnEQcLUWPIJFGi3Q', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Fascinating Facts: Thunder & Lightning
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ca3c0f16-feaf-4f50-920c-ff631c380d1c', 'Fascinating Facts: Thunder & Lightning', 'fascinating-facts-thunder-lightning-1772434541096-svxwb', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-fascinating-facts?cid=4029371&permalink=thunder-and-lightning-7b35ff', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('05e7f79e-8789-4c97-93a0-f3feb9a21f9a', 'ca3c0f16-feaf-4f50-920c-ff631c380d1c', 'IUDFa6kJ00p7nkiAp57A7aZjJ6UyAfvL9HBoaJE7LFTw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Iberen Feedl - Yiddish
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('996a7c87-d400-418f-9d60-3e008092fcbe', 'Iberen Feedl - Yiddish', 'iberen-feedl-yiddish-1772434541096-jk9lr', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-yiddish-plays?cid=4222755&permalink=iberen-f-show-w-bts-3bb770', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4373cfea-6ad1-4541-9d97-6ab0bc88b855', '996a7c87-d400-418f-9d60-3e008092fcbe', 'WcC4dSfR3LblqxOKW8WUrq5g00Peh8gqxj7seDpdRmYo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Fascinating Facts: Volcanoes
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('14345f0a-04ee-4be8-8b57-b4e3e8e151e1', 'Fascinating Facts: Volcanoes', 'fascinating-facts-volcanoes-1772434541096-rwt7z', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-fascinating-facts?cid=4029372&permalink=volcanoesmp4-fc3e84', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5276ba12-c64c-4248-bcbe-606484764997', '14345f0a-04ee-4be8-8b57-b4e3e8e151e1', 'RGZeZ9jFAm91Emzk01002F026RS9X9cV5V0202372AAh1JUk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Interin Bild - Yiddish
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3e1178c3-4e92-4366-b4f3-22a3dabf1e0d', 'Interin Bild - Yiddish', 'interin-bild-yiddish-1772434541096-5lx5s', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-yiddish-plays?cid=4222757&permalink=interen-bild-yiddish-1faecb', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e44d82f5-7fe2-49e6-b51f-ef63201fc517', '3e1178c3-4e92-4366-b4f3-22a3dabf1e0d', 'IlId2GItXjujoE7DnqI02qknXInqDOVTE1j6TBG5pGA8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Fascinating Facts:  Rockets
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('4d0afe6b-3eab-4145-ab30-f35648ec5e3a', 'Fascinating Facts:  Rockets', 'fascinating-facts-rockets-1772434541096-u22ea', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-fascinating-facts?cid=4029373&permalink=fascinating-facts-rockets-f216a8', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('fad2470b-3773-4c5c-8c0b-d0be92f4c02f', '4d0afe6b-3eab-4145-ab30-f35648ec5e3a', 'kp4TNYBhIzgAPebmkcklEglDYBax7Z00EJq01C48Fbvp00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Interin Riken - Yiddish
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7f784b80-7d60-48fd-94dc-0110d18393ca', 'Interin Riken - Yiddish', 'interin-riken-yiddish-1772434541096-4hxto', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-yiddish-plays?cid=4222759&permalink=interin-riken-3ebc74', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6cecd0bc-27be-45fd-9cde-7c5d4ebfc62e', '7f784b80-7d60-48fd-94dc-0110d18393ca', '11Zxl9caJcxgnaIxs02WIpuAWLRtON01BKZ006XRxkVQuA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Pinchey Comes Home
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7ba7e1b6-f1ac-44e2-88cb-41ec53ab2dbd', 'Uncle Pinchey Comes Home', 'uncle-pinchey-comes-home-1772434541096-umbj8', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-timeless-puppet-shows?cid=4038133&permalink=uncle-pinchey-comes-home-3ae6ab', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('8f13f2f6-eaac-4bef-bf3b-1a4298b0d7ac', '7ba7e1b6-f1ac-44e2-88cb-41ec53ab2dbd', 'yuTIvsfWnJpxUyVNHFFO1EDWPCJNICkg6Vvbv9ruQRE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Life of Hillel
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c025f8b4-5d09-45fb-8dea-1d31a7da5be8', 'The Life of Hillel', 'the-life-of-hillel-1772434541097-rapjc', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-timeless-puppet-shows?cid=4038138&permalink=life-of-hillel-widemp4-0c6277', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2a58391b-ae76-47f7-8e2d-ea9ab965b940', 'c025f8b4-5d09-45fb-8dea-1d31a7da5be8', 'L00bG9LmFrSq9T1OjzAVmfNIbB01K4H00Lmpf200fDoFAts', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Intermission - Yiddish
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7249c74f-7470-492e-afca-dc0fb8afd8e6', 'Intermission - Yiddish', 'intermission-yiddish-1772434541097-lr41s', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-yiddish-plays?cid=4222756&permalink=intermission-full-show-w-bts-67a9fe', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a047ce73-e286-4ddc-9eb6-a6ab4913431e', '7249c74f-7470-492e-afca-dc0fb8afd8e6', 'oHiqeW8Wn7grr01V01hdbSpgVdSLeYSlo00T01i3QLtcmqo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Team
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('63c986dc-df35-40cf-88f0-990bfb50a691', 'Mitzvah Team', 'mitzvah-team-1772434541097-d1wt7', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-mamish-animations?cid=4029420&permalink=mitzvahteammp4-32607f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c090ef4e-218a-43ec-bde4-e0d7829ded7b', '63c986dc-df35-40cf-88f0-990bfb50a691', 'Vs4WPbdODmf01KIkuIgIqlvgSBuIjvhGJ9PiPZtbRIPU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Adventures of The Shpy! Shavuos
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('62c24f96-befe-48c6-9f50-ad8cb2e60ecd', 'Adventures of The Shpy! Shavuos', 'adventures-of-the-shpy-shavuos-1772434541097-rjcab', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-shpy?cid=4038405&permalink=shpy-shavuos-fullmp4-3035a8', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('52b9c241-37e0-4eb8-8a09-090fe22fddb5', '62c24f96-befe-48c6-9f50-ad8cb2e60ecd', '01C6yhCTcKPreEJrvS3E2XxTNNLYxui02YGpLfS9dkO004', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rambam Cures The King
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9e33f5fd-7080-4018-ac0d-070016a00acc', 'Rambam Cures The King', 'rambam-cures-the-king-1772434541097-1u2rq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-timeless-puppet-shows?cid=4038139&permalink=rambam-cures-the-king-16f8f6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('dfddb8f0-f08e-4b5f-830a-8f80f8b4ca5e', '9e33f5fd-7080-4018-ac0d-070016a00acc', 'phBtuWGsJ01goUEThvMSydB9Olqa901Qaz00K7IIqCrnj4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rebbetzin Tap - Intro to acting - #1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('fb8938fb-261d-41ae-be34-d97863458ac6', 'Rebbetzin Tap - Intro to acting - #1', 'rebbetzin-tap-intro-to-acting-1-1772434541097-jfep6', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rebbetzin-tap-collection?cid=4038255&permalink=acting-class-1_2mp4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4d51ce3b-c0e0-49aa-9664-7fdf5aeb89d7', 'fb8938fb-261d-41ae-be34-d97863458ac6', '712h01YUn7A02PWZrl0101SSZgxT4bvccOESS4PsNX00SI6A', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Adventures of The Shpy! Missing Schach
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6065370f-f957-4c93-b077-e6eea5dc1150', 'Adventures of The Shpy! Missing Schach', 'adventures-of-the-shpy-missing-schach-1772434541097-r7a5o', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-shpy?cid=4038406&permalink=shpy-sukkosmp4-c1e8d7', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('318cf55e-b3fa-44fa-9ae3-97b347bc9c97', '6065370f-f957-4c93-b077-e6eea5dc1150', 'UrWiUH0048vN4j2Pp4tCEloK1qTJBoQYMdy7STQlnkmE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Dancing Bear
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('bc72cb86-2f81-45d2-a6eb-d4fb2617fcd1', 'The Dancing Bear', 'the-dancing-bear-1772434541098-j3ea6', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-timeless-puppet-shows?cid=4038144&permalink=the-dancing-bear-93749-8c0f2e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d681c1c3-396c-45e6-a232-d74054784a43', 'bc72cb86-2f81-45d2-a6eb-d4fb2617fcd1', 'bnNaAPKlPlo017Y2kMChjbyGlwdltnk02bg8uTbNskqYI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rebbetzin Tap - Intro to acting - #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9f4fb86d-b576-404a-8d0a-f0f1010e85df', 'Rebbetzin Tap - Intro to acting - #2', 'rebbetzin-tap-intro-to-acting-2-1772434541098-m0ujo', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rebbetzin-tap-collection?cid=4038256&permalink=acting-class-2_1mp4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('57f777eb-c4fd-46e4-8ae5-de6e4640db9c', '9f4fb86d-b576-404a-8d0a-f0f1010e85df', 'h5o2Kc4P2qvyp2JfuZPanOBKnvB9jFtVAXyROGc3JH4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Adventures of The Shpy! #1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('5adbe4bd-3759-4dbd-a7fe-18cb2cd9c2eb', 'Adventures of The Shpy! #1', 'adventures-of-the-shpy-1-1772434541098-ndjav', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-shpy?cid=4038407&permalink=1mp4-542858', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('df2d563b-d0be-4866-9e8b-417ba3af60a2', '5adbe4bd-3759-4dbd-a7fe-18cb2cd9c2eb', '8SjusnVxPhQA01u0200OQb2mhwPFLlm6iYTC001nih4JQWk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmayunkee: Checking Mezuzah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('bcbecca1-1c06-42ff-ae4f-11a5df7456e8', 'Shmayunkee: Checking Mezuzah', 'shmayunkee-checking-mezuzah-1772434541098-e8g0q', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmayunkee-collection?cid=4038317&permalink=checking-mezuzah-d9ba18', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2072f12f-cf98-413f-90a9-36e701cf9a9b', 'bcbecca1-1c06-42ff-ae4f-11a5df7456e8', 'ReEd014GOxxtzVvqRaOYiajrEpOHgwszUxuE02lSzO1X8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rebbetzin Tap - Intro to acting - #3
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e7c73ae1-5870-47a8-b4cf-2303a3525e43', 'Rebbetzin Tap - Intro to acting - #3', 'rebbetzin-tap-intro-to-acting-3-1772434541098-fkzha', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rebbetzin-tap-collection?cid=4038257&permalink=acting-class-3_1mp4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a57ab848-af9d-4e67-ba2e-96bee20acd55', 'e7c73ae1-5870-47a8-b4cf-2303a3525e43', 'Xj02ZwVlQ2h402PV4SIR8QUQdgxykhFN005b6qJ7gmkq9I', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmayunkee: Palace Guard
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ce3d9709-4d9e-427f-a0d3-755b8814dd33', 'Shmayunkee: Palace Guard', 'shmayunkee-palace-guard-1772434541098-p6wri', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmayunkee-collection?cid=4038318&permalink=british-guardmp4-9ccdea', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('14e173f1-1959-423c-bc23-60d68fd0ea0f', 'ce3d9709-4d9e-427f-a0d3-755b8814dd33', 'NPSuDyfyENYs01q016qOuoOxmb00XhbRx00s4Na6kXoL4014', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Adventures of The Shpy! #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('81336dba-9836-464e-8b13-e4e071bdd367', 'Adventures of The Shpy! #2', 'adventures-of-the-shpy-2-1772434541098-3wdtg', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-shpy?cid=4038408&permalink=2mp4-4b2fa6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('dca8c2d7-3a65-447a-afca-5217fd02a7ec', '81336dba-9836-464e-8b13-e4e071bdd367', 'EGalTf8YfT7i95mH8JVqp00A4TE5Z81atuk2s84acYd8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmayunkee: Meeting
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b5366f27-8ccc-4bdf-bfc4-a5f5d8d67175', 'Shmayunkee: Meeting', 'shmayunkee-meeting-1772434541098-a1h3a', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmayunkee-collection?cid=4038319&permalink=gvir-meetingmp4-3eb257', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('088864c7-c5ff-4081-8275-02a04c9b1f68', 'b5366f27-8ccc-4bdf-bfc4-a5f5d8d67175', 'dw45qQMy7LggwDDbp2HK1OolgeqZURAUcIsOhYIWInc', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmayunkee: Havdalah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('fd815e35-b847-4647-ab14-6db431cc5488', 'Shmayunkee: Havdalah', 'shmayunkee-havdalah-1772434541098-eo10l', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmayunkee-collection?cid=4038320&permalink=havdallahmp4-684883', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('db8e4c58-d2b8-4c89-94cf-b07fa50d785f', 'fd815e35-b847-4647-ab14-6db431cc5488', 'HuiyXM4OFOuiqQaHeAKYh6fJtfTP8exk7mB4UBFdLZo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmayunkee: Street Musician
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('90897a6b-a631-4783-9814-81b4c502791f', 'Shmayunkee: Street Musician', 'shmayunkee-street-musician-1772434541099-lfeox', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmayunkee-collection?cid=4038321&permalink=street-musicianmp4-77392c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('db027c78-4b94-4275-9705-4ba2ac902fde', '90897a6b-a631-4783-9814-81b4c502791f', 'i8dUzgubsPa3v6pFgPrmP7vo7tn3mmqytTyP5pgDmG8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dr. Shnitzel - Dry Ice fun
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3bff6899-8134-4cec-84b7-8606a868c569', 'Dr. Shnitzel - Dry Ice fun', 'dr-shnitzel-dry-ice-fun-1772434541099-alwjw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-dr-shnitzel-science?cid=4029347&permalink=dry-ice-fun-with-dr-shnitzel-1e0a6f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a4f719ac-350a-4d13-9595-4b6172f949df', '3bff6899-8134-4cec-84b7-8606a868c569', 'SmXprzA02XYeOA7vLE3oAL1HoptNIrjYZwHbIpuHj46A', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmayunkee: Artist
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('0cc7fa6f-e817-4bea-a673-604e58f9bf40', 'Shmayunkee: Artist', 'shmayunkee-artist-1772434541099-nsslm', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/shmayunkee-collection?cid=4038322&permalink=artist-paintingmp4-0239a2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e6f5e191-1a48-451f-a06a-48c4d8c24ca1', '0cc7fa6f-e817-4bea-a673-604e58f9bf40', '1800r02dvVGBA7iLUEGgEolz8ouzTJv7qf3JhmbfXvaBY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Hello Bello!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7ffc2a89-d425-4df8-96e9-0c7890a3ef09', 'Hello Bello!', 'hello-bello-1772434541099-3ajj5', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-amazing-bello?cid=4029312&permalink=hello-bello', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('944d0575-1b29-4699-8ee3-611c83429537', '7ffc2a89-d425-4df8-96e9-0c7890a3ef09', 'OA3LXlna1K3pPAZRwzhT7OFzdoQsDAjuEWOpFxCZ8jY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Happy Birthday Bello
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('107a9137-b507-4f00-971a-fde21b68dadf', 'Happy Birthday Bello', 'happy-birthday-bello-1772434541099-lvesn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-amazing-bello?cid=4029319&permalink=02-happy-birthday-bellomp4-fb5299', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2935f6f0-6b0b-4b64-a908-9882a94790b4', '107a9137-b507-4f00-971a-fde21b68dadf', 'SwNovjB01eQGiVtPQclLc4U9rOjH01Woi4nB7ygKgOyWI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy Shabbos!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f9ae7b5a-8b0f-4373-a20d-fa48b5b50fad', 'Uncle Moishy Shabbos!', 'uncle-moishy-shabbos-1772434541099-tf912', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038531&permalink=uncle-moishy-volume-10mp4-8e63e7', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a512cebe-d114-4eaa-83d9-8614c40512bc', 'f9ae7b5a-8b0f-4373-a20d-fa48b5b50fad', 'q01LRE93QoaE9gS8MuBsS1WAld2oFOcW4c7F4Jb6wHlo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - CHANUKAH
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('51d7ad55-3fa4-490a-9eeb-8173f1d9e91e', 'Uncle Moishy - CHANUKAH', 'uncle-moishy-chanukah-1772434541099-x4dxq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038530&permalink=02_chanukah-1c524b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ff206636-0646-4a98-ae85-e6aa3f6454f1', '51d7ad55-3fa4-490a-9eeb-8173f1d9e91e', 'YVmLjoZznuchd4aV2uQPewVrsaSQjOlPfnbbV3M6oMc', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy: Hashavas Aveida
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('224da3c9-3e46-42a9-82f2-645399dbdb72', 'Uncle Moishy: Hashavas Aveida', 'uncle-moishy-hashavas-aveida-1772434541099-taeb3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038532&permalink=uncle-moishy-volume-9mp4-012cbc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('8ee32040-4303-4d7e-8cf6-4a83a289011f', '224da3c9-3e46-42a9-82f2-645399dbdb72', 'JjmZCxi3mRcDsRXlro7rpW01BjqLS02Ntxcyc00C8sSOGE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Big Apple Circus #1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('af6143e4-9d64-4d34-928e-ef2478d292d8', 'Big Apple Circus #1', 'big-apple-circus-1-1772434541099-wrirq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-circus-fun?cid=4037310&permalink=big-apple-circus-1mp4-c95b7e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('22d2d9f4-7dab-4ece-94e4-a33fcfd2de3d', 'af6143e4-9d64-4d34-928e-ef2478d292d8', '8bdMPbHSX2oj3pOXLcPQtVcqRXabplIy01a202aaWOXq4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Agent Emes #12 - The One That Got Away
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cc6c7c68-6219-4a7a-ad4d-4d9c8ddeca99', 'Agent Emes #12 - The One That Got Away', 'agent-emes-12-the-one-that-got-away-1772434541099-le6ty', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-agent-emes?cid=4334974&permalink=agent-emes-12-the-one-that-got-away', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f0f54459-ecc9-43dd-a1ed-0fe9e2ee4f9b', 'cc6c7c68-6219-4a7a-ad4d-4d9c8ddeca99', '02Tu00AoXuUQd947WFolgPbAeOFse402KKcD7qaSN025ja00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy: Refuah Shlaima!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c11d5a36-ae36-4fa6-a6c9-cd9ce2f5dddd', 'Uncle Moishy: Refuah Shlaima!', 'uncle-moishy-refuah-shlaima-1772434541099-acr23', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038533&permalink=uncle-moishy-volume-7mp4-2e19fc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c9a01f04-8182-4206-9b8d-2ef4f68c4260', 'c11d5a36-ae36-4fa6-a6c9-cd9ce2f5dddd', 'Zz8kF5qKTEIIIT7VzU6ImV7x3V7bZStsDbUhMsYPOYs', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ringling Circus #1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6c4550da-5dab-4a68-a96f-674be0edb277', 'Ringling Circus #1', 'ringling-circus-1-1772434541099-ys77h', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-circus-fun?cid=4037317&permalink=ringling-circus-1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d89ea1ce-ec2e-49a4-bcf5-1dbee6d62f43', '6c4550da-5dab-4a68-a96f-674be0edb277', 'QIjmxOM2ifwmQoSs7B900KltNtXFZyCVxoWDKTmkQZLg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Big Apple Circus #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('4af61c69-c46d-4911-ad0f-b7661d7e5e42', 'Big Apple Circus #2', 'big-apple-circus-2-1772434541099-2hfgw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-circus-fun?cid=4037312&permalink=big-apple-circus-2mp4-f2ece9', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e1f23b4d-b6eb-4033-b3f7-558e96a9f6c3', '4af61c69-c46d-4911-ad0f-b7661d7e5e42', 'PGmc00nZv1wBkaQWpEmcgkQVw1L9BOYHZrZszLrE29kg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy & the Mitzvah Men! #8
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cc7e9bf8-31f3-4fbb-bf26-d85541c7dc9d', 'Uncle Moishy & the Mitzvah Men! #8', 'uncle-moishy-the-mitzvah-men-8-1772434541100-lxrby', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038534&permalink=uncle-moishy-volume-8m4v-5d7a0a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('454fa83a-0009-468c-a115-e9a1d820bea8', 'cc7e9bf8-31f3-4fbb-bf26-d85541c7dc9d', 'weQHRdkkJ00z1EH2cfj7RqxptKbr59d1kQSS3kBrT6dQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy visits Torah Island!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('dc49f40e-fa4f-4ea7-85e0-6028dd73f5a0', 'Uncle Moishy visits Torah Island!', 'uncle-moishy-visits-torah-island-1772434541100-58ue4', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038535&permalink=uncle-moishy-volume-5', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1e8ff250-11eb-48dc-8643-d75c48300a05', 'dc49f40e-fa4f-4ea7-85e0-6028dd73f5a0', 'ha01fyiJnFP007dACEVvgtWoQpr006901YeBctuAf7uRnX00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ringling Circus #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('375b194b-c535-4d3d-80dd-185c7cf8137b', 'Ringling Circus #2', 'ringling-circus-2-1772434541100-vy8xs', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-circus-fun?cid=4037321&permalink=ringling-circus-2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('78465cd8-444d-4b01-b1e2-79741f0c1b58', '375b194b-c535-4d3d-80dd-185c7cf8137b', '4C56U00Jq7YP02JgRPfdpZjQUP9gn1PAH78TiRIbBh007s', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ringling Circus #3
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('37f907e1-466a-4f36-8d69-1d3083d425ff', 'Ringling Circus #3', 'ringling-circus-3-1772434541100-9qquo', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-circus-fun?cid=4037327&permalink=ringling-circus-3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('809d1e59-299d-4ccb-9951-3fd29143cd09', '37f907e1-466a-4f36-8d69-1d3083d425ff', 'ivDInPc8ChTfFhhZTrQQgusAfcDRsCXYpkepNv02qMz8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - Mitzvah Men #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e8181e4d-8a12-4a50-ae6a-64c6a9fd179e', 'Uncle Moishy - Mitzvah Men #2', 'uncle-moishy-mitzvah-men-2-1772434541100-1b4dx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038536&permalink=uncle-moishy-volume-2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0c49179a-9998-4359-957a-298009e106fc', 'e8181e4d-8a12-4a50-ae6a-64c6a9fd179e', '84nqOqNVZw00OSdAISNUilwhAf00k2n8sCCd0175iRoJuo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - Mitzvos Galore!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('97a553ca-c5ac-4ad6-89d9-c01002771bc6', 'Uncle Moishy - Mitzvos Galore!', 'uncle-moishy-mitzvos-galore-1772434541100-klcac', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038537&permalink=uncle-moishy-volume-15', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4203d19b-d8e0-45ac-8877-de2285191398', '97a553ca-c5ac-4ad6-89d9-c01002771bc6', 'dA549yLrq6sWD00izOV3XwAQyS9rBxFO6Iv3J2871vZw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Chanukah (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f568d615-5942-4717-8f70-92c8a9cc4277', 'Robin''s Nest - Chanukah (kol isha)', 'robin-s-nest-chanukah-kol-isha-1772434541100-iy3i4', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038261&permalink=robins-nest-episode-8-chanukah-kol-isha', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f61301e7-9511-4920-80d0-023b4c6c2b85', 'f568d615-5942-4717-8f70-92c8a9cc4277', 'QQnlPdazDG7tJoI2rm5E78mC3WbJVBw6uw2fqoNV7H8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Circus
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('10b6d614-fd79-4017-adf0-f646171c9771', 'Mitzvah Circus', 'mitzvah-circus-1772434541100-oy8wb', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-circus-fun?cid=4037337&permalink=mitzvah-circusmp', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b6933248-7cd2-4820-b3b1-b19ec8d5a0ce', '10b6d614-fd79-4017-adf0-f646171c9771', 'zxiS4xh7sU9UYPuUD3WXE00RvsEyV51vH02J565dhVOJI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - Mitzvah Men #3
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('bbd02a4c-c26b-4dc7-a5c3-709cd9f800fb', 'Uncle Moishy - Mitzvah Men #3', 'uncle-moishy-mitzvah-men-3-1772434541100-renqs', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038538&permalink=uncle-moishy-volume-3mp4-336150', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('681e297a-1171-49e0-9bc2-fa0a43c1e333', 'bbd02a4c-c26b-4dc7-a5c3-709cd9f800fb', 'MHhdT1XciCfUjBopB2w50002dhk5BRx23SnMfltF4ZC6o', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Music & Movement 6 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e1433ef2-4f54-4a42-9f75-dada69b50ef0', 'Robin''s Nest - Music & Movement 6 (kol isha)', 'robin-s-nest-music-movement-6-kol-isha-1772434541101-b9k37', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038262&permalink=ep-14-robins-nestmov-974c96', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a76bfb30-021e-46c0-b10b-e5c1b7fbb3be', 'e1433ef2-4f54-4a42-9f75-dada69b50ef0', 'Cwnhp3029Q96n400rMdQ5a00IGJIlmRyywIT2cV7YB2t00I', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Chanukah Olive Press - The Nochum Show
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9e6958eb-f7db-4591-b2dd-afd1b0c6aa4f', 'Chanukah Olive Press - The Nochum Show', 'chanukah-olive-press-the-nochum-show-1772434541101-z9pil', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-circus-fun?cid=4037341&permalink=chanukah-olive-press-the-nochum-show-c050b7', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c6b47ea1-4787-4420-9eae-d23f1c2b51c1', '9e6958eb-f7db-4591-b2dd-afd1b0c6aa4f', '02anmyNeTC1StyODznGnw56OIobf2kQthG4JraQ3lyss', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - Mitzvah Men #4
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('99ad6637-5ba5-4261-9c43-7b76797ad7d2', 'Uncle Moishy - Mitzvah Men #4', 'uncle-moishy-mitzvah-men-4-1772434541101-l81ia', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038539&permalink=uncle-moishy-volume-4m4v-36ec99', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('627a63db-938a-41ad-89d4-3f09dc81733e', '99ad6637-5ba5-4261-9c43-7b76797ad7d2', '3vPd9pf01PAeus02LRuQHbNyiGSUXs56LZuxKxG8qqRko', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy Mitzvos!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('33f6f1f2-20b5-46fd-884b-4b69cf8166fe', 'Uncle Moishy Mitzvos!', 'uncle-moishy-mitzvos-1772434541101-9mt4v', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038540&permalink=uncle-moishy-volume-14mp4-b99210', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cc416482-ffc6-4a72-9f80-1508464b612f', '33f6f1f2-20b5-46fd-884b-4b69cf8166fe', 'wir6XUvaHtUrxs9BllipRIZIJuZImKfKuoW7UUONeXc', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Shalom (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ffc6cca7-f4f5-40a8-8576-f27025459cfb', 'Robin''s Nest - Shalom (kol isha)', 'robin-s-nest-shalom-kol-isha-1772434541101-x8tik', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038263&permalink=robins-nest-episode-2-kol-isha', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a533e8b3-492c-407c-95ad-c29aadcb2d05', 'ffc6cca7-f4f5-40a8-8576-f27025459cfb', 'dF7wcTbwfwnMwaYQ8zOWn2JkZUQc002o6s00fxNl7GXwM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Kochavim (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9ee084c1-6238-4301-93da-12fbca470e81', 'Robin''s Nest - Kochavim (kol isha)', 'robin-s-nest-kochavim-kol-isha-1772434541101-rnkqc', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038265&permalink=robins-nest-episode-1-kol-isha', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('df1799cf-763e-4194-b04d-e32cb41f31f4', '9ee084c1-6238-4301-93da-12fbca470e81', 'mxT02H7AEWG7HKZlQPJRbvZBuZx8Ijefpe2IB8klBEX8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - Pesach
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a474f4c0-050d-4728-9123-3e211cdc6d79', 'Uncle Moishy - Pesach', 'uncle-moishy-pesach-1772434541101-3oil7', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038541&permalink=uncle-moishy-pesach', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cb1bf3a3-3060-4d78-8f16-e376a502918e', 'a474f4c0-050d-4728-9123-3e211cdc6d79', 'hjysOzwjraGwtua2nVOpVQQeZNPhhgTgg1qv3PsFW1k', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Music & Movement 1 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d4867c58-f239-4a4f-bdc4-8a635841b9f0', 'Robin''s Nest - Music & Movement 1 (kol isha)', 'robin-s-nest-music-movement-1-kol-isha-1772434541101-7k62b', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038266&permalink=robins-nest-episode-6-not-shy-kol-isha', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e10803e1-9ae4-42f0-97d9-5db1bdfa7415', 'd4867c58-f239-4a4f-bdc4-8a635841b9f0', '5j02MJ00wHRQsmJoM2Xr7POlakkwdevAGf602UMOS9P601s', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - Succos
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c0f50ddc-9a8b-475d-be6c-7192100eff94', 'Uncle Moishy - Succos', 'uncle-moishy-succos-1772434541101-754m9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038542&permalink=05_succos-8f4c8b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('38454267-b89a-4931-bfaf-e302beca8e13', 'c0f50ddc-9a8b-475d-be6c-7192100eff94', 'hsOby7yomqv0234MhahvTXnVLCcAGrN3HceuWFQS3UOI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Music & Movement 2 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('26e05a70-6c04-4aea-b14f-6047eac0605d', 'Robin''s Nest - Music & Movement 2 (kol isha)', 'robin-s-nest-music-movement-2-kol-isha-1772434541101-3o40q', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038267&permalink=robins-nest-episode-7-bubbels-kol-isha', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4f2c8eb3-7720-4bc1-99b6-b82e2a630656', '26e05a70-6c04-4aea-b14f-6047eac0605d', 'B1p5Ylb3EtRngeWH7M1SDhX6upswIhW5ll7WVBLXrGg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - THE YOM TOV SHOW
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('67074b78-2359-4d3b-9e84-666bd5240646', 'Uncle Moishy - THE YOM TOV SHOW', 'uncle-moishy-the-yom-tov-show-1772434541101-u49tn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038543&permalink=03_the-yom-tov-show-b03313', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('747c8048-99e6-4a9c-b600-84068c9b3f9f', '67074b78-2359-4d3b-9e84-666bd5240646', '6FZHbNzNviCZGfcPzT2lFbxwP21OVXamqhVgXn6j00hU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - Purim Medley
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('df9f9cbe-caf1-46de-a661-296061fdded3', 'Uncle Moishy - Purim Medley', 'uncle-moishy-purim-medley-1772434541101-0cfjj', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038544&permalink=04_purim-medley-4257b8', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a4417521-488f-4adb-ada8-d02d3a89d958', 'df9f9cbe-caf1-46de-a661-296061fdded3', 'fl9Wy1u02nkdfHxGVjk1dOkKDAaAApImWe73l8NBeMCc', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Music & Movement 3 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('27355888-874b-4496-8141-10a20a8f356d', 'Robin''s Nest - Music & Movement 3 (kol isha)', 'robin-s-nest-music-movement-3-kol-isha-1772434541101-bax2w', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038269&permalink=ep-11-robins-nestmov-971f90', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('bb3c11f4-0060-4221-a399-0edc88f64a46', '27355888-874b-4496-8141-10a20a8f356d', 'CA01coaL9qDg2gZUgNZqFxOQEYceXvtZcR2k3hZdKvKM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Music & Movement 4 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7583b27b-91b1-45af-b963-96656a526d11', 'Robin''s Nest - Music & Movement 4 (kol isha)', 'robin-s-nest-music-movement-4-kol-isha-1772434541102-u0dwb', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038271&permalink=ep-12-robins-nestmov-862f5a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e9755581-cdf4-4c1a-ae2a-657644217b93', '7583b27b-91b1-45af-b963-96656a526d11', '8UxeOd5MjaGS1AGFpThzCd02B7VhXQi004IXnmtToCPaA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: YBC 1 Live!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c57e801b-f12d-4fd8-8301-95c6646c92f6', 'YBC 1 Live!', 'ybc-1-live-1772434541102-wur4n', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085542&permalink=ybc-live-1mp4-94ee93', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('70a5594e-8c9c-4f3e-9220-ea3cba74e045', 'c57e801b-f12d-4fd8-8301-95c6646c92f6', 'E7llU01RnXsbAuy1ItU7DkY3q00XUzek01ovg300LhFv2Wg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - Aleph Beis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c4cdac00-b1da-4d1a-b365-35b0b6bb379d', 'Uncle Moishy - Aleph Beis', 'uncle-moishy-aleph-beis-1772434541102-lgfna', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038545&permalink=uncle-moishy-volume-6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('50636a87-b872-4bdf-a710-c1a6e18907e8', 'c4cdac00-b1da-4d1a-b365-35b0b6bb379d', '01YAqmu8k2aj3yPnx01GRDkWC6MrfJeAAjJ6ERrtHCK3Q', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Music & Movement 5 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2b08ad42-0ead-455f-8485-b2940b8450ac', 'Robin''s Nest - Music & Movement 5 (kol isha)', 'robin-s-nest-music-movement-5-kol-isha-1772434541102-stujb', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038272&permalink=ep-13-robins-nestmov-1aa922', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0c02084e-76cd-4a72-84b9-d5b280c19f4e', '2b08ad42-0ead-455f-8485-b2940b8450ac', 'jBV02uD17LruALLx2lL9pS6PLytxSEl6nPXNnzr3jNGA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy - Mitzvah Men #1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d1dba22d-b773-46a7-b0c3-2a6d27146b6e', 'Uncle Moishy - Mitzvah Men #1', 'uncle-moishy-mitzvah-men-1-1772434541102-554tx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038546&permalink=uncle-moishy-volume-1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('20b683b0-8906-4a0a-ad07-f765e2b85f7c', 'd1dba22d-b773-46a7-b0c3-2a6d27146b6e', 'sCVP4U4OG1arx44dTmzgXJBHbEgqkZaa02AiZ1OInU5s', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Progress: 300/481 videos processed

-- Video: YBC 3 - Live!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('094705ed-dbc8-43a0-a631-89743a23846c', 'YBC 3 - Live!', 'ybc-3-live-1772434541102-fejii', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085543&permalink=ybc-3mp4-1ba4df', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('19570f02-6eda-489b-9fd5-ccdd0c1e1595', '094705ed-dbc8-43a0-a631-89743a23846c', 'WA6WxUiLyZOR81rZVBw2RijOFGFThKe8u7BL7LFNCA8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: YBC3 Live! - Behind the scenes
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('db531843-3830-442e-9444-124346d1ee9e', 'YBC3 Live! - Behind the scenes', 'ybc3-live-behind-the-scenes-1772434541102-mecyt', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085547&permalink=ybc3-live-behind-the-scenes-pausemp4-9c9752', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('8ffa63ed-f02d-4c7e-b1f8-e104feb2f39a', 'db531843-3830-442e-9444-124346d1ee9e', '6g4yPTaSPOyEiNszJ01VKB4c7gKZ8DI49s3W2e2elYJ8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy: Kibud Av Va'aim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3c00b39c-d003-421e-b181-573e31d968e7', 'Uncle Moishy: Kibud Av Va''aim', 'uncle-moishy-kibud-av-va-aim-1772434541102-4q41o', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038547&permalink=uncle-moishy-volume-13', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('82e07dd7-f5e0-4d16-badf-7b77e1423f30', '3c00b39c-d003-421e-b181-573e31d968e7', 'EM3UdkY1DkeuI01PgHM9zHIW9SqiXW3JHKCXOQed2HM00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Adar 1 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d158bcad-abfc-488e-ad6b-8cf06ff04fe2', 'Robin''s Nest - Adar 1 (kol isha)', 'robin-s-nest-adar-1-kol-isha-1772434541103-ztthp', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038273&permalink=robins-nest-episode-3-kol-isha', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('005aca00-8238-4996-8116-bd799f9760c9', 'd158bcad-abfc-488e-ad6b-8cf06ff04fe2', 'pTGpazgp1tsMIWfvp5NWs27lRofy91vYgkYs02a00ORss', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: YBC - Mizmor Shir
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e1e917e2-a5e2-42fb-8560-9c41e90c505a', 'YBC - Mizmor Shir', 'ybc-mizmor-shir-1772434541103-hfoux', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085548&permalink=mizmor-shirmp4-c74be5', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('415ff706-d6b4-4409-ad25-359aabe4cefa', 'e1e917e2-a5e2-42fb-8560-9c41e90c505a', 'H6BF5NL9HTy9XexjVmjGb1kRDtUzP58WoQkisiJCDgA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Adar 2 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e80fafa4-dfd7-4291-b578-8cdf70fde4a9', 'Robin''s Nest - Adar 2 (kol isha)', 'robin-s-nest-adar-2-kol-isha-1772434541103-1pkgz', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038274&permalink=robins-nest-episode-5-not-shy-kol-isha', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6e7ef340-6e8f-4a34-b22d-5d07f804fdb4', 'e80fafa4-dfd7-4291-b578-8cdf70fde4a9', '2rmxNeRIWp7lKM9Zy23iPvMRhiId8knoiqtFQpdB3k4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: YBC - Yivonim - no volume
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('5a20f4e3-59b2-4a19-9f4c-c08a9c4c8235', 'YBC - Yivonim - no volume', 'ybc-yivonim-no-volume-1772434541103-30b5z', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085549&permalink=yevonimmp4-4c9227', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('69b9d52b-0f94-413d-8281-ea550991fbd8', '5a20f4e3-59b2-4a19-9f4c-c08a9c4c8235', 'bF5Gkfqtm7ujys01t2S7jphMGtwSGhz1VvNYPt6EBg02A', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy & Friends!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7e8176ff-3e6b-464c-ab65-94c7fe76655a', 'Uncle Moishy & Friends!', 'uncle-moishy-friends-1772434541103-v96kz', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038548&permalink=uncle-moishy-volume-12mp4-3608c1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ab85d2ce-c991-41b6-b584-2ec9c2938d92', '7e8176ff-3e6b-464c-ab65-94c7fe76655a', 'dwfhNy4amUWyINopbsQNPTQwtW100Xp156JUDe5HrDyk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Purim (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f1320570-f173-4e7d-8c00-abb04e680ce4', 'Robin''s Nest - Purim (kol isha)', 'robin-s-nest-purim-kol-isha-1772434541103-o267q', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038276&permalink=robins-nest-episode-4-purim-kol-isha', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0aba923c-00f1-42e7-9e91-706694faf2c7', 'f1320570-f173-4e7d-8c00-abb04e680ce4', '1YnwHSdvCNl019aVr7m701g3ysJk6haOghBxwQgNV5yIU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy: Eating Healthy!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('10c1a983-5853-4400-951e-a574037dd421', 'Uncle Moishy: Eating Healthy!', 'uncle-moishy-eating-healthy-1772434541103-fxxuy', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-video?cid=4038549&permalink=uncle-moishy-volume-11', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('77c94b31-1ea8-40fc-bc1f-5a71dcda3270', '10c1a983-5853-4400-951e-a574037dd421', 'ASbRDeniJBj02VWVKttjHUN4bdk01X02JzpX02tLUILn5MI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: YBC - Shemoy
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8caf5077-5594-4872-8e7b-ec3434d3b56a', 'YBC - Shemoy', 'ybc-shemoy-1772434541103-witbp', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085551&permalink=shemoymp4-362ee1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('317c005f-c592-4b57-b2ce-0db0bc4d2b3a', '8caf5077-5594-4872-8e7b-ec3434d3b56a', 'aPYrDpZX2N01B3eLBEKqt364dYJ92ckWz6SDoAA7us4s', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: YBC - Adir
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2fd75b76-957d-4a35-93ec-0cb9a348d5f5', 'YBC - Adir', 'ybc-adir-1772434541103-j7ui8', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085557&permalink=the-yeshiva-boys-choir-adirmp4-16278c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9c8f31a5-007e-4590-9599-8c73f6195b15', '2fd75b76-957d-4a35-93ec-0cb9a348d5f5', '0202gO2LCaks701x2qRRu01Zv566YFbClTXkHFViV7mO4FQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Pesach 1 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9c854100-90cf-45fd-9de3-99175fe04329', 'Robin''s Nest - Pesach 1 (kol isha)', 'robin-s-nest-pesach-1-kol-isha-1772434541103-b7nth', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038278&permalink=ep-8-robins-nestmov-c0a80f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4d712a23-b995-47aa-b815-f9908d74df34', '9c854100-90cf-45fd-9de3-99175fe04329', 'UkzJvGHbzw9aw00cAfoRdlNX02Yk5yEVYQYVkugt4rzsI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: YBC - Yihalelu
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('04f0a9db-fdc1-426c-9c8f-17f248691ac7', 'YBC - Yihalelu', 'ybc-yihalelu-1772434541103-9xc7y', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085558&permalink=the-yeshiva-boys-choir-yi-ha-li-lump4-28ead4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d86cfc7d-6041-41d3-97a1-dd962c8538ad', '04f0a9db-fdc1-426c-9c8f-17f248691ac7', 'kQKR1w5PKr35tAVeDTbQbaJTS34Q5OhgYLLLLnHMQj8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Pesach 2 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1907267f-7e3e-422f-a0e8-c0347a7c21a4', 'Robin''s Nest - Pesach 2 (kol isha)', 'robin-s-nest-pesach-2-kol-isha-1772434541103-jplmp', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038280&permalink=ep-9-robins-nestmov-585c8d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('61b44707-3256-438c-adac-fbeae49f4ae0', '1907267f-7e3e-422f-a0e8-c0347a7c21a4', 'a8QovliVe02htbEgz8401VNMOET02EIB01WIS8dLSlUfSRA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: YBC - Tov
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('52ce0506-8811-4f0d-af22-c4f2689cb984', 'YBC - Tov', 'ybc-tov-1772434541103-dc5g3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085560&permalink=the-yeshiva-boys-choir-tovmp4-be71f9', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('dd429574-1875-40eb-97a9-6eb5f675c989', '52ce0506-8811-4f0d-af22-c4f2689cb984', 'JjcEizOsxGm3azI5tp1yaJAJjpVaSam5dkYSZPIt43U', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Pesach 3 (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('01f29112-5627-439c-a653-3a11b946af83', 'Robin''s Nest - Pesach 3 (kol isha)', 'robin-s-nest-pesach-3-kol-isha-1772434541104-wz4ij', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038281&permalink=ep-10-robins-nestmov-d9207f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2b83b680-ed4a-41d1-b6c3-83ac946c225c', '01f29112-5627-439c-a653-3a11b946af83', 'IDocdchXbVmbC02iqB02N4eH27293z1DX00ON0000MM9rh1k', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: YBC - Ashrei
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d65b38bd-dd64-4f6e-a5ef-d3c564555432', 'YBC - Ashrei', 'ybc-ashrei-1772434541104-ev0kr', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085565&permalink=the-yeshiva-boys-choir-ah-ah-ah-ashreimp4-f1a3ea', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('66a6faf1-3b8a-4c83-ade6-3b88994c3ac6', 'd65b38bd-dd64-4f6e-a5ef-d3c564555432', 'w1AC6SiEilv2r02MIPCj7KuFNQMg2RsJ7AbVyqMaXaCU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: YBC - Mi Komocha
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f50b7a8a-37fd-4b0c-9e2f-fdc3f2095395', 'YBC - Mi Komocha', 'ybc-mi-komocha-1772434541104-hbdxn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085569&permalink=the-yeshiva-boys-choir-mi-x6-mp4-312217', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e45955a6-f346-42af-af0f-1e3f8d65b4d8', 'f50b7a8a-37fd-4b0c-9e2f-fdc3f2095395', 'QGCLeFR024QYwbw012eLsFfnPwlaayn2OoX02jvy00GoeA4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Robin's Nest - Tishrei (kol isha)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('70ccf937-725b-432c-b910-94ad623bf4b9', 'Robin''s Nest - Tishrei (kol isha)', 'robin-s-nest-tishrei-kol-isha-1772434541104-naemc', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/robins-nest-collection?cid=4038282&permalink=robins-nest-episode-15-tishrei-kol-isha', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3fc0ab42-8340-493e-a438-fa53e0486b6d', '70ccf937-725b-432c-b910-94ad623bf4b9', 'Mj1sw6C02EU4L8F2nESkK017uVLoKfxeB5mKxtsWrvAbg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: 8th Day - Wake Up Yidden
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('536758de-bdfe-4332-94ec-f4fa831e8f1c', '8th Day - Wake Up Yidden', '8th-day-wake-up-yidden-1772434541104-or5k6', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085601&permalink=8th-day-wake-up-yiddenmp4-06d4a6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('086c9f97-6149-4870-a8b3-aa258f64a6cb', '536758de-bdfe-4332-94ec-f4fa831e8f1c', 'WsJ3GyBAviIzSQATitgoSTmnnCK84U5Lcn7scBWRT4k', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: 8th Day - Rollin
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f2728755-e866-4bce-95c7-712f4c45733f', '8th Day - Rollin', '8th-day-rollin-1772434541104-scy2m', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085602&permalink=videoplayback-1mp4-86c14e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ca12e488-5f26-4a7a-b3cc-687afad4d25f', 'f2728755-e866-4bce-95c7-712f4c45733f', 'zLLCl02cc02xBKn2YRYwwMZjT01xpAH00Pf00TsYwly2HisA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: 8th Day - Elika D'Meir
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a05c1b90-75f0-4e4c-863a-dd6ac69ee0dc', '8th Day - Elika D''Meir', '8th-day-elika-d-meir-1772434541104-dh4us', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085603&permalink=8th-day-elika-dmeirmp4-0633b8', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('669100d5-c69d-4370-8678-4e3f853eaadb', 'a05c1b90-75f0-4e4c-863a-dd6ac69ee0dc', '7DlADn75Vkx00aOwdn2XkkRGxSJ00GqW2VxKwCHndD7JU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: 8th Day - Knei
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ac3c4995-4ef3-4457-ab95-e8599e323819', '8th Day - Knei', '8th-day-knei-1772434541104-lnnix', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085604&permalink=knei-hd-outputmp4-38c733', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b19130f4-220e-41b7-bb74-1f3faf4c3f96', 'ac3c4995-4ef3-4457-ab95-e8599e323819', 'oY9dyo0001HUmjzxfUHSEGvlPthkcYWlUWAl1JOfMHgH8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: 8th Day - All You Got
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('98e56ec0-55a8-478c-a701-6957712cb67b', '8th Day - All You Got', '8th-day-all-you-got-1772434541104-s2b3s', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085606&permalink=8th-day-all-you-gotmp4-f7852b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3cec9301-c5c3-4d59-92d8-89d334bf326a', '98e56ec0-55a8-478c-a701-6957712cb67b', 'XhnIf7YP3NZwln9QisF5b68OnY9Wu28pmrpx1ila7p4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: 8th Day - Bring It Home
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2b67ec5b-5d4a-4952-addf-2a45e851515c', '8th Day - Bring It Home', '8th-day-bring-it-home-1772434541104-vahx0', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085605&permalink=8th-day-bring-it-homemp4-904a4b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('491d1ecd-128e-44cb-9d93-66e943665eb8', '2b67ec5b-5d4a-4952-addf-2a45e851515c', 'Pwn9ypf1QcUGBA02FaTs6OuwlbkVt4GHU3wEtQrIuK02Y', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ari Goldwag - Hafachta
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ff543751-c809-4993-a551-7d6659797225', 'Ari Goldwag - Hafachta', 'ari-goldwag-hafachta-1772434541104-sngru', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085608&permalink=hafachta-ari-goldwag-30b6d2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('be2ec5f2-b9f4-4ee2-8025-dd8a33ccea05', 'ff543751-c809-4993-a551-7d6659797225', '02IQu3xvWrBiqzb8qKN4JyXxTgURqP12lvRvZ3mwzuRM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ari Goldwag - Rak Hu
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7331b736-36ca-4b80-937b-8a2e748c6ecf', 'Ari Goldwag - Rak Hu', 'ari-goldwag-rak-hu-1772434541104-f3t5w', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085609&permalink=rak-hu-ari-goldwag-5fc5f7', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3cd7fbbf-3b2b-44a9-b765-8b056f9a3b6f', '7331b736-36ca-4b80-937b-8a2e748c6ecf', 'hcLCHfhz5jTs5Nu7qoLtr9yeD1uUllyyIoEVF6y01xtQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ari Goldwag- Ahalela
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6cd9d5c2-b957-46ec-b139-bf17b636881b', 'Ari Goldwag- Ahalela', 'ari-goldwag-ahalela-1772434541104-qd2ub', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085610&permalink=ahalela-ari-goldwag-e09a44', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('064b67cb-4874-4e64-b6a3-f3b6a6013f2b', '6cd9d5c2-b957-46ec-b139-bf17b636881b', 'YcUoWyg2jjFYrSbtL2fjJOTmbdnPYEqiGhwTB00lh358', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ari Goldwag - Smile
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e067c169-9f31-47b8-b88e-55a625a65313', 'Ari Goldwag - Smile', 'ari-goldwag-smile-1772434541105-4gqkp', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085611&permalink=smile-ari-goldwag-f849be', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ad10faf8-f810-474f-8e2b-977c7dcd154e', 'e067c169-9f31-47b8-b88e-55a625a65313', 'K6QyT59Fq2M4JFIrOSrFcjUgnnKJ4WevjAjDYp2hRzI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ari Goldwag - Ashira LaHashem
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('671b5778-ee1d-4e1a-b87d-49472927a341', 'Ari Goldwag - Ashira LaHashem', 'ari-goldwag-ashira-lahashem-1772434541105-7kioq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085613&permalink=ashira-lahashem-ari-goldwag-e11080', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('daea97b9-d345-4429-a9bb-1dbe076b0f59', '671b5778-ee1d-4e1a-b87d-49472927a341', 'O00fCzPqfa01oBTpws4kmx2rO00DV5DykYGvFJ5KWuRGsg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ari Goldwag - For the Light
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a84c9f2f-4973-4a7c-953b-2fc2dba48952', 'Ari Goldwag - For the Light', 'ari-goldwag-for-the-light-1772434541105-qjugd', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085615&permalink=for-the-light-ari-goldwag-216680', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c673fba3-6b48-405f-979f-78bd0c038fe8', 'a84c9f2f-4973-4a7c-953b-2fc2dba48952', 'k01ZC00MI01CnC6eAClsClKoxYSwW00Zo01DCalZgjXS02Iv8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Ari Goldwag - Zeh Keili
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9c578012-b74f-43bd-a198-7f5276b8f006', 'Ari Goldwag - Zeh Keili', 'ari-goldwag-zeh-keili-1772434541105-42yh3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085616&permalink=zeh-keili-ari-goldwag-73aee6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('fc7cae22-c416-4ca2-b467-cb9f2d30b6cb', '9c578012-b74f-43bd-a198-7f5276b8f006', '1kCMosA00EdSIpNOUX8H02co5dMdyOECGLzW2pxG4jJnE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Avi Ilson - Halevai
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('29bfebf9-9a5a-471f-9576-c18f0726d627', 'Avi Ilson - Halevai', 'avi-ilson-halevai-1772434541105-v4vd9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085627&permalink=avi-ilson-halevai-4e72f2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('eee135b8-18a0-42f2-873c-32b077bc0e7e', '29bfebf9-9a5a-471f-9576-c18f0726d627', 'i6gbgNzTyHjUbNiI00Z1tX7kJXFuOpDTa63VHYj4zGfE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Avi Ilson - Mehila
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d4651355-489a-49e5-9158-b947d04c2c7d', 'Avi Ilson - Mehila', 'avi-ilson-mehila-1772434541105-d9l59', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085630&permalink=avi-ilson-mehila-e5c081', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('7ce588c1-877d-4fbf-ae0e-bd95cdbad97f', 'd4651355-489a-49e5-9158-b947d04c2c7d', '01sUwiAFlmefeiuNa2aIzotcJZXCWdM01BzArFUYywlSM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Avi Ilson - Yesh Li Hakol
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e30c7485-ee07-4521-91aa-cb337cbd1aaf', 'Avi Ilson - Yesh Li Hakol', 'avi-ilson-yesh-li-hakol-1772434541105-xhg8u', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085631&permalink=avi-ilson-yesh-li-hakol-ab660c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f1f05734-c986-4a7e-bb43-17489a26ebd3', 'e30c7485-ee07-4521-91aa-cb337cbd1aaf', '1DNmkoiq0100AzV7u1MILJPOpgzkpcslzMy8b2xfFtrZ8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Avi Ilson - Ten Li Or
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('393afded-408f-47a2-a051-4df49c8635c8', 'Avi Ilson - Ten Li Or', 'avi-ilson-ten-li-or-1772434541105-rn7qm', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085632&permalink=avi-ilsonmp4-01deb3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('505f8970-7464-4103-89d3-8c5c6ee3c939', '393afded-408f-47a2-a051-4df49c8635c8', '500bSRKIXnwuz2RGWdADxtZwg5dgGI4fFStx5vgbY4C8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Avi Ilson - Sheyavo
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('13b43d99-9422-4c6d-adec-f19bda01ac75', 'Avi Ilson - Sheyavo', 'avi-ilson-sheyavo-1772434541105-595qn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085635&permalink=avi-ilson-sheyavomp4-deedde', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('8f09f31f-42dc-49a5-8449-06588021a23d', '13b43d99-9422-4c6d-adec-f19bda01ac75', 'r1ZMSDe1X9YBWd7KxvR75wYTG004r2J4txvOSEVkPhFw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Avi Ilson - Chupah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3f8ddd50-fd69-46df-9000-09b42d48bb65', 'Avi Ilson - Chupah', 'avi-ilson-chupah-1772434541105-wm8qk', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085634&permalink=avi-ilson-zman-chupahmp4-e28933', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3c2d44e0-3a07-4937-9731-8edb243cc746', '3f8ddd50-fd69-46df-9000-09b42d48bb65', 'HIACUahxmWwP73Q1scGWE6Ak00N73q01YiDYHU5lt6nyo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Avi Ilson - Chosson & Kallah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f6c43b19-89dd-4ad9-91e1-d4a7980feab4', 'Avi Ilson - Chosson & Kallah', 'avi-ilson-chosson-kallah-1772434541105-qnleb', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085636&permalink=avi-ilson-chosson-kallahmp4-b7afb3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c825a661-6da1-4781-97e8-057d357cb92d', 'f6c43b19-89dd-4ad9-91e1-d4a7980feab4', 'q9dNXi7nE01RpQXHHXTyUioLiPkRKA6401CMvCx5lhBDs', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Benny Friedman - Charasho
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('39b37285-4a27-456a-88a1-d52a0ce76cfd', 'Benny Friedman - Charasho', 'benny-friedman-charasho-1772434541105-qbkfp', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085652&permalink=benny-friedman-charasho-11ee6a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6a2b599d-5f41-498a-b2a1-32c2e677a9c6', '39b37285-4a27-456a-88a1-d52a0ce76cfd', 'tdCmokL3nV1u25SNpvjSkkCoJ2lukCcxwRHMhtZlfi8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Benny Friedman - Its a Rebbes Life
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3083760b-8710-411b-b087-3690ed018af1', 'Benny Friedman - Its a Rebbes Life', 'benny-friedman-its-a-rebbes-life-1772434541106-8kqg5', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085655&permalink=benny-friedman-its-a-rebbes-lifemp4-f663eb', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3dd87f00-d20f-40ca-90c3-f3d5b03d458d', '3083760b-8710-411b-b087-3690ed018af1', '23QIpolhBJ3Wge83UiTrrfEEaBd02hb00yuXMr96IV01Zk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dovid Pearlman - The Man I Am Today
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('83960d84-0942-4f90-8592-cb8c871b62d9', 'Dovid Pearlman - The Man I Am Today', 'dovid-pearlman-the-man-i-am-today-1772434541106-2s94h', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085662&permalink=dovid-pearlman-the-man-i-am-todaymp4-801c08', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ddc3250e-b666-44b1-a929-721e17f2bc0a', '83960d84-0942-4f90-8592-cb8c871b62d9', 'xqQ3gxNdxx01Ap02PZEyYq4L00JimV019igllkguJ00jrXCk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dovid Pearlman - Keep Smiling
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7d5da7f8-e362-40fa-977d-91911e65c32e', 'Dovid Pearlman - Keep Smiling', 'dovid-pearlman-keep-smiling-1772434541106-e51l5', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085661&permalink=dovid-pearlman-keep-smilingmp4-104fac', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('714f41e7-e085-4f10-b53a-c0b1b76649b8', '7d5da7f8-e362-40fa-977d-91911e65c32e', 'xsPPhDJCc15VEu0064uo2hR281pYIfmleEreCcjIXJuk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dovid Pearlman - Chaver Sheli
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('65c3a888-f1ec-49f0-a233-1cf575c4754d', 'Dovid Pearlman - Chaver Sheli', 'dovid-pearlman-chaver-sheli-1772434541106-az0ag', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085663&permalink=dovid-pearlman-chaver-shelimp4-8ba594', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6dd8c272-9268-48b1-be44-c2de75701664', '65c3a888-f1ec-49f0-a233-1cf575c4754d', 'Ku02HzSTbD867WsDeC5IkQsGEVIy00rybXeItmTtdcssE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dovid Lowy - Shiru
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('32e782ad-cc58-4771-8cd1-746524cc762a', 'Dovid Lowy - Shiru', 'dovid-lowy-shiru-1772434541106-jwbmj', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085667&permalink=dovid-lowy-shirump4-492e32', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('13420655-d6aa-4d24-8ad4-13980f3ef0d3', '32e782ad-cc58-4771-8cd1-746524cc762a', 'B4bJLorHd2FAD00GLGCEeMp5hnlvzOiBCGN8oyP91Co4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dovid Pearlman - Mishamrim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('79ae0f61-3c61-40a7-8413-da0a37a6263e', 'Dovid Pearlman - Mishamrim', 'dovid-pearlman-mishamrim-1772434541106-ks9hr', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085665&permalink=dovid-pearlman-im-atem-mishamrimmp4-b23f25', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9bb35be8-e4fb-4dfc-8a2c-b4c3c98938e8', '79ae0f61-3c61-40a7-8413-da0a37a6263e', 'o4YfCRZw84W01yChMHjUOEzam7jdlW2ABdct41YVst1g', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dovid Lowy - Ein Oid Milvado
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8b9519b4-f8fc-4975-9525-aae9739f339a', 'Dovid Lowy - Ein Oid Milvado', 'dovid-lowy-ein-oid-milvado-1772434541106-g0gcm', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085671&permalink=dovid-lowy-ein-oid-milvadomp4-b9b278', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6142209a-5b58-41da-bda7-95bc505ab69f', '8b9519b4-f8fc-4975-9525-aae9739f339a', 'sSIHvGq9T6hGuCJC3pU8fFRfUZHBTrAHqlh1xe8krUw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dovid Lowy - Ma Rabu
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('29d0ebad-dd67-4656-82e5-83b9d1d81dfa', 'Dovid Lowy - Ma Rabu', 'dovid-lowy-ma-rabu-1772434541106-rnk72', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085668&permalink=dovid-lowy-ma-rabump4-e6a98c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('edd6a186-f8ed-4df1-8082-fa806ca65ad2', '29d0ebad-dd67-4656-82e5-83b9d1d81dfa', 'h00uzMQPHszOnPmdolv00g23r7JSZ3wmYTVv02QcHAeDHs', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dudi Knopfler – Soreiku
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f423212a-273f-4f82-bfc8-3a10cea08009', 'Dudi Knopfler – Soreiku', 'dudi-knopfler-soreiku-1772434541106-anxs4', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085676&permalink=soreiku', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3cc0ab25-2fcd-4ce5-b875-a854d8276e95', 'f423212a-273f-4f82-bfc8-3a10cea08009', 'i9f8iu2CGoPiDgUf56xKY0100KpFIiCriJbDDq5h7U6Vs', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Eli Scheller - Just Be B'Simcha
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a7ee7272-b556-4d65-8f8b-432e1e11a368', 'Eli Scheller - Just Be B''Simcha', 'eli-scheller-just-be-b-simcha-1772434541106-t1xq4', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085680&permalink=just-be-bsimcha-eli-scheller-4586e4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cad2a602-ecae-4954-bba0-c4e9a33b9687', 'a7ee7272-b556-4d65-8f8b-432e1e11a368', 'd01Qtrv00EF51H00dwnkbkLGIallmJvPNCNllY02GGrqTBc', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Eli Scheller - Mashtuka
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7f0f8c89-6a2c-4ab0-8d99-99eb5b28482d', 'Eli Scheller - Mashtuka', 'eli-scheller-mashtuka-1772434541106-txlnn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085682&permalink=mashtuka-eli-scheller-f82bc0', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('36fef34c-b60c-4d20-a68d-31ef1cf9736c', '7f0f8c89-6a2c-4ab0-8d99-99eb5b28482d', 'kyoXMImou5udrg1oDI61HizeObDpuPtb9WPScSIVcDo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Eli Scheller - Yesh Mitzvos
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('28f9dfd6-92be-4425-974b-03014c693ce8', 'Eli Scheller - Yesh Mitzvos', 'eli-scheller-yesh-mitzvos-1772434541106-cp631', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085684&permalink=eli-scheller-yesh-shesh-mitzvosmp4-1fd1ee', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e6cc7102-d8ed-4c4f-8bf0-c2b694df37d6', '28f9dfd6-92be-4425-974b-03014c693ce8', 'CDVact3nQIejG01HoX86gbov6tubRwK8gLOj1PMVnuKI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Eli Scheller - Wake Up
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('45cf7d44-142a-402f-8fe8-e92e4e9978a3', 'Eli Scheller - Wake Up', 'eli-scheller-wake-up-1772434541106-fife1', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085683&permalink=eli-scheller-wake-upmp4-b53b96', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6c389f3a-0f67-4a6e-83fa-46703d011c5e', '45cf7d44-142a-402f-8fe8-e92e4e9978a3', '00oeXOUdFPtIdpokEyGLEoeq6G02CYxaR1d02Tx6eYPlLQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Eli Scheller - Daluch Sinei
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('849e9357-5c42-405d-b249-f8192392dcc3', 'Eli Scheller - Daluch Sinei', 'eli-scheller-daluch-sinei-1772434541107-744go', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085686&permalink=daluch-sineimp4-ae5ebc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('8479de0b-d848-4527-9b4e-fa81c8a01815', '849e9357-5c42-405d-b249-f8192392dcc3', '2tVHy02nToZLzqVt20088nFEF3hxSdblOYnxL94ximy5s', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Eli Scheller - Chatof
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c28fdac6-d4de-43ef-ba31-b7b19ab3ac0c', 'Eli Scheller - Chatof', 'eli-scheller-chatof-1772434541107-sjdmn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085687&permalink=eli-scheller-chatofmp4-15300c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5e79e498-3023-43e1-b190-b6d8dc367350', 'c28fdac6-d4de-43ef-ba31-b7b19ab3ac0c', 'vbnJcM8utcpH02zMPkxI02GHZx4LUTM00jQE9EbpHFrYAk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Eli Marcus - Yogati
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('57694117-1913-4c87-8344-b6192d3389d8', 'Eli Marcus - Yogati', 'eli-marcus-yogati-1772434541107-r6t9h', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085692&permalink=eli-marcus-yogatimp4-872f7d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9e9ca382-b332-4f3b-b287-3514de023724', '57694117-1913-4c87-8344-b6192d3389d8', 'cx6iZCkK64Qfsheevbyj802ik93VPKmUx2fhABxeXsZw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rodal - Nyet Nyet
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('5e41a44b-2d68-47c7-a27f-6277b5eff692', 'Rodal - Nyet Nyet', 'rodal-nyet-nyet-1772434541107-vbtem', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085699&permalink=nyet-nyet', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('28b4e5cd-aef3-4e59-bdf5-276fa976abc4', '5e41a44b-2d68-47c7-a27f-6277b5eff692', 'WSpIEmm35SMDVADZcuo4XOQiD7F8yYvCVfb00ffgAXYM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Boruch Sholom - Lo Yemalet
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('94b61b93-9d91-4814-a733-b345c7a2fe62', 'Boruch Sholom - Lo Yemalet', 'boruch-sholom-lo-yemalet-1772434541107-fpsvi', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085700&permalink=boruch-sholom-lo-yemalet-mp4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3188685c-23ec-4e26-9096-5ec0f1973f02', '94b61b93-9d91-4814-a733-b345c7a2fe62', 'NZKFfVzNB3sf0001WHT2fSI6rWdCeNVrEMdAYydQ9kLH4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Joey Newcomb - Bnei Hamelech
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('80b2730c-3288-4a51-ab06-decc1f2f93ac', 'Joey Newcomb - Bnei Hamelech', 'joey-newcomb-bnei-hamelech-1772434541107-he3go', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085706&permalink=joey-newcomb-bnei-hamelechmp4-71bdf5', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('dac65e82-03db-4a46-ad00-9f11ecffa666', '80b2730c-3288-4a51-ab06-decc1f2f93ac', '4aPTRndr02By4y40000eHVBlJA6h66XoAj00my3dq9R01O9k', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Joey Newcomb  - Just Love Them
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('22cd0c4b-c0ef-4eb1-9e96-cbbca9709a8f', 'Joey Newcomb  - Just Love Them', 'joey-newcomb-just-love-them-1772434541107-2cprp', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085707&permalink=joey-newcomb-just-love-themmp4-22b05f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('936a92de-3575-4a73-b333-3a0c965366bc', '22cd0c4b-c0ef-4eb1-9e96-cbbca9709a8f', 'mLTUZQySAcd9QPDhq8OgyiNk9Va1PjIKE5RLv02nO16A', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Joey Newcomb - Thank You Hashem
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('15db8b0f-45be-4f59-9ba6-37bf8c2dc464', 'Joey Newcomb - Thank You Hashem', 'joey-newcomb-thank-you-hashem-1772434541107-qutxl', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085708&permalink=joey-newcomb-thank-you-hashemmp4-d978cb', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1d24f815-3c44-4e04-b14d-8bd450a38570', '15db8b0f-45be-4f59-9ba6-37bf8c2dc464', 'YUlvgGn7NJSkEAvgQNWFs02g2KbNWGIuqqEIO2o8cu02w', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Joey Newcomb - Tantz With Rashbi
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('fd85d3e3-94b1-4bdc-adfa-9e44f1de9f98', 'Joey Newcomb - Tantz With Rashbi', 'joey-newcomb-tantz-with-rashbi-1772434541107-2pq1y', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085710&permalink=joey-newcomb-tantz-with-rashbimp4-e52cc4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a4e5000c-c659-42ac-b197-175b72774b90', 'fd85d3e3-94b1-4bdc-adfa-9e44f1de9f98', '7UsJJ86QUK0231w02jXVFsLpQKxwBx8J1pvN02Tv3uHLEg', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Joey Newcomb - Borei
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1f1c5328-f5bb-4669-89e8-882635c42331', 'Joey Newcomb - Borei', 'joey-newcomb-borei-1772434541107-rikbt', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085709&permalink=joey-newcomb-boreimp4-be2e9c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d275b83a-af0f-408a-88ba-675756ccb45e', '1f1c5328-f5bb-4669-89e8-882635c42331', 'LWIMlr5013xZDhtdF500L4tcRMJmSH488cT0001EbZnw00sk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Joey Newcomb  - Mi Keamcha Yisroel
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8a2b841d-f202-4263-bbe8-a1ec4c013c54', 'Joey Newcomb  - Mi Keamcha Yisroel', 'joey-newcomb-mi-keamcha-yisroel-1772434541107-phrp3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085711&permalink=joey-newcomb-mi-keamcha-yisroelmp4-60e941', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cafecbc9-5437-4569-b57e-38f6895ebf71', '8a2b841d-f202-4263-bbe8-a1ec4c013c54', 'jm2gs1281t5A4Fl3sS0102CKr7eugUXFBkQgJQ5TkcMNw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Joey Newcomb - Its Never Too Late
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('98cf69bb-9ace-4953-9006-2f6f51c09616', 'Joey Newcomb - Its Never Too Late', 'joey-newcomb-its-never-too-late-1772434541107-4mqvk', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085712&permalink=joey-newcomb-its-never-too-latemp4-84721a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3deb3896-5026-441d-9090-947a6ba53f23', '98cf69bb-9ace-4953-9006-2f6f51c09616', 'Fe00QRodMM1kODt702IwAxLGTfnfa3DRTWbcHqMMPbYHY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mendy J - Harabi
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b1c478e3-7266-491d-8656-78cd379b76e8', 'Mendy J - Harabi', 'mendy-j-harabi-1772434541107-eaor3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085714&permalink=mendy-j-harabimp4-499957-2866a6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0bd67185-3e75-4601-bbcb-b387987236f4', 'b1c478e3-7266-491d-8656-78cd379b76e8', 'Py818G00SLiiQwB02EKDUZqYMNjLkSXL3Xj6rWTDcn3S8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mendy J - Moshiach Yavo
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7ef5093f-d456-4669-8139-3f500ea3ff8c', 'Mendy J - Moshiach Yavo', 'mendy-j-moshiach-yavo-1772434541108-hih40', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085715&permalink=mendy-j-moshiach-yavomp4-499953-b6088a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('34f72d3b-304b-4a57-985f-948b8977acbe', '7ef5093f-d456-4669-8139-3f500ea3ff8c', 'd61oiiTjn003BPrsoOYTspzevMEmCpong5qsWxFPreEk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mendy J- Sim Shalom
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('71f4b6ea-36ef-4345-a2c1-1b73d193367a', 'Mendy J- Sim Shalom', 'mendy-j-sim-shalom-1772434541108-096bw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085717&permalink=mendy-j-sim-shalommp4-499946-ddec06', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0af39ce3-0226-42a8-9755-7b3026259306', '71f4b6ea-36ef-4345-a2c1-1b73d193367a', '6Bl007ofyxWhU8SHHKrtRYTs3Oye4uHnAfoz02sXhZ02aw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mendy J - Mesechta Brochos
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e618c7bf-3dc1-4b8c-9720-2288f3080287', 'Mendy J - Mesechta Brochos', 'mendy-j-mesechta-brochos-1772434541108-iznh2', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085716&permalink=mendy-j-mesechtas-brachosmp4-499950-163d05', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a9ad4cfc-edd3-4246-9223-3f3cda3ff326', 'e618c7bf-3dc1-4b8c-9720-2288f3080287', 'CTJZ1fGh9usRW00epsvnbKe9W3hqgfU4qxtY01OTXx91Y', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mendi Jerufi - Vaatem Rokdim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7ae30c64-91d0-47a0-8d8f-2f496cf9f58a', 'Mendi Jerufi - Vaatem Rokdim', 'mendi-jerufi-vaatem-rokdim-1772434541108-6byc0', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085720&permalink=mendi-jerufi-vaatem-rokdimmp4-77c8df', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4d2abbd4-205f-4cd7-9523-7adaec4681ce', '7ae30c64-91d0-47a0-8d8f-2f496cf9f58a', 'unjOb98nrA02TbZn3djVDBYi78YHKfJuGeIRq01Fc0200Rw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mendi Jerufi - Miyad Nigolim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a07de0e5-695b-428c-a49f-5be78be89493', 'Mendi Jerufi - Miyad Nigolim', 'mendi-jerufi-miyad-nigolim-1772434541108-p9nh7', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085721&permalink=mendi-jerufi-miyad-nigolimmp4-985da4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('47b1b506-b822-42b9-a8ed-b31dd15f4598', 'a07de0e5-695b-428c-a49f-5be78be89493', 'Sw01zAnnhPStHnkEcPzjF00nHKDjumoJN3701seDK6pJuo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mendy Piamenta - Yesh Kan
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('44fad1b8-19d7-4ab2-90ac-342990eed58d', 'Mendy Piamenta - Yesh Kan', 'mendy-piamenta-yesh-kan-1772434541108-d0su7', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085726&permalink=mendy-piamenta-yesh-kanmp4-419dfc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ea9fc831-1e6b-406f-bf15-6b1d9f09562d', '44fad1b8-19d7-4ab2-90ac-342990eed58d', '5BV1EqboVjcWAsXsG9wYNsr5cjsngpMmiJOqbyM3B5U', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mendy Piamenta - Bar Mitzvah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('10b6961b-ab1e-4199-aebe-5cd831516f50', 'Mendy Piamenta - Bar Mitzvah', 'mendy-piamenta-bar-mitzvah-1772434541108-ua9u2', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085727&permalink=mendy-piamenta-bar-mitzvahmp4-5e6637', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b5c85df1-c42b-4eeb-8bc5-53fb411c3820', '10b6961b-ab1e-4199-aebe-5cd831516f50', 'ikioUiqzj9g4L6r9ie5WVpKJlNOr02OpAb1dvtNvL2ns', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Michoel Pruzansky - Simchat Chatanim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ebb06be1-17e2-4dc4-a99f-9b9b10ecbbf0', 'Michoel Pruzansky - Simchat Chatanim', 'michoel-pruzansky-simchat-chatanim-1772434541108-1dqjx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085729&permalink=michoel-pruzansky-simchat-chatanimmp4-2c33a5', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f2b98124-9855-49a1-9b39-bf0b9890e164', 'ebb06be1-17e2-4dc4-a99f-9b9b10ecbbf0', '02D01EVRnSTrQaxAN021KDdRFqREyPZ01RILjfI1j5qKiLQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Michoel Pruzansky - Shootin’ For The Moon
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('58f95c33-146e-4a9b-ba4f-399bdf72fca2', 'Michoel Pruzansky - Shootin’ For The Moon', 'michoel-pruzansky-shootin-for-the-moon-1772434541108-s6es9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085730&permalink=michoel-pruzansky-shootin-for-the-moonmp4-5e4d39', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('bcc29bd9-3b4d-40d6-adbc-43fbb2a9e990', '58f95c33-146e-4a9b-ba4f-399bdf72fca2', 'z8onN009nL2KiTRADyGa7s01hQuxBeEtMBvWfOs00BriEM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Micha Gamerman - Bezochrenu Et Zion
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7bad125c-ce8e-4918-b3c8-7f04ee7d2883', 'Micha Gamerman - Bezochrenu Et Zion', 'micha-gamerman-bezochrenu-et-zion-1772434541108-u8bfj', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085733&permalink=micha-gamerman-bezochrenu-et-zionmp4-13a29c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1c2117f8-2738-4dc4-83af-d30b742aa2e9', '7bad125c-ce8e-4918-b3c8-7f04ee7d2883', 'HrAH4XBaJ012IrSpZ78pOgXxhNNNSXQ5lmVU8dEDnt3g', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Micha Gamerman - Rak Simcha
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1a2cc07c-315a-4cce-956a-3abaef082cb0', 'Micha Gamerman - Rak Simcha', 'micha-gamerman-rak-simcha-1772434541108-3p184', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085735&permalink=micha-gamerman-rak-simchamp4-0750ce', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('325f5587-20c8-4211-958a-d10278c71472', '1a2cc07c-315a-4cce-956a-3abaef082cb0', 'ZQpshtcNSMGECiStqiXHF1Lx80001AeNe00mL5du3j1IrM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Micha Gamerman - Kulam Elecha Yashiru
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f724a7cd-890b-4db0-b764-4caae3646ae1', 'Micha Gamerman - Kulam Elecha Yashiru', 'micha-gamerman-kulam-elecha-yashiru-1772434541108-ci1w0', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085737&permalink=micha-gamerman-kulam-elecha-yashiru-6c0a35', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f84500f2-4d27-4c9d-b63e-518c41c5ac4d', 'f724a7cd-890b-4db0-b764-4caae3646ae1', 'GRxzs9O002MajE4pfgws5E2CzeAMg3KZlFN300kzVaA02E', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Micha Gamerman - Rabim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('eae3a5ec-1e3e-4eed-89af-a3067eaed814', 'Micha Gamerman - Rabim', 'micha-gamerman-rabim-1772434541109-r2yk4', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085736&permalink=micha-gamerman-rrrabimmp4-e6340e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5e8189f3-10b7-4e74-8b04-0ed3e4304874', 'eae3a5ec-1e3e-4eed-89af-a3067eaed814', 'xwi5TH2NBE6XoX1LLNnpHeQkrae83ULfW7W2XMxYiKw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yom Shabat Medley - Micha Gamerman
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('751ab5fe-50ad-4a07-aa67-cf30871e74d2', 'Yom Shabat Medley - Micha Gamerman', 'yom-shabat-medley-micha-gamerman-1772434541109-rq5ky', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085747&permalink=yom-shabat-medley-micha-gamerman-b39637', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a402d98d-bb53-461f-a788-b1aa0a9d6072', '751ab5fe-50ad-4a07-aa67-cf30871e74d2', 'ORBYNQ200DmvEuYMOypG41iJmt1rS00xiSqzwZayVlnzU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Leil Shabat Medley - Micha Gamerman
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('560c3ef2-2d68-4040-8fb0-a7e5ff2e7272', 'Leil Shabat Medley - Micha Gamerman', 'leil-shabat-medley-micha-gamerman-1772434541109-jc0j6', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085748&permalink=micha-gamerman-leil-shabat-medleymp4-035370', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('700d1756-d641-430d-bd7d-f211ab6735ae', '560c3ef2-2d68-4040-8fb0-a7e5ff2e7272', 'bkbDh01hAX012Q01Oex4Leszs25EuOxsA5kV15psbU8XO00', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shabbos Medley - Micha Gamerman
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d3d7c36a-84b7-405b-872a-dae0e4718184', 'Shabbos Medley - Micha Gamerman', 'shabbos-medley-micha-gamerman-1772434541109-hq0le', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085749&permalink=micha-shabbatmp4-1971b9', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('72ccda99-decc-4444-a7fe-53532b50ac81', 'd3d7c36a-84b7-405b-872a-dae0e4718184', 'uN4X561Im5Fpso27yFMjP9lP01MfXV6IVbNkSmLIuEps', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Nemouel - Elokai
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('44d2fdd4-e7ec-48e2-8713-34602b4d430c', 'Nemouel - Elokai', 'nemouel-elokai-1772434541109-kvxa6', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085755&permalink=nemouel-elokaimp4-2d5f5d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d1321a42-2d72-4f88-a41a-78ed70221c2d', '44d2fdd4-e7ec-48e2-8713-34602b4d430c', '1YQAbQCEvzxkAgabh7Qc8X1aF1JF1r02y00kw01CaPPJm8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rogers Park - My Friendship Circle
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e8f21ca0-7e75-42b8-963f-d3760ef8b3ba', 'Rogers Park - My Friendship Circle', 'rogers-park-my-friendship-circle-1772434541109-67ans', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085766&permalink=my_friendship_circle_-1080pmp4-1080p-bb41ad', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('94c2179f-62ce-43ab-8607-2ef87f873c2f', 'e8f21ca0-7e75-42b8-963f-d3760ef8b3ba', 'o6UcN790102NTb7ODHLXByw00l4yOiLHBum6t76pBzZsr8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rogers Park - No Place Like Home
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a1faee60-da51-4ea3-96e2-de338301b621', 'Rogers Park - No Place Like Home', 'rogers-park-no-place-like-home-1772434541109-q9r1g', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085767&permalink=no-place-like-home-rogers-park-10fde7', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e95d843f-88db-478e-91ff-0656c8e4dda3', 'a1faee60-da51-4ea3-96e2-de338301b621', 'bfowiJ4sPazlgnnI024Z02ulvV611IcLTQooea2AFAN1U', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rogers Park - Blessings
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a528f886-6ff3-424b-9f22-7d12aeda5469', 'Rogers Park - Blessings', 'rogers-park-blessings-1772434541109-sxdk2', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085768&permalink=rogers-park-blessingsmp4-bb212d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('29176791-6018-4d52-8704-06f5f825ae0f', 'a528f886-6ff3-424b-9f22-7d12aeda5469', 'g4gamYjXeTlGlcYvdpt01Eq02USjj4cqzPDfU2G02jKfYI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rogers Park - Geulah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('826f926a-4d78-4c53-8670-3259996a3c7d', 'Rogers Park - Geulah', 'rogers-park-geulah-1772434541109-deo63', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085770&permalink=rogers-park-geulahmp4-6508d4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('3f6d166f-b77b-4cdd-87b6-3ab915c6316f', '826f926a-4d78-4c53-8670-3259996a3c7d', 'ryxgBJwJPREM02rNOK7tF2Gnzqxo00wz93hTtrlVS013fk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rogers Park - The Holy One
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8e01f090-d392-4df8-a42f-966a3afa67bf', 'Rogers Park - The Holy One', 'rogers-park-the-holy-one-1772434541109-gkjtw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085769&permalink=rogers-park-the-holy-onemp4-42c35d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ae6ccad9-5b88-4f54-a07c-5091e5a4ad00', '8e01f090-d392-4df8-a42f-966a3afa67bf', 'VQJbGzQSG6JSJUEERDjCBjloR01NAVMoNiS300hgdLDZM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rogers Park- Golden Crown
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('76a784f2-fab6-4fea-be80-de5e344898ed', 'Rogers Park- Golden Crown', 'rogers-park-golden-crown-1772434541109-20mmh', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085771&permalink=rogers-park-golden-crownmp4-3043bd', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ff0b571c-9a22-4e02-bb02-bd25898dfa4c', '76a784f2-fab6-4fea-be80-de5e344898ed', 'CC3zpOc4k02CdcWnsH023wE2Z4HkwKKzDEWqDyvus2Gk4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rogers Park - Shared Hearts
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('5eae97d1-b855-4d35-b7fd-de1e53552ed4', 'Rogers Park - Shared Hearts', 'rogers-park-shared-hearts-1772434541109-9eg39', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085772&permalink=rogers-park-shared-heartsmp4-051dd1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ea96813b-d07d-40d3-bd57-5d2d16a5bbd2', '5eae97d1-b855-4d35-b7fd-de1e53552ed4', 'iPC3Sbvq01NS01011Hpcns27kWQ3W6R31TQaW76d8i01kPQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rogers Park - Sukkah's Falling
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('834fa475-e9ef-4fc1-b338-53ec421902c3', 'Rogers Park - Sukkah''s Falling', 'rogers-park-sukkah-s-falling-1772434541109-8fnea', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085773&permalink=rogers-park-sukkah-s-fallingmp4-00a7dc', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9dffa9ad-7d4a-4e21-9ac7-d294866efc33', '834fa475-e9ef-4fc1-b338-53ec421902c3', 'CaGkXF8h4dSac2jRKlCeH7KpfVm02mimbi00017oRo3xls', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rogers Park - The Maggid
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('05604afa-4b8e-4266-8839-96ed3bda75fe', 'Rogers Park - The Maggid', 'rogers-park-the-maggid-1772434541110-ero4q', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085775&permalink=rogers-park-the-maggidmp4-2e2807', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('769f1fe8-cc06-4536-9233-1aa7e431915e', '05604afa-4b8e-4266-8839-96ed3bda75fe', '3R1L00UAiApxbxFlpEAm1CRMP02Hocyq6MlyosTUlRD7Y', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmueli Ungar - Tata Mama
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2067950b-8f73-4670-abef-6a6142334685', 'Shmueli Ungar - Tata Mama', 'shmueli-ungar-tata-mama-1772434541110-jyytj', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085780&permalink=shmueli-ungar-tata-mama-a0fa82', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('41b761fe-12ef-40c7-ab40-eaf8af76bae6', '2067950b-8f73-4670-abef-6a6142334685', 'S11VcknNObXjOs51ybS013me00GhwMM7NW02vBalIt38e4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmueli Ungar - Mach a Brocha
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1fe5ce9d-5cf6-42c1-98bc-f06a1cef866b', 'Shmueli Ungar - Mach a Brocha', 'shmueli-ungar-mach-a-brocha-1772434541110-vazsp', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085783&permalink=videoplayback-5mp4-9cbd11', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0e3c28d0-16e2-484c-a78c-56c5a9615910', '1fe5ce9d-5cf6-42c1-98bc-f06a1cef866b', 'haM01B9dPjAm6b5QwYqmuSc0000mevubdyPYxblR18Z1rU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmueli Ungar - Halailah Hazeh
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d413c036-cf13-46fc-99dd-a12349e12837', 'Shmueli Ungar - Halailah Hazeh', 'shmueli-ungar-halailah-hazeh-1772434541110-kbkyf', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085782&permalink=halailah-hazeh-shmueli-ungar-be9123', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('33cdbb62-026d-4f99-bc29-4cca86b4b4d7', 'd413c036-cf13-46fc-99dd-a12349e12837', 'l01XoQj1Vn01QV8AB5mQzOrNc01Ke82yEH64cM00ESI4J1k', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Simche Friedman - Bo Lepo
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('22b31175-88da-44e5-9a1b-6ca92d5a5806', 'Simche Friedman - Bo Lepo', 'simche-friedman-bo-lepo-1772434541110-zbh71', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085792&permalink=simche-friedman-bo-lepo-1e3264', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('087629bd-e706-40ba-b170-19973649b05c', '22b31175-88da-44e5-9a1b-6ca92d5a5806', 'Otu5IAOcj7n8CcGfbZiifFx9aP2rf00qQJzrizihmopI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Shmueli Ungar- The Dreidel Song
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('dc74275d-8852-49a8-a544-979fddd04c5f', 'Shmueli Ungar- The Dreidel Song', 'shmueli-ungar-the-dreidel-song-1772434541110-nl286', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085784&permalink=shmueli-ungar-the-dreidel-songmp4-861b00', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('044ea36e-8f7c-440d-9ddf-22bcd9fc1594', 'dc74275d-8852-49a8-a544-979fddd04c5f', 'wY8rqWUlzZJUR4L3N8I9fkMvGNVlucDQSDuUPCEoxhA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Simche Friedman - Choson Kaloh
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6784b064-46a8-41a4-92f2-161a90835665', 'Simche Friedman - Choson Kaloh', 'simche-friedman-choson-kaloh-1772434541110-hu00z', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085793&permalink=simche-friedman-choson-kalohmp4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('dab30ba7-bc01-43a2-b27b-45f597275e3f', '6784b064-46a8-41a4-92f2-161a90835665', 'yDl019QR1q8nFgH9R0000VkwpiAhQWDWLvigHnAp43SZtU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Simche Friedman - Bekarov
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('eb54c3f0-3e92-453a-8ba0-310ee2fbc5ef', 'Simche Friedman - Bekarov', 'simche-friedman-bekarov-1772434541110-ym80w', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085794&permalink=simche-friedman-bekarovmp4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('01e2a62d-1800-449d-98fc-154a4666b738', 'eb54c3f0-3e92-453a-8ba0-310ee2fbc5ef', 'QwhLcxnBACAnYfdQjWMFQU8NpBtnTYQuczkoqRTDUdI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Progress: 400/481 videos processed

-- Video: Simche Friedman - Lo Od Rega
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cac92781-1a08-4f6b-8411-5420ddb7fccb', 'Simche Friedman - Lo Od Rega', 'simche-friedman-lo-od-rega-1772434541110-0j93l', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085795&permalink=simche-friedman-lo-od-regamp4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b237ac68-197b-4b8a-abe5-24078cbac241', 'cac92781-1a08-4f6b-8411-5420ddb7fccb', 'hzmpiKWAMYQ02qPi9StZLmW2qeGDIykRgnVjbC7mcheE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Simche Friedman - Kol Dodi
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('447e96f2-7fcb-4ac2-ba22-a725f8b97a27', 'Simche Friedman - Kol Dodi', 'simche-friedman-kol-dodi-1772434541110-boq70', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085796&permalink=simche-friedman-kol-dodi', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5aba260d-475d-4faf-b5cd-4a2e53c84415', '447e96f2-7fcb-4ac2-ba22-a725f8b97a27', 'WlV58aBLhIBLQ00b8btUWW4Qd3ASJTBLBbMA02dqeinGQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uri Davidi- Echad Ani Yodea
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('fff8c984-7b05-4d96-8614-7ac966e803ed', 'Uri Davidi- Echad Ani Yodea', 'uri-davidi-echad-ani-yodea-1772434541111-uuhmk', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085803&permalink=uri-davidi-echad-ani-yodea-5f5b68', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a34cb48d-5ef5-4bee-b61d-2d8375456a8c', 'fff8c984-7b05-4d96-8614-7ac966e803ed', '02HRwnngYk9h5Gjk7cDughliSU1TKY6vy70000HrOPJ8vY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uri Davidi - Jump
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2d30c99f-04e2-460e-a328-8b1790cd32f3', 'Uri Davidi - Jump', 'uri-davidi-jump-1772434541111-btg4h', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085804&permalink=uri-davidi-jumpmp4-09b77e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0942568c-d656-4e30-9744-ca8987dbaaa0', '2d30c99f-04e2-460e-a328-8b1790cd32f3', 'KUlI7p8IY3RWnBa3OoEri00wPr02BKysmw9cBBYz8OR02s', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uri Davidi - Muchanim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('67fbd763-428e-4a4d-8768-e35964c8a297', 'Uri Davidi - Muchanim', 'uri-davidi-muchanim-1772434541111-dip9a', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085805&permalink=uri-davidi-muchanimmp4-a29bf8', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('faf4ea89-dffb-4b45-a505-404deefef4fd', '67fbd763-428e-4a4d-8768-e35964c8a297', 'M0097YOZfAmcUJc5GgfQFX9huXI018Sj00LoFQGlXWz9aA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uri Davidi - Belibi
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d3a7633e-ab32-49e4-8e48-f329355839ce', 'Uri Davidi - Belibi', 'uri-davidi-belibi-1772434541111-wz4ju', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085806&permalink=uri-davidi-belibimp4-e3fd26', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('174b51e5-7434-4083-98de-a1e1f6da71ab', 'd3a7633e-ab32-49e4-8e48-f329355839ce', 'LAF5pHuwXW6IOW0037Uni6CJ3el8YGA9P3TX914lD72o', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uri Davidi - Nu Nu
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9ca74d09-e541-4324-a823-d50c5983c01a', 'Uri Davidi - Nu Nu', 'uri-davidi-nu-nu-1772434541111-n7p6i', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085809&permalink=uri-davidi-nu-nump4-6d627e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('963e64c7-eb63-4e10-a6b5-c80929bb9b98', '9ca74d09-e541-4324-a823-d50c5983c01a', 'U7D02PlpUpdv7Z2tXMOaR6015AabPf5IHVQJI4QbxGmGE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uri Davidi - Halevai
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f2064382-9686-4c3d-8c75-7159ec775c44', 'Uri Davidi - Halevai', 'uri-davidi-halevai-1772434541111-9bhxn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085808&permalink=uri-davidi-halevaimp4-81e62b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('7af7e9fa-a466-4e20-a931-196cbcbae2cc', 'f2064382-9686-4c3d-8c75-7159ec775c44', 'jxqnnKKpY00Y02fGJn013IC102bplZSND6HcCZJqKS3Dh00o', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yoey Muchnik - Light Light Light
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1f47f1f1-468e-4202-8db7-9ff647d96f29', 'Yoey Muchnik - Light Light Light', 'yoey-muchnik-light-light-light-1772434541111-n5mza', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085813&permalink=light-light-light-yoey-muchnik-08fc02', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('bccd4211-1105-44d3-a904-7b4a4de672ef', '1f47f1f1-468e-4202-8db7-9ff647d96f29', 'Up9j029rI00RrMKIXldOcvn3lFjTFy012Dxl01tTcjnLpxQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yoey Muchnik - My Precious Sukka
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9091b602-1908-41e2-b5c4-9525df80d630', 'Yoey Muchnik - My Precious Sukka', 'yoey-muchnik-my-precious-sukka-1772434541111-i4d6q', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085815&permalink=yoey-final-for-uploadmov-e3e1ea', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('bb613701-e631-417b-966e-5b78bb1c699d', '9091b602-1908-41e2-b5c4-9525df80d630', '02OiJlsNZg02IyApetBH11R67EROiwaRD7Y9E00noWPJGI', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yoni Z - Crown
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('64740d55-0d67-4206-afa7-b0f04e61ff8e', 'Yoni Z - Crown', 'yoni-z-crown-1772434541111-5lk4p', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085819&permalink=yoni-z-crown-85d590', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('44c57ff8-6e51-41ed-95f4-68df4f7dcc72', '64740d55-0d67-4206-afa7-b0f04e61ff8e', 'REsDyl5dvBtg7KnrEpUKAX6fdMij1izU3o02jA013BFE8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yoni Z - Boee
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('dc31579f-1efd-4bb5-b709-7b52f0786ab6', 'Yoni Z - Boee', 'yoni-z-boee-1772434541111-d8pzg', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085818&permalink=yoni-z-boee-5ed2d4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('052b76b0-94fe-4dc4-8ab4-a9ae05a82bad', 'dc31579f-1efd-4bb5-b709-7b52f0786ab6', '02ZAaLXn6D01delmzaI9OHLI13wH5mgdROo00ygUmMUaO4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yoni Z - Every Yid's a Fire
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b708ffa5-e3cb-46df-9584-1cd7b42feac1', 'Yoni Z - Every Yid''s a Fire', 'yoni-z-every-yid-s-a-fire-1772434541111-f0chw', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085820&permalink=yoni-z-every-yids-a-firemp4-340608', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('913065a8-f099-4160-9b25-54a0e865ec46', 'b708ffa5-e3cb-46df-9584-1cd7b42feac1', 'fe00ItTQ4JoUM65C2VpP98d1AIjwI02Jg6jpNGGOPWJe8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yoni Z- UP!
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('32e1d0b3-2bf7-4963-bc2f-1afee9b667c4', 'Yoni Z- UP!', 'yoni-z-up-1772434541111-w5uhe', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085822&permalink=up', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2e3348c9-8d1f-4ea1-8887-b68ebfbcb8c9', '32e1d0b3-2bf7-4963-bc2f-1afee9b667c4', '1OLkEy7hw5fWou00ErM6z1KqSuskRFwvftVlbPoMXGXk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yoni Z - Kadima
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('495639e2-8452-49bf-8a98-0d81d4954269', 'Yoni Z - Kadima', 'yoni-z-kadima-1772434541112-5s1i3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085823&permalink=kadima', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('daebb313-33df-4d49-b305-c949a85791d0', '495639e2-8452-49bf-8a98-0d81d4954269', '01anF264kV3ohDJbx1lyA83Y3dr2Nv00Ll8MPGcDKteCA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yoni Z - Hoshana
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2d3ffac2-40c4-48ee-995a-c0ad01501ed8', 'Yoni Z - Hoshana', 'yoni-z-hoshana-1772434541112-scpsz', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085824&permalink=hoshana', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1e791251-9f05-4eb6-83e2-33b47577588b', '2d3ffac2-40c4-48ee-995a-c0ad01501ed8', '6LIlmxNBv32PkQjEC5x1xqiCfbudBy02FThcuZE6pzGA', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Light - Shaindel Antelis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('fad17a96-8b2b-4495-b501-ea9daef1c0b0', 'The Light - Shaindel Antelis', 'the-light-shaindel-antelis-1772434541112-xk28t', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450180&permalink=the-light-shaindel-antelis-2c1cdb', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c1a42bd2-4ff1-4c21-b8be-dfe3b3820464', 'fad17a96-8b2b-4495-b501-ea9daef1c0b0', 'Z9ykSV1Y016OCh00rgpc4N7QdPrKxJHhA7Ot01u9EGjhFU', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Living Lessons Chanukah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('281dacb7-5db0-479c-afea-b8b92606e054', 'Living Lessons Chanukah', 'living-lessons-chanukah-1772434541112-3mjx4', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-living-lessons?cid=4029409&permalink=living-lessons-chanukah-1027b5', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('42b2960c-bc7b-4f0d-af9c-1de3d22e0b81', '281dacb7-5db0-479c-afea-b8b92606e054', 'vYSb4vBo5Uv8u8j9OXuJigTq4BKkpWbCjB8ZmSz1E68', NULL, 'NIKfhVlC478Ozcfi02kkKb5genCZ3Mggur7Tx95EYeyc', 'ready', 726, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Toodaloo - Fire Truck
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c77f129b-acf2-407a-b981-88387edf5c83', 'Toodaloo - Fire Truck', 'toodaloo-fire-truck-1772434541112-iybwy', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4145313&permalink=toodeloo-episode-25-fire-truck-5f00ca', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0555298a-6d0e-4323-9545-b92d9ecff48d', 'c77f129b-acf2-407a-b981-88387edf5c83', 'Fhpnp02W01H45QBKq7fw7MwjYiKUx7EGFrU2IIQ2E02HQ00', NULL, '3gzVbypXp3PSKpF3018XrtTBORiNH2HgYD008qhAVEnuA', 'ready', 511, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Finish Line - MGC
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a7fdea99-5cda-4108-a823-107188f79ddd', 'Finish Line - MGC', 'finish-line-mgc-1772434541112-p7kih', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450146&permalink=finish-line-mgc-078d37', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c90ca801-d5a8-4776-8571-6e21a145a486', 'a7fdea99-5cda-4108-a823-107188f79ddd', 'qGNeUtbKRSrGh9u85Ld4KeFO2EynM02A9BFLe9HhKr01I', NULL, 'wH36ex1ssXaxo5qJZfEcIgEzrcXX01b2nThjkTvsGxFY', 'ready', 146, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy #15 (Audio)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1bbf52c0-d263-4118-84b3-de38c51bf392', 'Uncle Moishy #15 (Audio)', 'uncle-moishy-15-audio-1772434541112-mh4oo', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-audio?cid=4085508&permalink=uncle-moishy-and-the-mitzvah-men_vol_15-468514', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('92b05684-8932-48ab-a3b5-ee95d8b44314', '1bbf52c0-d263-4118-84b3-de38c51bf392', 'Z9XzBAzc5h4bfpgAMsT3DRKr6362aO5MRVkdQUK4lBA', NULL, 'pJppdZloTG9r025PMZHNCQf7XUJhJX40202uUV9zZlYm6Y', 'ready', 2386, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Micha Gamerman - Sukkos
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cfda0fd9-d0b5-45b1-b473-2062e429681a', 'Micha Gamerman - Sukkos', 'micha-gamerman-sukkos-1772434541112-i5jyx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085743&permalink=sukos', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('cbed2483-60eb-4bb3-b7af-cbbb80c98f5d', 'cfda0fd9-d0b5-45b1-b473-2062e429681a', 'pqq00YPGUVIrKuKyFXrfBlWfVWrqtuo01sZDhetV74mGM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Bello's Funny Farm
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('4ab949e5-e06d-4884-b8c7-bfb2017dccc9', 'Bello''s Funny Farm', 'bello-s-funny-farm-1772434541113-0e75u', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-amazing-bello?cid=4029314&permalink=bellos-funny-farm-935ba3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('068dcaf4-d269-4f6c-b007-964427843b70', '4ab949e5-e06d-4884-b8c7-bfb2017dccc9', 'UPZ4Dg0202CAfYt33utbPg78aFNWaEX01lEefmPKcuInO8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Chaptzem - Wild Ride - pt. 3
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('53a7fd20-b1d4-429b-ab6b-51c2829e2cbc', 'Chaptzem - Wild Ride - pt. 3', 'chaptzem-wild-ride-pt-3-1772434541113-8dhtm', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/chaptzem-collection?cid=4596766&permalink=chatpzem-wild-ride-pt-3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ecaf101a-7e77-4aeb-aa32-4c5b872b2909', '53a7fd20-b1d4-429b-ab6b-51c2829e2cbc', 'aTPOhxxhmfZ02yFYB2dw2axBlbDITC9JbpYOfck01dXDo', NULL, 'zPJIUf4mgk4OsU3d7h7lXnVnUCFRL2oReEnnNPdZBqs', 'ready', 724, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Secret Room -  Matzah Man
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2441be4f-8b86-407d-9894-cca48b54d9c6', 'The Secret Room -  Matzah Man', 'the-secret-room-matzah-man-1772434541113-oklum', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-secret-room?cid=4038308&permalink=the-secret-room-matzah-man-15aa23', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('75eabdd4-961c-4047-8ca6-01d569dd18f8', '2441be4f-8b86-407d-9894-cca48b54d9c6', 'OyRbNsqSbPr450001OFGyorQA8qCbtDM00XTnaBd4uZ00sw', NULL, 'OCJZfucV6ChIQ2wa7O01iuUITwUAyz2efWPjuwiLM02LE', 'ready', 447, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Chodesh Kislev
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2234518f-f1af-4c2c-8d4d-804d19c597bd', 'Rabbi B - Chodesh Kislev', 'rabbi-b-chodesh-kislev-1772434541113-igy7e', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4515951&permalink=rabbi-b-chodesh-kislev', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('86e3dd74-a456-4079-8da5-63ff5429f2f6', '2234518f-f1af-4c2c-8d4d-804d19c597bd', 'nEy00mYdTvjkVJTmo02fEa2gjU00XFZG5mX18aeuR0000n5A', NULL, '02m4UqyioBT2n26glsnKVmhjkO35D2DkwHBgzSvMUd34', 'ready', 1412, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Elegant Ella - Sweet Dreams
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c45e136f-dc1b-4235-b939-a2ccc6a54f96', 'Elegant Ella - Sweet Dreams', 'elegant-ella-sweet-dreams-1772434541113-3je6c', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-elegant-ella?cid=4026256&permalink=elegant-ella-sweet-dreams-7ed31a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('bfba7eb8-7257-4593-9cd3-7951a6383d93', 'c45e136f-dc1b-4235-b939-a2ccc6a54f96', 'ax01LQWP8sWteVNUbmRaenkTzcWsPJgzPJ16cA37SCL8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Uncle Moishy #11 (Audio)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('69e9e151-4fc0-40c7-85af-e16fb03506ec', 'Uncle Moishy #11 (Audio)', 'uncle-moishy-11-audio-1772434541113-ocee3', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-uncle-moishy-audio?cid=4085505&permalink=uncle-moishy-and-the-mitzvah-men_vol_11-37cb4f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('fb91e91a-8679-4696-95f3-27e297aa00c5', '69e9e151-4fc0-40c7-85af-e16fb03506ec', 'Ed3RkahQmM02mZ3piLKZeneBQ8SruC00n00Z4Wi13Ey9DQ', NULL, 'JNlIE462iIt3LZHNjUY2hEuQBfkqFvd5cuL5SVojpuo', 'ready', 2332, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Shepselach - The Great Pacifier Hunt
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e340a9f3-8486-47b2-be0a-8a95050573dc', 'The Shepselach - The Great Pacifier Hunt', 'the-shepselach-the-great-pacifier-hunt-1772434541113-0soyo', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-shepselach?cid=4596769&permalink=the-shepselach-the-great-pacifier-hunt', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c1ede961-f063-4e0f-8541-41915e50f24f', 'e340a9f3-8486-47b2-be0a-8a95050573dc', 'Tyn8nYf25dRdiMO73hz8r8DyQtRD6GwsEKZgjwiaP7w', NULL, 'DNC9VchbWyAYfuQ02aMeiAALlkAq7aRRekKtYjKC2NOs', 'ready', 639, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Secret Room -  Gragger
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a87c2cad-3376-4292-9c82-dd3562e101ec', 'The Secret Room -  Gragger', 'the-secret-room-gragger-1772434541113-pznmf', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-secret-room?cid=4038299&permalink=the-secret-room-purim-2-0bfad6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('235e230f-f966-4b39-9f2d-ea277e42c6ee', 'a87c2cad-3376-4292-9c82-dd3562e101ec', 'VvISOd9yFbwQN02LUNG4NLqmmcqnUBoL1lWodazZDtrs', NULL, 'eI7qvrrZMiwds1SWXA02YVDAcI3h8fLOp5tIqomgRnD00', 'ready', 451, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Chaptzem - Wild Ride - pt. 4
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('34a3bef2-a42d-4a9d-8c08-278be4eb30fe', 'Chaptzem - Wild Ride - pt. 4', 'chaptzem-wild-ride-pt-4-1772434541113-xgks2', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/chaptzem-collection?cid=4609572&permalink=chaptzem-wild-ride-pt-4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('20564398-f6f4-48c0-a5cd-109b32665916', '34a3bef2-a42d-4a9d-8c08-278be4eb30fe', 'QcDeAqa0001FgyD1ZrpD9DQnc4BG1HY01hEFHzPh7k3Rdc', NULL, 'MujX0000xG002w3VG4zOQQtQyzUKSb9v01IvcNUWopne5H8', 'ready', 754, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Agent Emes #2- Rabbi Napped
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f3f845fc-f58a-45b2-955d-0739d78b3050', 'Agent Emes #2- Rabbi Napped', 'agent-emes-2-rabbi-napped-1772434541113-t5g93', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-agent-emes?cid=4334969&permalink=agent-emes-2-rabb-napped', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4867681a-5592-48fb-ab11-ec813aba3ed7', 'f3f845fc-f58a-45b2-955d-0739d78b3050', 'woqR6eVXy1OcF37m8GlQQiVo02OLUFfpX1Z009tRV9ZKI', NULL, 'ofsjjFXF02lXXbqJFnW6016eqfijDhOV02600abHA01OdeoI', 'ready', 1932, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Thankful - Talent Unite
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('54195958-5e09-4020-a16b-1d01de59fbe0', 'Thankful - Talent Unite', 'thankful-talent-unite-1772434541113-7q1k6', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-penina-ballerina?cid=4029526&permalink=talent-unite-3e1b22', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5d11b347-3c1a-4490-9862-9476e9d0e4b5', '54195958-5e09-4020-a16b-1d01de59fbe0', 'mK9h01E702rBO00013c5C9o02z5LLA00xxc2HKHkqTAgYWc1w', NULL, 'raohU5XOryHQ004LzE40002OKYbenmoWtagBUCfM3fNqgI', 'ready', 930, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Schnorgelovich - Yom Kippur
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('3c381854-3df8-4949-9d39-2d406b57f06f', 'Schnorgelovich - Yom Kippur', 'schnorgelovich-yom-kippur-1772434541113-edc07', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-schnorgelovich-family?cid=4038285&permalink=the-schnorgelovitchs-yom-kippur-66195e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('146ab8c3-26e3-4036-b561-52453636b990', '3c381854-3df8-4949-9d39-2d406b57f06f', 'WCxsGlZhMTs2Hmzto502S6o00Oy8CvlGuq1etqumCu4qU', NULL, 'yc01ZU3FtecJXvPdX2jPZgFqb83IdA7td01hnLVbYg00Nc', 'ready', 928, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: 8th Day - Lucky
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('ef3021d1-dc9e-4319-a566-0c2d02fc06dc', '8th Day - Lucky', '8th-day-lucky-1772434541114-w6f4y', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085599&permalink=8th-day-lucky-bd38d6', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c49112e8-99a9-4881-b7d0-2920e69f381a', 'ef3021d1-dc9e-4319-a566-0c2d02fc06dc', 'vkOgatAgAlucg8CBmRjgmPI1GjtAVtocV1Q02TCp8vjo', NULL, 'UxtFNNBcd00dLf5qCRvHse4UEZMqDXR00Pbh9NT2F3eDU', 'ready', 221, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dudi Knopfler - Tatte
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('7209f448-c42b-4a45-85e6-0067e5af4709', 'Dudi Knopfler - Tatte', 'dudi-knopfler-tatte-1772434541114-9lz2p', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085675&permalink=dudi-knopfler-tatte-official-video-1080p-d8e125', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('d09874fe-8fd7-4361-9fbc-c65f8d99bb7e', '7209f448-c42b-4a45-85e6-0067e5af4709', 'Qv22Zhi8TyJE4zWASKZhsuxe53YKyRZ3BLe018oVBTcA', NULL, 'K00YwRSz8uVCmKc3dG7ZQ4uragncfRJya028d6PXLCo6Q', 'ready', 252, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Team Teretz - The Water Mystery
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('896abbc2-acb2-4ca8-891c-8b69af147333', 'Team Teretz - The Water Mystery', 'team-teretz-the-water-mystery-1772434541114-9f3bv', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-team-teretz?cid=4038399&permalink=team-teretz-1-008a18', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6293d884-a7bf-4155-9dae-0c3bb16837bf', '896abbc2-acb2-4ca8-891c-8b69af147333', 'JJvFla4YkkZ7nbi8OmTgcV4S6DdIV3KftzTfXf02BAfU', NULL, '02P54EsO1i01Lt0102ap9w7013NpC1KPAld1zIKLUeptlQM00', 'ready', 655, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Giraffe Balloons
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2dc216d5-a9ab-4424-bd4a-0a845fdfe914', 'Giraffe Balloons', 'giraffe-balloons-1772434541114-yytvm', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-creative-stars?cid=4039879&permalink=yossi-balloons-cbe248', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('72020b41-6e63-4318-b1b4-68c28187fd62', '2dc216d5-a9ab-4424-bd4a-0a845fdfe914', 'HKvgAEwFJuSTRTVgpqBOzrHjA37JCzPORHea1sCLP28', NULL, '2NK3ybZYKo26M6NcZ4b4UU1ic01zuiqyuX02GJp3o3SZk', 'ready', 234, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Secret Room -  Yetzias Mitzrayim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('54002ba3-9122-4dfb-afe6-f463f4fb78d3', 'The Secret Room -  Yetzias Mitzrayim', 'the-secret-room-yetzias-mitzrayim-1772434541114-bxzyb', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-secret-room?cid=4038309&permalink=the-secret-room-yetzias-mitzrayim-40513d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('65ecd90a-a7b2-4730-b979-2bc50a52a4b0', '54002ba3-9122-4dfb-afe6-f463f4fb78d3', 'lLH02yI02jTxD9KgpqU5XgwhL57EBntxsMHFIFaeLLftU', NULL, 'd2KDkiznUiiNpSf4ylKc202Uyhjsin7dHyWFexUf2G3g', 'ready', 466, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Nechake Lecha - Leah Avruch
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('6b847687-f234-4359-9142-786775d4255a', 'Nechake Lecha - Leah Avruch', 'nechake-lecha-leah-avruch-1772434541114-6q9oa', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450110&permalink=feb-22-1-48d859', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('795919a1-9669-4c8e-ab58-3d36289fe05a', '6b847687-f234-4359-9142-786775d4255a', 'xO1E00LRS8wSL5d4QOC6RCnYjbNQEdfG6YtiQT3yX01Dg', NULL, 'rDH901paTIX201uEzKESTmD6vH1jy8Gagebq5rnCmBEu8', 'ready', 240, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Operation 613 - #1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('5f03418e-19c4-46fd-8b11-fa361215c061', 'Operation 613 - #1', 'operation-613-1-1772434541114-m7pkr', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-operation-613?cid=4029507&permalink=operation-613-1-03b24f', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('e0942135-f190-4e99-9ae1-b0a10fe843c4', '5f03418e-19c4-46fd-8b11-fa361215c061', '9g4ORRSo83NJitw00R9M31vCwBUf81J1CJhbtV01xkz02w', NULL, '4SeEt8eGFXTigL2AY7d02nd2zbAT00pqZ6isgfD02VrzM00', 'ready', 743, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Kumzits - Chanale
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('de3a8979-5457-4e1e-a386-88e476cc228c', 'The Kumzits - Chanale', 'the-kumzits-chanale-1772434541114-nxnsa', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449885&permalink=the-kumzits-chanale2-388b31', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('15d0ceed-54d8-4f23-8600-d45f820d8d05', 'de3a8979-5457-4e1e-a386-88e476cc228c', 'hGbYPBTDrl7MxgxuazvExAdeI3lxDl702bfpdkVw1CjY', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Morah Ester - Shapes
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('a29ce2f6-5744-4c57-a608-e892b4f54504', 'Morah Ester - Shapes', 'morah-ester-shapes-1772434541114-wi98z', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-morah-ester?cid=4209649&permalink=morah-ester-shapes-48562b', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c5510a7b-814f-44ce-bc4c-2d111a1bd499', 'a29ce2f6-5744-4c57-a608-e892b4f54504', 'FWv02vU01wNEyDs1uTP9P7srMF5iIjXnr53W014aQbiF5w', NULL, 'U2DCdrvkZDBvBjM2LIBrhItDACLf2x02c9q1kHXpmUoI', 'ready', 818, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Captain Sinai Ep. 5 - Picture Frame
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f84744c6-ed39-4ae8-a9ae-18facff1d01c', 'Captain Sinai Ep. 5 - Picture Frame', 'captain-sinai-ep-5-picture-frame-1772434541114-gxhwv', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-captain-sinai?cid=4618112&permalink=captain-sinai-ep-5-picture-frame', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('62db119a-fe9f-49fa-ae67-6603a0761292', 'f84744c6-ed39-4ae8-a9ae-18facff1d01c', 'NQSB7V3c1GN1nS200h02gDXGGlYzU8xX01oWAZ19w1M01yQ', NULL, 'OKerg5K3coPWXj63edivY4rv5bp9rRemGBlYOhpCPks', 'ready', 934, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Kneidles
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('af0293a2-e73f-4ef3-918e-8aa2d60b452e', 'The Kneidles', 'the-kneidles-1772434541114-bt2fd', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-mamish-animations?cid=4029421&permalink=the-kneidles-friday-up-north-by-peretz-hi-resmov-fb0163', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('097a9071-c13a-4bc2-bedd-f6ead981f442', 'af0293a2-e73f-4ef3-918e-8aa2d60b452e', 'gG1r2wqXLL501OHR2jJ00G1X01MVT01GQeoOXgAbB3HnfcE', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dr Shnitzel - Solar Energy #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9dc5397f-2492-4ebd-809a-6cc2cb1ea1bc', 'Dr Shnitzel - Solar Energy #2', 'dr-shnitzel-solar-energy-2-1772434541114-bx7mj', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-dr-shnitzel-science?cid=4310933&permalink=dr-shnitzel-solar-part-2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ab436dc4-b818-44ba-9995-f0d6420f0d54', '9dc5397f-2492-4ebd-809a-6cc2cb1ea1bc', 'ZYMusjZpX94u6b5iyhMJjtpDJ9cC01yGpqBOJfGZtkMw', NULL, 'XXLPTk7QbgzX1872y4igvJ00YET6eWDo02kXP00KnamY6Y', 'ready', 1040, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Eli Marcus - Ahavti
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('b878e381-b95d-48e0-9dc7-7c8fa8089fce', 'Eli Marcus - Ahavti', 'eli-marcus-ahavti-1772434541114-kjctv', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085690&permalink=ahavti-eli-marcus-official-music-video1080p-dd2bce', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('5e4e2647-d29f-4068-afb9-c917da5f62f3', 'b878e381-b95d-48e0-9dc7-7c8fa8089fce', 'VX82zlFfCk9XqyUwQNngW014lUdH5dlhYY5gAvIvLuO4', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Spin a Dreidel - Mish & Mush
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('8443b3cf-c137-48e9-9a79-82b5ccafcdfe', 'Spin a Dreidel - Mish & Mush', 'spin-a-dreidel-mish-mush-1772434541115-u5j8a', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-mish-mush?cid=4037562&permalink=spin-a-dreidel-mish-mush-ce771a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('62f8da07-fdbf-4d0a-aeeb-4f03dbaac39f', '8443b3cf-c137-48e9-9a79-82b5ccafcdfe', '02MXZ4icdL3oHWlxWvmW41Eua00BkOzD4LtYdjDnU01w8Y', NULL, 'zv018006vBPVVOX6Bx0202zmK5bNPfF2RlXm5evNv7UFINI', 'ready', 321, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Bilvavi - Elena Tal
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('cda7f441-89f9-4154-b259-5663dc198603', 'Bilvavi - Elena Tal', 'bilvavi-elena-tal-1772434541115-xu8n1', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450042&permalink=bilvavi-elena-tal', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0c91d2e2-cf7e-4bd7-a4d1-61cc8f60ebf8', 'cda7f441-89f9-4154-b259-5663dc198603', 'd02t64Jf1IxRuKnTf019xqJpkGLdaMXSRPEoYJ3hUNhNw', NULL, 'UnHT7VL7BoC1BbiN5l5PNARbThigG8hJv5nvwbHG9y00', 'ready', 292, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The making of Parsha Time
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('d93b2190-6ce7-4d4b-9127-010997009476', 'The making of Parsha Time', 'the-making-of-parsha-time-1772434541115-rferl', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-parsha-time?cid=4029511&permalink=the-making-of-parsha-timemp4', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('685ca1cd-3fd4-4536-8a2a-9d1d48e8280a', 'd93b2190-6ce7-4d4b-9127-010997009476', 'uZq2IVvLGrUS3wzGHG00Dy51xCH1LYXSdGqpk7bj7XEI', NULL, 'GCuE00jkrGkynEGt3zWAvV9ApiLdbuA6BkZpeSVqdpw4', 'ready', 461, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Pirchei Shomayim Choir - Hamerachem
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('99d7a3ca-a0ef-46cb-b56d-94a657c889a6', 'Pirchei Shomayim Choir - Hamerachem', 'pirchei-shomayim-choir-hamerachem-1772434541115-9fidn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085761&permalink=tomp3cc-hamerachem-pirchei-shomayim-boys-choir_1080p-357b18', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ec688568-3976-4930-b936-92eed8c8ca29', '99d7a3ca-a0ef-46cb-b56d-94a657c889a6', 'M01zMJv4AQ3dV9ExmXUctWTndqcPA4ZrdoxGSZYxyHqo', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Avi Ilson - Eretz Israel
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('88ef984d-3e05-44a6-b25e-1ad8cc4452d2', 'Avi Ilson - Eretz Israel', 'avi-ilson-eretz-israel-1772434541115-moyn6', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085625&permalink=avi-ilson-eretz-israel-official-music-video1080p-44d674', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('f66b79b1-0cb8-4ac3-a98a-b948f47b5f50', '88ef984d-3e05-44a6-b25e-1ad8cc4452d2', 'SAMP8XNFg32GWKV7r3SFty69E3Yw01g1mg00REPOe19Q8', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Secret Room -  Purim
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('df9c7b4e-28bb-4453-a6fb-df0e0ff56b17', 'The Secret Room -  Purim', 'the-secret-room-purim-1772434541115-kjoi9', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-secret-room?cid=4038306&permalink=the-secret-room-purim-ad8e4a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4fef6daa-d402-4eac-ad2a-95484c7ed539', 'df9c7b4e-28bb-4453-a6fb-df0e0ff56b17', 'ZUdB6Kg8uUwujucPKsxjMY026LIJqrV93kY02zSK3Rb9I', NULL, '6SUepbrqFBajXl73hF201rmgVZnJIIRQEX02wcjPCkUvc', 'ready', 433, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Secret Room - Respect Challenge
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('680a5841-998e-4f35-94fe-55c4ed52b01d', 'The Secret Room - Respect Challenge', 'the-secret-room-respect-challenge-1772434541115-3zbpj', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-secret-room?cid=4539057&permalink=secret-room-games-with-time', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('1e3d4a84-79ad-4897-b5c4-830abd9241ed', '680a5841-998e-4f35-94fe-55c4ed52b01d', 'gDwkV2HH2owsCE00KvGb9SOC2uoAsGICyyhM4MOlV02hk', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Jerusalem - Dj Farbreng, Afiko.Man Ft. Matisyahu #TYH
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('242d86bd-c4f8-43ed-93b8-9d7b7291a144', 'Jerusalem - Dj Farbreng, Afiko.Man Ft. Matisyahu #TYH', 'jerusalem-dj-farbreng-afiko-man-ft-matisyahu-tyh-1772434541115-thepz', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-music-videos-male?cid=4085584&permalink=jerusalem-upmix-dj-farbreng-afikoman-feat-matisyahu1080p-5a7cad', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4edc64f7-1780-4168-9c0c-e5667975ee5e', '242d86bd-c4f8-43ed-93b8-9d7b7291a144', 'ij4P8pyS1OSpWdEKi8U00GeMKH9d6K006gXdOVFv1TdXw', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Shepselach - Momo's New Friends
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('5e20fb09-5554-4984-9b08-82a1305d2dde', 'The Shepselach - Momo''s New Friends', 'the-shepselach-momo-s-new-friends-1772434541115-8067i', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-shepselach?cid=4593908&permalink=the-shepselach-momos-new-friends', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('dc9e95b6-7cd8-4c93-a745-b825e3a54435', '5e20fb09-5554-4984-9b08-82a1305d2dde', '3aZhCPpAhpkzz9w4e4F2DfuALeeB4bDO6EaOArZRXtQ', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Captain Sinai Ep. 2 - Fly Fly Away
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('52b3d396-4db7-45ee-8f47-2979f617f380', 'Captain Sinai Ep. 2 - Fly Fly Away', 'captain-sinai-ep-2-fly-fly-away-1772434541115-m7ky5', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-captain-sinai?cid=4517534&permalink=captain-sinai-ep-2-fly-fly-away', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('72fe7fc1-6554-4a3a-a569-e45fdf33f034', '52b3d396-4db7-45ee-8f47-2979f617f380', '4Zj1hHIb2ME00L3GqCjGLERzlftiUij5gDnLWaT2dVIc', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rainbow Color Experiment
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('90edd816-61e8-4ad9-8ebd-ede897e34391', 'Rainbow Color Experiment', 'rainbow-color-experiment-1772434541115-898pz', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toveedo-by-kids?cid=4375518&permalink=science-experiment', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a012ef9a-d9cd-4efb-91c7-d224f89a6eb0', '90edd816-61e8-4ad9-8ebd-ede897e34391', 'fFcl3AejCqvg4VIiuIYj02hn4DTuoun00jhf237onwlMM', NULL, NULL, 'preparing', NULL, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Word Power - "Sorry"
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('fcefac93-e11b-42bf-8ae8-8af58fca6bb8', 'Word Power - "Sorry"', 'word-power-sorry-1772434541115-5tvmk', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/word-power?cid=4467537&permalink=word-power-sorry', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('52717df0-ff78-4473-bf93-19d4e8de20e1', 'fcefac93-e11b-42bf-8ae8-8af58fca6bb8', 'bgMz3Fcg6sXPV2lLLsXhyS1rpyYYlB38nfZ8UQmJdw4', NULL, 'osxYCqwHgEiVuFZoKaxznbTmIrPbg00XHSgsxBbg1pJc', 'ready', 328, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Give us strength - Dobby Baum
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('96fbfb4a-ed86-42b7-af07-02c43ed721b9', 'Give us strength - Dobby Baum', 'give-us-strength-dobby-baum-1772434541116-f4w9x', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4450004&permalink=give-us-strength-dobby-baum-2cee1e', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c702a5fe-b8c5-42a6-a380-e1d897b5ad63', '96fbfb4a-ed86-42b7-af07-02c43ed721b9', 'HstTeO01KqVxMGw2HcwmkVynkuXPmRJc111FKnSNb6JE', NULL, 'EpEhcqbvekOsN53XSi7H0100CiHV1GSuL1o7hBA3psLYI', 'ready', 337, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Secret Room - Siddur
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('75375126-b581-496a-b107-2fc38e3a6e88', 'The Secret Room - Siddur', 'the-secret-room-siddur-1772434541116-s7dzs', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-secret-room?cid=4121508&permalink=the-secret-room-siddur-226de2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6b112c69-0df8-44a0-9393-dec34b741f23', '75375126-b581-496a-b107-2fc38e3a6e88', 'a8el6i002S01amDRWPO5hhRU2tvFSfdeldhIMeGZnuowY', NULL, 'JGvNKdScz02OhQ7LybDHpIjcHHpKhKKzUXlxeSGzV5zM', 'ready', 181, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Challah Baking
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('24621d78-eda9-43dd-873c-51b7d5a2f778', 'Challah Baking', 'challah-baking-1772434541116-kz5me', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toveedo-by-kids?cid=4038513&permalink=challah-baking', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('0650477e-0cf0-470a-aee0-b793b9535834', '24621d78-eda9-43dd-873c-51b7d5a2f778', 'UPwxOboxjRgGE5wpv00T9N01L8EdlApJI600OSv01iUmwdA', NULL, 'kP5BDnEwyUMXVr5P3QrbAv8h4f62FCbJkGTnr8emC8s', 'ready', 216, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Schnorgelovich - Lag Ba'omer
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('06351f14-c661-4bd2-bbf7-8ba9324b382a', 'Schnorgelovich - Lag Ba''omer', 'schnorgelovich-lag-ba-omer-1772434541116-x3fb2', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-schnorgelovich-family?cid=4038284&permalink=schnorgelovich-lag-bomer-58a38a', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ac3838ca-88b7-4f49-81a7-49e70cef7672', '06351f14-c661-4bd2-bbf7-8ba9324b382a', 'w5JCwQ34vIDoFzHDBv1k900yk7LYhZpJi004gc02401o8nM', NULL, 'O4fAA702DiWgd02fC2nq7oxuvkLCmjHyI02CjURzLRn013g', 'ready', 242, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzventions - Dream Bigger
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('1b8a7ae1-3eee-43a2-aab0-175ef80ea003', 'Mitzventions - Dream Bigger', 'mitzventions-dream-bigger-1772434541116-8gutx', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/mitzventions-collection?cid=4029450&permalink=mitzventions-dream-bigger', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4b4a1759-dd29-4f33-a77f-3c233647cba1', '1b8a7ae1-3eee-43a2-aab0-175ef80ea003', 'tTbTfdkJx6PoRQ6W2X4sRe5018f024U3orqmW0001IumGGo', NULL, 'wMnDxImyypTkTiMh8flladAwZ2qG701oSWiVXiNd5Zk4', 'ready', 935, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Toodaloo - Chocolate Making
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('4c251b34-fac7-4dff-b10a-92b16f4aa218', 'Toodaloo - Chocolate Making', 'toodaloo-chocolate-making-1772434541116-34l8v', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toodaloo-1?cid=4038432&permalink=toodeloo-episode-19-chocolate-making-f139c3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('ba2d8283-bd5d-4cb8-bad5-a88ea415f96f', '4c251b34-fac7-4dff-b10a-92b16f4aa218', 'wofBQka4lJaXax3ugqGCnhjFA7NgwIhb958riNMBu02I', NULL, 'iROcrd4TAui01HDYT02En00x5jhqf00ZCGyCRN1uMaW00GiQ', 'ready', 1434, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dr. Shnitzel - Centrifugal Force
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('09edd9da-b1ff-46b3-93a2-ab777539fd0a', 'Dr. Shnitzel - Centrifugal Force', 'dr-shnitzel-centrifugal-force-1772434541116-sqz8z', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-dr-shnitzel-science?cid=4029349&permalink=dr-shnitzel-centrifuge-force-8fd34c', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('b565d032-01a9-493d-b916-ee948ff090e8', '09edd9da-b1ff-46b3-93a2-ab777539fd0a', 'PkmGElfEGp6KTq01exOWpzOV101gxEvdRd00eQ00S5EGDgk', NULL, 'b02vUUyQ1NTHoGWuoSMQQjdb01kxpVRct9zXXFeoIitYI', 'ready', 1589, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Punchkees - Rambam
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('58afd27d-bbbe-4646-ad9c-48da1c7d3286', 'Punchkees - Rambam', 'punchkees-rambam-1772434541116-ze0td', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-timeless-puppet-shows?cid=4038014&permalink=19-new-2fe54d', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('685ccaf0-5541-43af-8f33-57ac8b9a1a08', '58afd27d-bbbe-4646-ad9c-48da1c7d3286', 'mcZ6Qly2eqnWDwV2FjQyxPHyDZB7c1TSMW1dcP7BKbQ', NULL, 'dx3VN102ATFoTsLPnEblha2Behb8dqN253sYtoRtPQic', 'ready', 1621, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Secret Room - Torah
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e8d2656e-896b-4032-83b7-6f8811f33a4b', 'The Secret Room - Torah', 'the-secret-room-torah-1772434541116-bof77', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-secret-room?cid=4092518&permalink=the-secret-room-torah-2785cf', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('67ce9151-f675-40f5-8da0-4a53922e0454', 'e8d2656e-896b-4032-83b7-6f8811f33a4b', 'ugaWVDMPpyqY2SoTiXrdGts00j1mg9E01zLRymz01NIYqQ', NULL, 'Wfs8VraT2ft02FPr6z4oU6N3jLeadi02Anx00u2Hn1P55w', 'ready', 449, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Operation 613 - #2
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('f6fd1f60-3b91-4557-9ba7-d29467b9ac7d', 'Operation 613 - #2', 'operation-613-2-1772434541116-mcgfc', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-operation-613?cid=4029508&permalink=operation-613-2-a21bf2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a8233d83-5634-4ef2-9c19-9ad73c6b53b1', 'f6fd1f60-3b91-4557-9ba7-d29467b9ac7d', '98YFgPcQU1Ss8YZWlXPkazePm3WFwbZiekggHBB6KSY', NULL, 'cFoECDa00z4j5MztiTt3OA3sY2H1wfjk02Eb7PqapavDI', 'ready', 744, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Rabbi B - Rain for Cheshvan
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('558c04cf-81cc-4ead-acef-42680a81688f', 'Rabbi B - Rain for Cheshvan', 'rabbi-b-rain-for-cheshvan-1772434541116-mvoqq', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/rabbi-b-collection?cid=4038202&permalink=08-rain_cheshvan-final-1-a26d06', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('4918d378-b41b-44dd-b8a6-f53d9c5c5c8b', '558c04cf-81cc-4ead-acef-42680a81688f', 'S82lNUulzQBGuyTUAeJC00d8utti021cuHkuwdZZptdqE', NULL, 'uDw02Q3bsxgxlvsp7wwzbQ028JWZi01X9HvQHoAhQvbvzo', 'ready', 1952, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mimmy & Simmy 2 - The Grass Isn't Greener (for women and girls)
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('2adb51e4-9f4d-49a1-8535-b28fa048a5ba', 'Mimmy & Simmy 2 - The Grass Isn''t Greener (for women and girls)', 'mimmy-simmy-2-the-grass-isn-t-greener-for-women-an-1772434541116-cs0es', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/kol-isha-girls-adventures?cid=4449562&permalink=mimmy-simmy-2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('11715ad5-494c-4b2c-a076-a731d3b5656c', '2adb51e4-9f4d-49a1-8535-b28fa048a5ba', 'MNiXgHpWvesUZ00801ZaUKt3PkmQK1vG02P202QZyJdB901k', NULL, '01OTR2NhqjtLJInXC8UGMdWsWb2rPq27GD8zeRb3hhEE', 'ready', 1867, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Tefilas Ha'Neiros - Aliza Loeb
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e253564a-0b85-4ead-82ae-f4c2ddda234f', 'Tefilas Ha''Neiros - Aliza Loeb', 'tefilas-ha-neiros-aliza-loeb-1772434541116-9gj9p', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/music-videos-female?cid=4449818&permalink=tefilas-haneiros-aliza-loeb-1d40a8', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('a922c817-4492-4508-8253-00877f36f878', 'e253564a-0b85-4ead-82ae-f4c2ddda234f', 'WPXUyDFEZUCeJ00VCxLiUNlZS0201KtPnCYQyU01FbiwBsk', NULL, '4ASFq3k0100MdOJaY3TpmOIU00TOZJOemjlCHE6wgi5urg', 'ready', 447, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Dr. Shnitzel - Colors & Orbeez #1
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9f175a3d-8b53-4181-a7fe-5989661a15d0', 'Dr. Shnitzel - Colors & Orbeez #1', 'dr-shnitzel-colors-orbeez-1-1772434541117-2sbx2', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-dr-shnitzel-science?cid=4029354&permalink=dr-shnitzel-colors-orbeez-0ee8f3', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('aae6b9b7-7a1a-48e8-a36a-bd5f2954ca23', '9f175a3d-8b53-4181-a7fe-5989661a15d0', 'KWPNuWGEx8taLtntumKx3OLkCnLgkcy68I7JvPXISrs', NULL, 'ExQj2hoHKIz1Qb00LN94kIzFioPFYQM2oHPKqQcWuKdc', 'ready', 1926, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Fantastic Gymnastics
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('dc428c42-672a-47ea-8d06-e14e0b1fd568', 'Fantastic Gymnastics', 'fantastic-gymnastics-1772434541117-ae03b', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toveedo-by-kids?cid=4038505&permalink=gymnastics', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2548e748-66f0-4450-9deb-ae37ce33f2ac', 'dc428c42-672a-47ea-8d06-e14e0b1fd568', '4E2fGnC01KLJs4vOQwTAlM6AFNyi4o4LeH9owyEOLQVE', NULL, '5EjZk01M7RnptXikCDttiCDeFbyzoAQfQWSdLp01uszM4', 'ready', 195, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Yossi & Leah’s Ranch - Horse Prepping
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('c6c18364-8999-4950-b0da-c8147dc7f1eb', 'Yossi & Leah’s Ranch - Horse Prepping', 'yossi-leah-s-ranch-horse-prepping-1772434541117-8x6zm', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-yossi-leahs-ranch?cid=4038570&permalink=yossi-leahs-ranch-horse-prepping-e55ecd', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c3020480-e7e1-4a71-919b-fb6d320b8bb1', 'c6c18364-8999-4950-b0da-c8147dc7f1eb', 'HZWPWYO4jfpQBjr2JqTz3028oZy02o335RuKt6oFpi8y4', NULL, 'jr5jtcb36OYL01A4C8EYWBQKYnTG41TrINJGScw8iibI', 'ready', 897, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Punchkees - Secret Signs
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('40f6ed6c-4820-42d4-b49d-f2956ebbbe65', 'Punchkees - Secret Signs', 'punchkees-secret-signs-1772434541117-c3652', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-timeless-puppet-shows?cid=4038006&permalink=23-new-ab60c2', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('6792277e-f723-4c13-a3fb-6142885a5a80', '40f6ed6c-4820-42d4-b49d-f2956ebbbe65', '35umVPhzJ6G6029o4n01Iwk3K3xiFqD004rFosEauLXPtY', NULL, 'aDGrXQHI8lMsDzW2eGm7zWDYxc00vnOw99exEbiqGPdA', 'ready', 1400, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: The Secret Room - Tzitzis
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('fa401564-8c4c-4287-bf66-498bd0cdffa7', 'The Secret Room - Tzitzis', 'the-secret-room-tzitzis-1772434541117-a7x3j', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-the-secret-room?cid=4038297&permalink=the-secret-room-tzitzis-18f3e1', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('84bc29af-6464-495c-9846-104186e38869', 'fa401564-8c4c-4287-bf66-498bd0cdffa7', 'YaTpzgoinjdSb7ggkd00WjUVhHMzrvtK9FsNq1NCkrQY', NULL, 'bUfEmGtyX01k1If4CCAeZxpfqLdnq3bvKskZ2i8401FOg', 'ready', 452, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mr. Hossenfepher - pt. 5 - The Last Hope
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('71402e22-ae7d-4d67-b434-00f0ccebed85', 'Mr. Hossenfepher - pt. 5 - The Last Hope', 'mr-hossenfepher-pt-5-the-last-hope-1772434541117-srtkn', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-mr-hossenfepher?cid=4029469&permalink=mr-hossenfepher-6-the-last-hope-934512', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('9a8e0b02-fbf1-417b-a7f7-e282f19320dd', '71402e22-ae7d-4d67-b434-00f0ccebed85', 'KUNdP33q5n00f02U2pq00yzkjZqSS4wk01BUTecc7rl2r01E', NULL, 'tdbH8g216cn1VgRuMUCuQb6pB7KiDf3GrkK2GR5VI2o', 'ready', 1124, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Word Power - "Enjoy"
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('9ff71561-15b6-4229-9aad-753e64d166b0', 'Word Power - "Enjoy"', 'word-power-enjoy-1772434541117-yxxl0', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/word-power?cid=4449325&permalink=word-power-sharing', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('2d92c17d-2467-4230-b747-6b635fecfeb7', '9ff71561-15b6-4229-9aad-753e64d166b0', 'Lh5ML1IprdPjbNPSznZNfjj1OX1IGBh2GAZqFPFWdEc', NULL, 'yxZKP9r1g402xWCbdsAYft9NA00qM2H64Q5YXuvmRsGN8', 'ready', 369, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Mitzvah Cops
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('10b68d7f-0e99-4c76-924a-8488b77a1f03', 'Mitzvah Cops', 'mitzvah-cops-1772434541117-twxim', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toveedo-by-kids?cid=4375524&permalink=mitzvah-cops', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c0c69308-2d57-4438-8381-8f0b3419642d', '10b68d7f-0e99-4c76-924a-8488b77a1f03', 'VQWOd00xtSzgHvM4NuinTqW2Cme4oyKF1DJwPy4NaxEw', NULL, '00UGM14dBLoMLKACeSVEt5livoFHeNEVWGdCiJxZGcls', 'ready', 452, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

-- Video: Magic Sticks
INSERT INTO videos (id, title, slug, status, "subsiteId", "descriptionRich", "isFree", "hasAds", "createdAt", "updatedAt")
VALUES ('e2000b95-b5c9-4c9d-92c0-9054ced4e6c4', 'Magic Sticks', 'magic-sticks-1772434541117-tise8', 'unpublished', '300fccf5-1c86-41e8-a756-dd64fc2d06ab', 'Imported from Toveedo. Original URL: https://toveedo.com/programs/collection-toveedo-by-kids?cid=4143995&permalink=magic-sticks', false, false, NOW(), NOW())
ON CONFLICT (slug) DO NOTHING;
INSERT INTO video_assets (id, "videoId", "muxAssetId", "muxPlaybackId", "muxUploadId", status, "durationSeconds", "isPrimary", "createdAt")
VALUES ('c120dc88-e8e7-41ad-a7a8-def7b4e23a62', 'e2000b95-b5c9-4c9d-92c0-9054ced4e6c4', '49d4dvTdNLEZOZXOCxs3aKVy4UmLFEbGnVwYMjopuDc', NULL, 'wUqcYmMrIfHwuJtEoUq7nVqtjDxTm1S8jUaq01i26lr4', 'ready', 138, true, NOW())
ON CONFLICT ("muxAssetId") DO NOTHING;

COMMIT;

-- Import complete: 481 videos
