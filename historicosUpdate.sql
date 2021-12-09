SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2677
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=98;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2610
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=88;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2548');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2549');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2550');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2551');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2552');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2553');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2554');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2555');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2556');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2557');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2558');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2559');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2560');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2561');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2562');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2563');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2564');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2565');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2566');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2567');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2568');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2569');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2570');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2511
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=100;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2538
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=82;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2419
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=85;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2411
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=77;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2438
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=78;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2467
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=90;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2522
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=81;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2532
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=101;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2546
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=103;
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);
SELECT * FROM suite2.plant group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2439
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=87;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2349
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=87;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2398
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=60;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2384
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=61;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2379
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=66;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2373
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=40;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2352');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2353');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2354');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2355');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2356');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2357');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2358');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2359');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2360');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2361');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2362');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2363');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2364');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2365');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2366');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2367');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2368');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2369');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2370');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2371');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2372');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2296
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=69;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2260');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2261');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2262');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2263');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2264');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2265');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2266');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2267');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2268');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2269');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2270');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2271');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2272');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2273');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2274');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2275');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2276');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2277');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2278');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2279');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2280');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2239');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2240');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2241');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2242');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2243');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2244');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2245');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2246');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2247');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2248');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2249');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2250');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2251');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2252');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2253');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2254');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2255');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2256');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2257');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2258');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2259');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2233');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2234');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2235');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2236');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2237');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2238');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2218');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2219');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2220');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2221');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2222');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2223');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2224');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2225');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2226');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2227');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2228');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2229');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2230');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2231');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2232');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2217
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=50;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=2117
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=50;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2215');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2216');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2168');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2169');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2170');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2171');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2172');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2173');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2174');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2175');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2176');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2177');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2178');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2179');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2180');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2181');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2182');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2183');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2184');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2185');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2186');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2187');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2188');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2189');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2190');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2191');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2192');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2193');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2194');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2195');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2196');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2197');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2198');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2199');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2200');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2201');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2202');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2203');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2204');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2205');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2206');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2207');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2208');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2209');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2210');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2211');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2212');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2213');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2214');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2167');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2117');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2118');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2119');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2120');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2121');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2122');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2123');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2124');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2125');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2126');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2127');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2128');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2129');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2130');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2131');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2132');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2133');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2134');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2135');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2136');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2137');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2138');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2139');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2140');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2141');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2142');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2143');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2144');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2145');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2146');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2147');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2148');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2149');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2150');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2151');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2152');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2153');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2154');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2155');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2156');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2157');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2158');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2159');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2160');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2161');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2162');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2163');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2164');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2165');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2166');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
DELETE FROM `suite2`.`plant` WHERE (`id` = '2113');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2114');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2115');
DELETE FROM `suite2`.`plant` WHERE (`id` = '2116');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1885
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=64;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1628
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=59;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1707
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=38;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1755
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=67;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1827
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=58;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1859
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=73;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1794
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=53;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1791
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=54;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1773
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=49;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1870
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=74;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1850
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=70;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1792
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=56;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1795
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=57;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1775
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=51;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1749
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=48;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1751
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=47;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1727
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=43;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1728
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=42;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1683
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=36;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1678
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=35;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1729
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=45;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1694
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=37;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1733
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=39;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1733
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=44;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1667
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=34;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1663
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=65;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1657
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=32;
SELECT * FROM ema2_tds.componente where fuente_datos = 4900;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1632
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=31;
DELETE FROM `suite2`.`plant` WHERE (`id` = '1629');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1630');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
DELETE FROM `suite2`.`plant` WHERE (`id` = '1367');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1368');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1369');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1370');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1371');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1372');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1373');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1374');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1375');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1376');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1377');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1378');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1379');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1380');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1381');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1382');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1383');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1384');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1385');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1386');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1387');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1388');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1389');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1390');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1391');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1392');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1393');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1394');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1395');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1396');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1397');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1398');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1399');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1400');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1401');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1402');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1403');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1404');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1405');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1406');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1407');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1408');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1409');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1410');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1411');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1412');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1413');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1414');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1415');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1416');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1417');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1418');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1419');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1420');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1421');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1422');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1423');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1424');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1425');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1426');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1427');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1428');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1429');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1430');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1431');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1432');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1433');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1434');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1435');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1436');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1437');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1438');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1439');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1440');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1441');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1442');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1443');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1444');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1445');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1446');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1447');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1448');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1449');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1450');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1451');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1452');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1453');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1454');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1455');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1456');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1457');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1458');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1459');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1460');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1461');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1462');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1463');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1464');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1465');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1466');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1467');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1468');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1469');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1470');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1471');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1472');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1473');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1474');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1475');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1476');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1477');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1478');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1479');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1480');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1481');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1482');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1483');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1484');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1485');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1486');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1487');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1488');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1489');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1490');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1491');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1492');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1493');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1494');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1495');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1496');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1497');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1498');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1499');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1500');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1501');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1502');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1503');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1504');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1505');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1506');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1507');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1508');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1509');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1510');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1511');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1512');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1513');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1514');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1515');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1516');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1517');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1518');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1519');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1520');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1521');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1522');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1523');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1524');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1525');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1526');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1527');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1528');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1529');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1530');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1531');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1532');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1533');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1534');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1535');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1536');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1537');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1538');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1539');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1540');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1541');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1542');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1543');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1544');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1545');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1546');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1547');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1548');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1549');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1550');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1551');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1552');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1553');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1554');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1555');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1556');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1557');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1558');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1559');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1560');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1561');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1562');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1563');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1564');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1565');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1566');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1567');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1568');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1569');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1570');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1571');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1572');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1573');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1574');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1575');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1576');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1577');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1578');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1579');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1580');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1581');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1582');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1583');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1584');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1585');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1586');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1587');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1588');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1589');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1590');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1591');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1592');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1593');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1594');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1595');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1596');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1597');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1598');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1599');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1600');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1601');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1602');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1603');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1604');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1605');
DELETE FROM `suite2`.`plant` WHERE (`id` = '1606');
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);
SELECT * FROM suite2.plant-- group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);;
SELECT * FROM suite2.plant group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);
SELECT * FROM suite2.plant group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);
SELECT * FROM suite2.plant group by month(fecha_creacion),day(fecha_creacion),hour(fecha_creacion);
SELECT * FROM suite2.plant group by month(fecha_creacion),day(fecha_creacion);
SELECT * FROM ema2_desa.plan where id_producto is not null;
SELECT * FROM ema2_desa.producto;
SELECT * FROM ema2_desa.clasificacion_caracteristica_comercial;
SELECT * FROM ema2_desa.caracteristica_comercial;
SELECT * FROM ema2_desa.plan;
SELECT * FROM ema2_desa.caracteristica_comercial_plan;
SELECT * FROM suite2.plant;
SELECT * FROM suite2.plant;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1199
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=93;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1190
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=80;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1159
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=79;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1122
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=84;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1170
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=89;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1180
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=92;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1216
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=99;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1186
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=94;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1160
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=91;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1160
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=91;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1192
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=96;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1203
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=97;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1231
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=102;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1252
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=83;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1052
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=83;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1061
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=70;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1074
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=70;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=967
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=41;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=986
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=46;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1006
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=52;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1012
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=68;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1064
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=71;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1078
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=55;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1064
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=68;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1097
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=75;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1098
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=63;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1095
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=62;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1076
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=72;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=1101
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=76;
UPDATE `suite2`.`lote` SET `taskid` = '1134c6bc-7a6b-48dc-97d5-31e6563b6f01' WHERE (`id` = '1');
SELECT * FROM suite2.lote;
DELETE FROM `suite2`.`plant` WHERE (`id` = '863');
DELETE FROM `suite2`.`plant` WHERE (`id` = '864');
DELETE FROM `suite2`.`plant` WHERE (`id` = '865');
DELETE FROM `suite2`.`plant` WHERE (`id` = '866');
DELETE FROM `suite2`.`plant` WHERE (`id` = '867');
DELETE FROM `suite2`.`plant` WHERE (`id` = '868');
DELETE FROM `suite2`.`plant` WHERE (`id` = '869');
DELETE FROM `suite2`.`plant` WHERE (`id` = '870');
DELETE FROM `suite2`.`plant` WHERE (`id` = '871');
DELETE FROM `suite2`.`plant` WHERE (`id` = '872');
DELETE FROM `suite2`.`plant` WHERE (`id` = '873');
DELETE FROM `suite2`.`plant` WHERE (`id` = '874');
DELETE FROM `suite2`.`plant` WHERE (`id` = '875');
DELETE FROM `suite2`.`plant` WHERE (`id` = '876');
DELETE FROM `suite2`.`plant` WHERE (`id` = '877');
DELETE FROM `suite2`.`plant` WHERE (`id` = '878');
DELETE FROM `suite2`.`plant` WHERE (`id` = '879');
SELECT * FROM suite2.plant;
UPDATE `suite2_all_antiguo`.`lote` SET `taskid` = 'ce757608-5fcd-4500-b59c-991374c4d96d' WHERE (`id` = '1');
UPDATE `suite2_all_antiguo`.`lote` SET `taskid` = '964e320f-420c-4a91-9d2c-1cb29544f000' WHERE (`id` = '1');
UPDATE `suite2_all_antiguo`.`lote` SET `taskid` = '964e320f-420c-4a91-9d2c-1cb29544f000' WHERE (`id` = '4');
UPDATE `suite2_all_antiguo`.`lote` SET `taskid` = '1134c6bc-7a6b-48dc-97d5-31e6563b6f01' WHERE (`id` = '1');
UPDATE `suite2_bk`.`lote` SET `taskid` = '1134c6bc-7a6b-48dc-97d5-31e6563b6f01' WHERE (`id` = '1');
SELECT * FROM suite2_bk.lote;
DELETE FROM `suite2`.`plant` WHERE (`id` = '809');
DELETE FROM `suite2`.`plant` WHERE (`id` = '810');
DELETE FROM `suite2`.`plant` WHERE (`id` = '811');
DELETE FROM `suite2`.`plant` WHERE (`id` = '812');
DELETE FROM `suite2`.`plant` WHERE (`id` = '813');
DELETE FROM `suite2`.`plant` WHERE (`id` = '814');
DELETE FROM `suite2`.`plant` WHERE (`id` = '815');
DELETE FROM `suite2`.`plant` WHERE (`id` = '816');
DELETE FROM `suite2`.`plant` WHERE (`id` = '817');
DELETE FROM `suite2`.`plant` WHERE (`id` = '818');
DELETE FROM `suite2`.`plant` WHERE (`id` = '819');
DELETE FROM `suite2`.`plant` WHERE (`id` = '820');
DELETE FROM `suite2`.`plant` WHERE (`id` = '821');
DELETE FROM `suite2`.`plant` WHERE (`id` = '822');
DELETE FROM `suite2`.`plant` WHERE (`id` = '823');
DELETE FROM `suite2`.`plant` WHERE (`id` = '824');
DELETE FROM `suite2`.`plant` WHERE (`id` = '825');
DELETE FROM `suite2`.`plant` WHERE (`id` = '826');
DELETE FROM `suite2`.`plant` WHERE (`id` = '827');
DELETE FROM `suite2`.`plant` WHERE (`id` = '828');
DELETE FROM `suite2`.`plant` WHERE (`id` = '829');
DELETE FROM `suite2`.`plant` WHERE (`id` = '830');
DELETE FROM `suite2`.`plant` WHERE (`id` = '831');
SELECT * FROM suite2.plant;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=802
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=25;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=781
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=19;
DELETE FROM `suite2`.`plant` WHERE (`id` = '755');
DELETE FROM `suite2`.`plant` WHERE (`id` = '756');
DELETE FROM `suite2`.`plant` WHERE (`id` = '757');
DELETE FROM `suite2`.`plant` WHERE (`id` = '758');
DELETE FROM `suite2`.`plant` WHERE (`id` = '759');
SELECT * FROM suite2.plant;
SELECT * FROM suite2.plant;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=323
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=26;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=290
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=25;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=692
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=21;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=692
    ) newdata
SET
    p2.contorno = newdata.contorno,
   -- p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=21;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=679
    ) newdata
SET
    p2.contorno = newdata.contorno,
   -- p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=19;
SELECT * FROM suite2.plant;
DELETE FROM `suite2`.`plant` WHERE (`id` = '670');
DELETE FROM `suite2`.`plant` WHERE (`id` = '671');
DELETE FROM `suite2`.`plant` WHERE (`id` = '672');
DELETE FROM `suite2`.`plant` WHERE (`id` = '673');
DELETE FROM `suite2`.`plant` WHERE (`id` = '674');
DELETE FROM `suite2`.`plant` WHERE (`id` = '675');
DELETE FROM `suite2`.`plant` WHERE (`id` = '676');
DELETE FROM `suite2`.`plant` WHERE (`id` = '677');
DELETE FROM `suite2`.`plant` WHERE (`id` = '678');
SELECT * FROM suite2.plant;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=669
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=18;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=632
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=12;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=643
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=16;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=610
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=18;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=620
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=11;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=613
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=9;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=617
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=10;
SELECT * FROM suite2.plant;
SELECT * FROM suite2.plant;
DELETE FROM `suite2`.`plant` WHERE (`id` = '616');
SELECT * FROM suite2.plant;
SELECT * FROM suite2.plant;
DELETE FROM `suite2`.`plant` WHERE (`id` = '520');
SELECT * FROM suite2.plant;
UPDATE suite2_all_antiguo.plant p2, (
    SELECT
        p1.contorno,
        p1.area,
        p1.ndvi_avg,
        p1.data_statistic
    FROM suite2.plant p1
    WHERE
        p1.id=473
    ) newdata
SET
    p2.contorno = newdata.contorno,
    p2.area = newdata.area,
    p2.ndvi_avg = newdata.ndvi_avg,
    p2.data_statistic = newdata.data_statistic
WHERE
    p2.id=5;
