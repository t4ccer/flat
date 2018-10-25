{-# LANGUAGE DeriveGeneric, DeriveAnyClass #-}
module Test.E where

import           Data.Flat
import           Data.List
import           Control.DeepSeq

g n =
    let dt = "E" ++ show n
    in  unwords
            [ "data"
            , dt
            , "="
            , intercalate " | " $ map ((\n -> dt ++ "_" ++ n) . show) [1 .. n]
            , "deriving (Show,Generic,Eq,NFData)"
            ]

data E2 = E2_1 | E2_2 deriving (Show,Generic,Eq,NFData)

data E3 = E3_1 | E3_2 | E3_3 deriving (Show,Generic,Eq,NFData)

data E4 = E4_1 | E4_2 | E4_3 | E4_4 deriving (Show,Generic,Eq,NFData)

data E8 = E8_1 | E8_2 | E8_3 | E8_4 | E8_5 | E8_6 | E8_7 | E8_8 deriving (Show,Generic,Eq,NFData)

data E16 = E16_1 | E16_2 | E16_3 | E16_4 | E16_5 | E16_6 | E16_7 | E16_8 | E16_9 | E16_10 | E16_11 | E16_12 | E16_13 | E16_14 | E16_15 | E16_16 deriving (Show,Generic,Eq,NFData)

data E17 = E17_1 | E17_2 | E17_3 | E17_4 | E17_5 | E17_6 | E17_7 | E17_8 | E17_9 | E17_10 | E17_11 | E17_12 | E17_13 | E17_14 | E17_15 | E17_16 | E17_17 deriving (Show,Generic,Eq,NFData)

data E32 = E32_1 | E32_2 | E32_3 | E32_4 | E32_5 | E32_6 | E32_7 | E32_8 | E32_9 | E32_10 | E32_11 | E32_12 | E32_13 | E32_14 | E32_15 | E32_16 | E32_17 | E32_18 | E32_19 | E32_20 | E32_21 | E32_22 | E32_23 | E32_24 | E32_25 | E32_26 | E32_27 | E32_28 | E32_29 | E32_30 | E32_31 | E32_32 deriving (Show,Generic,Eq,NFData)

data E256 = E256_1 | E256_2 | E256_3 | E256_4 | E256_5 | E256_6 | E256_7 | E256_8 | E256_9 | E256_10 | E256_11 | E256_12 | E256_13 | E256_14 | E256_15 | E256_16 | E256_17 | E256_18 | E256_19 | E256_20 | E256_21 | E256_22 | E256_23 | E256_24 | E256_25 | E256_26 | E256_27 | E256_28 | E256_29 | E256_30 | E256_31 | E256_32 | E256_33 | E256_34 | E256_35 | E256_36 | E256_37 | E256_38 | E256_39 | E256_40 | E256_41 | E256_42 | E256_43 | E256_44 | E256_45 | E256_46 | E256_47 | E256_48 | E256_49 | E256_50 | E256_51 | E256_52 | E256_53 | E256_54 | E256_55 | E256_56 | E256_57 | E256_58 | E256_59 | E256_60 | E256_61 | E256_62 | E256_63 | E256_64 | E256_65 | E256_66 | E256_67 | E256_68 | E256_69 | E256_70 | E256_71 | E256_72 | E256_73 | E256_74 | E256_75 | E256_76 | E256_77 | E256_78 | E256_79 | E256_80 | E256_81 | E256_82 | E256_83 | E256_84 | E256_85 | E256_86 | E256_87 | E256_88 | E256_89 | E256_90 | E256_91 | E256_92 | E256_93 | E256_94 | E256_95 | E256_96 | E256_97 | E256_98 | E256_99 | E256_100 | E256_101 | E256_102 | E256_103 | E256_104 | E256_105 | E256_106 | E256_107 | E256_108 | E256_109 | E256_110 | E256_111 | E256_112 | E256_113 | E256_114 | E256_115 | E256_116 | E256_117 | E256_118 | E256_119 | E256_120 | E256_121 | E256_122 | E256_123 | E256_124 | E256_125 | E256_126 | E256_127 | E256_128 | E256_129 | E256_130 | E256_131 | E256_132 | E256_133 | E256_134 | E256_135 | E256_136 | E256_137 | E256_138 | E256_139 | E256_140 | E256_141 | E256_142 | E256_143 | E256_144 | E256_145 | E256_146 | E256_147 | E256_148 | E256_149 | E256_150 | E256_151 | E256_152 | E256_153 | E256_154 | E256_155 | E256_156 | E256_157 | E256_158 | E256_159 | E256_160 | E256_161 | E256_162 | E256_163 | E256_164 | E256_165 | E256_166 | E256_167 | E256_168 | E256_169 | E256_170 | E256_171 | E256_172 | E256_173 | E256_174 | E256_175 | E256_176 | E256_177 | E256_178 | E256_179 | E256_180 | E256_181 | E256_182 | E256_183 | E256_184 | E256_185 | E256_186 | E256_187 | E256_188 | E256_189 | E256_190 | E256_191 | E256_192 | E256_193 | E256_194 | E256_195 | E256_196 | E256_197 | E256_198 | E256_199 | E256_200 | E256_201 | E256_202 | E256_203 | E256_204 | E256_205 | E256_206 | E256_207 | E256_208 | E256_209 | E256_210 | E256_211 | E256_212 | E256_213 | E256_214 | E256_215| E256_216 | E256_217 | E256_218 | E256_219 | E256_220 | E256_221 | E256_222 | E256_223 | E256_224 | E256_225 | E256_226 | E256_227 | E256_228 | E256_229 | E256_230 | E256_231 | E256_232 |E256_233 | E256_234 | E256_235 | E256_236 | E256_237 | E256_238 | E256_239 | E256_240 | E256_241 | E256_242 | E256_243 | E256_244 | E256_245 | E256_246 | E256_247 | E256_248 | E256_249 | E256_250 | E256_251 | E256_252 | E256_253 | E256_254 | E256_255 | E256_256 deriving (Show,Generic,Eq,NFData)