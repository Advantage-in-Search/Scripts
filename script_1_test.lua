local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v24, v25)
	local v26 = {};
	for v42 = 1, #v24 do
		v6(v26, v0(v4(v1(v2(v24, v42, v42 + 1)), v1(v2(v25, 1 + (v42 % #v25), 1 + (v42 % #v25) + 1))) % 256));
	end
	return v5(v26);
end
local v8 = tonumber;
local v9 = string.byte;
local v10 = string.char;
local v11 = string.sub;
local v12 = string.gsub;
local v13 = string.rep;
local v14 = table.concat;
local v15 = table.insert;
local v16 = math.ldexp;
local v17 = getfenv or function()
	return _ENV;
end;
local v18 = setmetatable;
local v19 = pcall;
local v20 = select;
local v21 = unpack or table.unpack;
local v22 = tonumber;
local function v23(v27, v28, ...)
	local v29 = 0;
	local v30;
	local v31;
	local v32;
	local v33;
	local v34;
	local v35;
	local v36;
	local v37;
	local v38;
	local v39;
	local v40;
	local v41;
	while true do
		if (v29 == 1) then
			function v32(v43, v44, v45)
				if v45 then
					local v80 = 0;
					local v81;
					while true do
						if (v80 == 0) then
							v81 = (v43 / ((5 - 3) ^ (v44 - 1))) % ((5 - 3) ^ (((v45 - 1) - (v44 - (1 - 0))) + 1));
							return v81 - (v81 % 1);
						end
					end
				else
					local v82 = 0;
					local v83;
					while true do
						if (v82 == 0) then
							v83 = 2 ^ (v44 - 1);
							return (((v43 % (v83 + v83)) >= v83) and 1) or (0 - 0);
						end
					end
				end
			end
			v33 = nil;
			function v33()
				local v46 = v9(v27, v30, v30);
				v30 = v30 + (620 - (555 + 64));
				return v46;
			end
			v34 = nil;
			v29 = 2;
		end
		if (v29 == 0) then
			v30 = 1;
			v31 = nil;
			v27 = v12(v11(v27, 5), v7("\168\108", "\177\134\66\56\87\184\190"), function(v47)
				if (v9(v47, 2) == 79) then
					v31 = v8(v11(v47, 1, 1));
					return "";
				else
					local v84 = v10(v8(v47, 16));
					if v31 then
						local v89 = v13(v84, v31);
						v31 = nil;
						return v89;
					else
						return v84;
					end
				end
			end);
			v32 = nil;
			v29 = 1;
		end
		if (v29 == 5) then
			v41 = nil;
			function v41(v48, v49, v50)
				local v51 = 0;
				local v52;
				local v53;
				local v54;
				while true do
					if (v51 == 0) then
						v52 = v48[1];
						v53 = v48[2];
						v51 = 1;
					end
					if (v51 == 1) then
						v54 = v48[3];
						return function(...)
							local v90 = v52;
							local v91 = v53;
							local v92 = v54;
							local v93 = v39;
							local v94 = 1;
							local v95 = -1;
							local v96 = {};
							local v97 = {...};
							local v98 = v20("#", ...) - 1;
							local v99 = {};
							local v100 = {};
							for v115 = 0, v98 do
								if (v115 >= v92) then
									v96[v115 - v92] = v97[v115 + 1];
								else
									v100[v115] = v97[v115 + 1];
								end
							end
							local v101 = (v98 - v92) + (1638 - (1523 + 114));
							local v102;
							local v103;
							while true do
								v102 = v90[v94];
								v103 = v102[1];
								if (v103 <= 21) then
									if (v103 <= 10) then
										if (v103 <= 4) then
											if (v103 <= 1) then
												if (v103 == 0) then
													local v137 = 0;
													local v138;
													local v139;
													local v140;
													while true do
														if (v137 == 1) then
															v140 = {};
															v139 = v18({}, {[v7("\10\3\56\7\191\137\45", "\236\85\92\81\105\219")]=function(v224, v225)
																local v226 = 0;
																local v227;
																while true do
																	if (v226 == 0) then
																		v227 = v140[v225];
																		return v227[1][v227[2]];
																	end
																end
															end,[v7("\30\51\209\248\164\226\47\8\218\229", "\139\65\108\191\157\211")]=function(v228, v229, v230)
																local v231 = v140[v229];
																v231[1][v231[2 + 0]] = v230;
															end});
															v137 = 2;
														end
														if (v137 == 2) then
															for v233 = 1 - 0, v102[4] do
																local v234 = 0;
																local v235;
																while true do
																	if (v234 == 0) then
																		v94 = v94 + 1;
																		v235 = v90[v94];
																		v234 = 1;
																	end
																	if (v234 == 1) then
																		if (v235[1] == 11) then
																			v140[v233 - (3 - 2)] = {v100,v235[3]};
																		else
																			v140[v233 - 1] = {v49,v235[11 - 8]};
																		end
																		v99[#v99 + 1] = v140;
																		break;
																	end
																end
															end
															v100[v102[2]] = v41(v138, v139, v50);
															break;
														end
														if (v137 == 0) then
															v138 = v91[v102[3]];
															v139 = nil;
															v137 = 1;
														end
													end
												else
													do
														return v100[v102[2]]();
													end
												end
											elseif (v103 <= (444 - (416 + 26))) then
												if (v102[3] == v7("\67\6\20\115", "\37\28\67\90")) then
													v100[v102[6 - 4]] = v50;
												else
													v100[v102[1067 - (68 + 997)]] = v50[v102[2 + 1]];
												end
											elseif (v103 == (1273 - (226 + 1044))) then
												local v173 = v102[2];
												do
													return v100[v173](v21(v100, v173 + 1, v102[3]));
												end
											else
												local v174 = 0;
												local v175;
												while true do
													if (0 == v174) then
														v175 = v102[2];
														do
															return v100[v175](v21(v100, v175 + (1 - 0), v102[12 - 9]));
														end
														break;
													end
												end
											end
										elseif (v103 <= (445 - (145 + 293))) then
											if (v103 <= 5) then
												do
													return v100[v102[119 - (32 + 85)]]();
												end
											elseif (v103 == 6) then
												local v176 = 0;
												local v177;
												while true do
													if (v176 == 0) then
														v177 = v102[2 + 0];
														v100[v177] = v100[v177](v100[v177 + 1]);
														break;
													end
												end
											elseif (v100[v102[2]] == v102[434 - (44 + 386)]) then
												v94 = v94 + 1;
											else
												v94 = v102[3];
											end
										elseif (v103 <= 8) then
											do
												return;
											end
										elseif (v103 > (1495 - (998 + 488))) then
											do
												return;
											end
										else
											local v178 = 0;
											local v179;
											local v180;
											local v181;
											local v182;
											while true do
												if (v178 == 2) then
													for v248 = v179, v95 do
														local v249 = 0;
														while true do
															if (v249 == 0) then
																v182 = v182 + 1;
																v100[v248] = v180[v182];
																break;
															end
														end
													end
													break;
												end
												if (0 == v178) then
													v179 = v102[2];
													v180, v181 = v93(v100[v179](v21(v100, v179 + 1 + 0, v102[3])));
													v178 = 1;
												end
												if (v178 == 1) then
													v95 = (v181 + v179) - (1 + 0);
													v182 = 0;
													v178 = 2;
												end
											end
										end
									elseif (v103 <= 15) then
										if (v103 <= 12) then
											if (v103 > (783 - (201 + 571))) then
												for v162 = v102[2], v102[3] do
													v100[v162] = nil;
												end
											else
												v100[v102[2]] = v100[v102[3]];
											end
										elseif (v103 <= (1151 - (116 + 1022))) then
											local v143 = v102[2];
											local v144, v145 = v93(v100[v143](v21(v100, v143 + 1, v102[3])));
											v95 = (v145 + v143) - 1;
											local v146 = 0;
											for v164 = v143, v95 do
												v146 = v146 + 1 + 0;
												v100[v164] = v144[v146];
											end
										elseif (v103 > (971 - (892 + 65))) then
											v94 = v102[3];
										else
											v100[v102[2]] = v41(v91[v102[3]], nil, v50);
										end
									elseif (v103 <= 18) then
										if (v103 <= (37 - 21)) then
											if v100[v102[2]] then
												v94 = v94 + 1;
											else
												v94 = v102[3];
											end
										elseif (v103 > 17) then
											local v186 = v102[2];
											v100[v186] = v100[v186](v21(v100, v186 + (1 - 0), v102[3]));
										else
											local v188 = v102[2];
											do
												return v21(v100, v188, v95);
											end
										end
									elseif (v103 <= 19) then
										local v147 = v102[2];
										v100[v147] = v100[v147](v21(v100, v147 + 1, v102[3]));
									elseif (v103 == 20) then
										v100[v102[2]] = v100[v102[3]][v102[4]];
									else
										v94 = v102[3];
									end
								elseif (v103 <= 32) then
									if (v103 <= 26) then
										if (v103 <= 23) then
											if (v103 > 22) then
												v100[v102[2]] = v100[v102[3]];
											elseif (v102[3] == v7("\203\57\103\33", "\127\148\124\41\119\24\231")) then
												v100[v102[2]] = v50;
											else
												v100[v102[2]] = v50[v102[3]];
											end
										elseif (v103 <= 24) then
											v100[v102[2]] = v102[3];
										elseif (v103 > 25) then
											v100[v102[2]] = v102[3] ~= 0;
										else
											v100[v102[2]] = {};
										end
									elseif (v103 <= (52 - 23)) then
										if (v103 <= 27) then
											v100[v102[352 - (87 + 263)]] = v102[3];
										elseif (v103 == 28) then
											v100[v102[2]] = v100[v102[12 - 9]][v102[4]];
										else
											local v199 = 0;
											local v200;
											while true do
												if (v199 == 0) then
													v200 = v102[2];
													do
														return v21(v100, v200, v95);
													end
													break;
												end
											end
										end
									elseif (v103 <= 30) then
										local v155 = 0;
										local v156;
										while true do
											if (v155 == 0) then
												v156 = v102[2];
												v100[v156] = v100[v156](v21(v100, v156 + 1, v95));
												break;
											end
										end
									elseif (v103 == 31) then
										v100[v102[2]] = v102[3] ~= 0;
									else
										local v202 = 0;
										local v203;
										local v204;
										local v205;
										while true do
											if (v202 == 0) then
												v203 = v91[v102[3]];
												v204 = nil;
												v202 = 1;
											end
											if (1 == v202) then
												v205 = {};
												v204 = v18({}, {[v7("\46\189\36\171\211\20\154", "\183\113\226\77\197")]=function(v250, v251)
													local v252 = 0;
													local v253;
													while true do
														if (v252 == 0) then
															v253 = v205[v251];
															return v253[1][v253[182 - (67 + 113)]];
														end
													end
												end,[v7("\127\102\187\217\87\80\187\216\69\65", "\188\32\57\213")]=function(v254, v255, v256)
													local v257 = 0;
													local v258;
													while true do
														if (v257 == 0) then
															v258 = v205[v255];
															v258[1][v258[2]] = v256;
															break;
														end
													end
												end});
												v202 = 2;
											end
											if (v202 == 2) then
												for v259 = 1, v102[4] do
													local v260 = 0;
													local v261;
													while true do
														if (v260 == 0) then
															v94 = v94 + 1;
															v261 = v90[v94];
															v260 = 1;
														end
														if (v260 == 1) then
															if (v261[1] == 11) then
																v205[v259 - 1] = {v100,v261[3]};
															else
																v205[v259 - 1] = {v49,v261[3]};
															end
															v99[#v99 + (3 - 2)] = v205;
															break;
														end
													end
												end
												v100[v102[2]] = v41(v203, v204, v50);
												break;
											end
										end
									end
								elseif (v103 <= 37) then
									if (v103 <= 34) then
										if (v103 > 33) then
											v100[v102[2 + 0]] = v49[v102[3]];
										else
											local v159 = v102[2];
											local v160 = v100[v159];
											for v167 = v159 + 1, v95 do
												v15(v160, v100[v167]);
											end
										end
									elseif (v103 <= (894 - (814 + 45))) then
										if v100[v102[4 - 2]] then
											v94 = v94 + (2 - 1);
										else
											v94 = v102[2 + 1];
										end
									elseif (v103 > 36) then
										v100[v102[2]] = {};
									else
										local v208 = v102[2];
										v100[v208] = v100[v208](v100[v208 + 1]);
									end
								elseif (v103 <= 40) then
									if (v103 <= 38) then
										for v168 = v102[2], v102[3] do
											v100[v168] = nil;
										end
									elseif (v103 > 39) then
										local v210 = v102[2];
										local v211 = v100[v210];
										for v223 = v210 + 1 + 0, v95 do
											v15(v211, v100[v223]);
										end
									else
										v100[v102[2]] = v49[v102[888 - (261 + 624)]];
									end
								elseif (v103 <= 41) then
									if (v100[v102[2]] == v102[4]) then
										v94 = v94 + 1;
									else
										v94 = v102[3];
									end
								elseif (v103 == 42) then
									local v215 = 0;
									local v216;
									while true do
										if (v215 == 0) then
											v216 = v102[2];
											v100[v216] = v100[v216](v21(v100, v216 + 1, v95));
											break;
										end
									end
								else
									v100[v102[2]] = v41(v91[v102[3]], nil, v50);
								end
								v94 = v94 + 1;
							end
						end;
					end
				end
			end
			return v41(v40(), {}, v28)(...);
		end
		if (4 == v29) then
			v39 = nil;
			function v39(...)
				return {...}, v20("#", ...);
			end
			v40 = nil;
			function v40()
				local v55 = 0;
				local v56;
				local v57;
				local v58;
				local v59;
				local v60;
				local v61;
				while true do
					if (0 == v55) then
						v56 = {};
						v57 = {};
						v58 = {};
						v59 = {v56,v57,nil,v58};
						v55 = 1;
					end
					if (v55 == 2) then
						for v104 = 1, v35() do
							local v105 = 0;
							local v106;
							while true do
								if (v105 == 0) then
									v106 = v33();
									if (v32(v106, 928 - (214 + 713), 1) == 0) then
										local v124 = v32(v106, 2 + 0, 3);
										local v125 = v32(v106, 4, 6);
										local v126 = {v34(),v34(),nil,nil};
										if (v124 == 0) then
											v126[3] = v34();
											v126[4] = v34();
										elseif (v124 == (2 - 1)) then
											v126[3] = v35();
										elseif (v124 == 2) then
											v126[1 + 2] = v35() - ((3 - 1) ^ 16);
										elseif (v124 == 3) then
											local v218 = 0;
											while true do
												if (0 == v218) then
													v126[1 + 2] = v35() - ((1 + 1) ^ 16);
													v126[4] = v34();
													break;
												end
											end
										end
										if (v32(v125, 1, 1) == 1) then
											v126[3 - 1] = v61[v126[2 + 0]];
										end
										if (v32(v125, 2, 879 - (282 + 595)) == 1) then
											v126[3] = v61[v126[3]];
										end
										if (v32(v125, 3, 3) == 1) then
											v126[4] = v61[v126[4]];
										end
										v56[v104] = v126;
									end
									break;
								end
							end
						end
						for v107 = 792 - (368 + 423), v35() do
							v57[v107 - 1] = v40();
						end
						return v59;
					end
					if (v55 == 1) then
						v60 = v35();
						v61 = {};
						for v109 = 1, v60 do
							local v110 = v33();
							local v111;
							if (v110 == 1) then
								v111 = v33() ~= 0;
							elseif (v110 == (5 - 3)) then
								v111 = v36();
							elseif (v110 == 3) then
								v111 = v37();
							end
							v61[v109] = v111;
						end
						v59[3] = v33();
						v55 = 2;
					end
				end
			end
			v29 = 5;
		end
		if (v29 == 3) then
			function v36()
				local v62 = 0;
				local v63;
				local v64;
				local v65;
				local v66;
				local v67;
				local v68;
				while true do
					if (v62 == 3) then
						if (v67 == 0) then
							if (v66 == 0) then
								return v68 * (0 - 0);
							else
								local v123 = 0;
								while true do
									if (v123 == 0) then
										v67 = 1 - 0;
										v65 = 0;
										break;
									end
								end
							end
						elseif (v67 == (1490 + 557)) then
							return ((v66 == 0) and (v68 * (1 / 0))) or (v68 * NaN);
						end
						return v16(v68, v67 - 1023) * (v65 + (v66 / (2 ^ 52)));
					end
					if (v62 == 1) then
						v65 = 1;
						v66 = (v32(v64, 1, 20) * ((933 - (857 + 74)) ^ 32)) + v63;
						v62 = 2;
					end
					if (0 == v62) then
						v63 = v35();
						v64 = v35();
						v62 = 1;
					end
					if (v62 == 2) then
						v67 = v32(v64, 21, 983 - (802 + 150));
						v68 = ((v32(v64, 32) == 1) and -1) or 1;
						v62 = 3;
					end
				end
			end
			v37 = nil;
			function v37(v69)
				local v70 = 0;
				local v71;
				local v72;
				while true do
					if (v70 == 3) then
						return v14(v72);
					end
					if (v70 == 0) then
						v71 = nil;
						if not v69 then
							local v118 = 0;
							while true do
								if (v118 == 0) then
									v69 = v35();
									if (v69 == 0) then
										return "";
									end
									break;
								end
							end
						end
						v70 = 1;
					end
					if (v70 == 2) then
						v72 = {};
						for v113 = 998 - (915 + 82), #v71 do
							v72[v113] = v10(v9(v11(v71, v113, v113)));
						end
						v70 = 3;
					end
					if (v70 == 1) then
						v71 = v11(v27, v30, (v30 + v69) - (569 - (367 + 201)));
						v30 = v30 + v69;
						v70 = 2;
					end
				end
			end
			v38 = v35;
			v29 = 4;
		end
		if (v29 == 2) then
			function v34()
				local v73 = 0;
				local v74;
				local v75;
				while true do
					if (v73 == 0) then
						v74, v75 = v9(v27, v30, v30 + 2);
						v30 = v30 + 2;
						v73 = 1;
					end
					if (v73 == 1) then
						return (v75 * 256) + v74;
					end
				end
			end
			v35 = nil;
			function v35()
				local v76, v77, v78, v79 = v9(v27, v30, v30 + 3);
				v30 = v30 + 4;
				return (v79 * 16777216) + (v78 * 65536) + (v77 * 256) + v76;
			end
			v36 = nil;
			v29 = 3;
		end
	end
end
v23(v7("\216\47\97\26\70\160\83\98\11\70\164\83\29\13\69\219\80\29\12\69\163\84\26\9\64\173\86\104\13\65\164\83\29\14\69\219\80\29\13\50\162\81\26\15\64\167\86\21\11\69\164\88\30\116\70\164\87\25\13\48\162\37\26\14\64\208\86\31\13\67\163\82\29\8\70\161\83\98\11\70\163\80\27\8\64\165\82\98\13\53\164\80\29\127\69\219\80\29\10\68\165\86\30\116\70\164\80\28\8\57\164\80\31\11\71\160\85\98\11\70\164\82\29\11\71\166\81\27\11\70\164\81\29\11\70\167\83\98\11\70\165\82\28\13\70\164\80\31\11\70\164\84\30\116\70\164\80\27\9\57\164\80\29\8\69\219\80\29\11\71\164\80\29\15\68\219\80\29\11\52\167\47\29\11\70\165\84\98\11\70\164\34\21\116\70\164\80\111\8\57\164\80\29\9\66\219\80\29\11\52\167\47\29\11\70\167\84\98\11\70\165\87\29\11\70\160\80\29\11\69\160\47\29\11\70\165\80\29\11\66\164\80\29\10\66\219\80\29\10\71\164\80\29\15\64\219\80\29\11\78\167\47\29\11\70\165\83\98\11\70\164\81\30\116\70\164\80\25\8\57\164\80\29\9\65\219\80\29\15\70\164\83\29\14\69\219\80\29\8\55\166\85\27\15\68\214\83\108\9\57\164\83\30\116\70\164\82\24\13\66\166\34\29\9\64\219\80\29\125\70\167\38\29\11\71\214\83\98\11\70\164\82\29\126\78\219\80\29\9\68\164\80\29\10\64\219\80\29\9\68\164\80\29\9\70\164\80\28\15\57\164\80\31\9\70\164\80\30\11\70\164\81\25\116\70\164\82\24\11\70\164\84\27\116\70\164\82\31\11\70\164\85\29\11\70\166\84\98\11\70\165\87\29\11\70\162\86\98\11\70\164\35\29\11\70\163\80\29\11\65\160\47\29\11\70\173\80\29\11\67\164\80\29\12\66\219\80\29\9\71\164\80\29\15\69\219\80\29\11\71\164\80\31\11\71\160\80\29\11\66\164\80\29\15\70\164\80\28\11\70\165\82\28\121\70\164\80\24\11\70\164\82\25\116\70\164\81\31\11\70\164\83\29\11\70\161\80\29\11\68\164\80\28\9\71\214\80\29\11\66\164\80\29\8\66\219\80\29\11\79\164\80\29\9\70\164\80\25\15\57\164\80\28\126\70\164\80\28\8\57\164\80\29\9\70\164\82\27\11\65\164\80\29\10\70\164\81\26\11\70\164\81\29\11\70\160\80\29\11\66\164\38\30\116\70\164\81\26\11\70\164\81\31\116\70\164\81\26\11\70\164\81\27\116\70\164\82\24\11\70\164\82\27\116\70\164\80\30\11\70\164\81\29\11\70\166\84\98\11\70\165\81\29\11\70\165\85\98\11\70\164\84\29\125\69\219\80\29\10\55\164\80\29\10\68\219\80\29\9\68\164\80\29\10\70\164\80\30\15\57\164\80\29\10\70\164\80\28\11\70\164\81\25\116\70\164\81\28\11\70\164\81\27\116\70\164\80\21\8\57\164\80\29\10\69\219\80\29\11\71\167\47\29\11\70\161\83\98\11\70\164\83\31\10\69\219\80\29\13\78\166\47\26\15\65\164\87\30\8\55\166\47\31\125\65\164\86\28\12\69\163\84\27\14\64\166\86\20\13\51\166\37\27\8\64\210\86\105\9\48\163\82\27\10\65\163\82\107\12\79\162\88\26\10\69\167\84\24\14\71\167\86\26\10\70\167\80\25\8\57\164\80\27\12\64\165\86\105\13\67\164\83\29\12\69\219\80\29\15\78\166\47\26\15\65\164\84\26\13\67\163\84\29\8\70\213\83\98\11\70\162\35\27\125\64\165\86\25\12\69\163\84\26\9\64\173\86\104\13\65\164\82\27\116\70\164\38\29\8\48\164\81\28\11\69\219\80\29\11\64\165\80\30\116\70\164\80\104\11\70\164\81\30\116\70\164\80\25\11\48\167\47\29\11\70\209\80\29\11\71\164\80\28\9\71\214\80\29\11\71\164\80\29\10\69\219\80\29\10\68\165\86\29\11\70\166\80\29\11\68\167\47\29\11\68\164\81\25\11\70\164\82\29\11\70\166\80\29\11\69\164\80\28\9\71\162\80\29\11\69\164\80\29\15\66\219\80\29\10\65\164\80\29\15\70\164\80\31\15\57\164\80\28\12\70\164\80\24\11\70\164\81\25\116\70\164\80\27\11\70\164\84\29\11\70\166\80\29\11\68\166\47\29\11\71\213\80\29\11\67\164\80\29\10\66\219\80\29\10\68\164\80\29\8\70\164\80\24\11\70\164\82\31\116\70\164\80\28\11\70\164\83\29\11\70\165\84\98\11\70\165\81\29\11\70\167\85\98\11\70\164\84\29\125\69\219\80\29\11\48\164\80\29\10\70\164\82\29\10\66\164\80\29\10\69\219\80\29\11\67\166\47\29\11\70\172\83\98\11\70\164\81\26\116\70\164", "\118\148\96\45\59"), v17(), ...);
