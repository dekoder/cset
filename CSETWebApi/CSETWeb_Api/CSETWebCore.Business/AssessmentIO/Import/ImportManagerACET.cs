﻿//////////////////////////////// 
// 
//   Copyright 2023 Battelle Energy Alliance, LLC  
// 
// 
//////////////////////////////// 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSETWebCore.Business.AssessmentIO.Import
{
    /// <summary>
    /// Special ACET-related logic.  
    /// </summary>
    public class ImportManagerACET
    {
        #region map requirement IDs to maturity question IDs

        /// <summary>
        /// Maps the legacy NEW_REQUIRMENT ID to the MATURITY_QUESTIONS ID for ACET assessments.
        /// These relationships can also be found in the database table FINANCIAL_REQUIREMENTS.
        /// </summary>
        public static Dictionary<int, int> RequirementToMaturity = new Dictionary<int, int>()
        {
            { 28207, 172 },
            { 28208, 173 },
            { 28209, 174 },
            { 28210, 175 },
            { 28211, 176 },
            { 28212, 177 },
            { 28213, 178 },
            { 28214, 179 },
            { 28215, 180 },
            { 28216, 181 },
            { 28217, 182 },
            { 28218, 183 },
            { 28219, 184 },
            { 28220, 185 },
            { 28221, 186 },
            { 28222, 187 },
            { 28223, 188 },
            { 28224, 189 },
            { 28225, 190 },
            { 28226, 191 },
            { 28227, 192 },
            { 28228, 193 },
            { 28229, 194 },
            { 28230, 195 },
            { 28231, 196 },
            { 28232, 197 },
            { 28233, 198 },
            { 28234, 199 },
            { 28235, 200 },
            { 28236, 201 },
            { 28237, 202 },
            { 28238, 203 },
            { 28239, 204 },
            { 28240, 205 },
            { 28241, 206 },
            { 28242, 207 },
            { 28243, 208 },
            { 28244, 209 },
            { 28245, 210 },
            { 28246, 211 },
            { 28247, 212 },
            { 28248, 213 },
            { 28249, 214 },
            { 28250, 215 },
            { 28251, 216 },
            { 28252, 217 },
            { 28253, 218 },
            { 28254, 219 },
            { 28255, 220 },
            { 28256, 221 },
            { 28257, 222 },
            { 28258, 223 },
            { 28259, 224 },
            { 28260, 225 },
            { 28261, 226 },
            { 28262, 227 },
            { 28263, 228 },
            { 28264, 229 },
            { 28265, 230 },
            { 28266, 231 },
            { 28267, 232 },
            { 28268, 233 },
            { 28269, 234 },
            { 28270, 235 },
            { 28271, 236 },
            { 28272, 237 },
            { 28273, 238 },
            { 28274, 239 },
            { 28275, 240 },
            { 28276, 241 },
            { 28277, 242 },
            { 28278, 243 },
            { 28279, 244 },
            { 28280, 245 },
            { 28281, 246 },
            { 28282, 247 },
            { 28283, 248 },
            { 28284, 249 },
            { 28285, 250 },
            { 28286, 251 },
            { 28287, 252 },
            { 28288, 253 },
            { 28289, 254 },
            { 28290, 255 },
            { 28291, 256 },
            { 28292, 257 },
            { 28293, 258 },
            { 28294, 259 },
            { 28295, 260 },
            { 28296, 261 },
            { 28297, 262 },
            { 28298, 263 },
            { 28299, 264 },
            { 28300, 265 },
            { 28301, 266 },
            { 28302, 267 },
            { 28303, 268 },
            { 28304, 269 },
            { 28305, 270 },
            { 28306, 271 },
            { 28307, 272 },
            { 28308, 273 },
            { 28309, 274 },
            { 28310, 275 },
            { 28311, 276 },
            { 28312, 277 },
            { 28313, 278 },
            { 28314, 279 },
            { 28315, 280 },
            { 28316, 281 },
            { 28317, 282 },
            { 28318, 283 },
            { 28319, 284 },
            { 28320, 285 },
            { 28321, 286 },
            { 28322, 287 },
            { 28323, 288 },
            { 28324, 289 },
            { 28325, 290 },
            { 28326, 291 },
            { 28327, 292 },
            { 28328, 293 },
            { 28329, 294 },
            { 28330, 295 },
            { 28331, 296 },
            { 28332, 297 },
            { 28333, 298 },
            { 28334, 299 },
            { 28335, 300 },
            { 28336, 301 },
            { 28337, 302 },
            { 28338, 303 },
            { 28339, 304 },
            { 28340, 305 },
            { 28341, 306 },
            { 28342, 307 },
            { 28343, 308 },
            { 28344, 309 },
            { 28345, 310 },
            { 28346, 311 },
            { 28347, 312 },
            { 28348, 313 },
            { 28349, 314 },
            { 28350, 315 },
            { 28351, 316 },
            { 28352, 317 },
            { 28353, 318 },
            { 28354, 319 },
            { 28355, 320 },
            { 28356, 321 },
            { 28357, 322 },
            { 28358, 323 },
            { 28359, 324 },
            { 28360, 325 },
            { 28361, 326 },
            { 28362, 327 },
            { 28363, 328 },
            { 28364, 329 },
            { 28365, 330 },
            { 28366, 331 },
            { 28367, 332 },
            { 28368, 333 },
            { 28369, 334 },
            { 28370, 335 },
            { 28371, 336 },
            { 28372, 337 },
            { 28373, 338 },
            { 28374, 339 },
            { 28375, 340 },
            { 28376, 341 },
            { 28377, 342 },
            { 28378, 343 },
            { 28379, 344 },
            { 28380, 345 },
            { 28381, 346 },
            { 28382, 347 },
            { 28383, 348 },
            { 28384, 349 },
            { 28385, 350 },
            { 28386, 351 },
            { 28387, 352 },
            { 28388, 353 },
            { 28389, 354 },
            { 28390, 355 },
            { 28391, 356 },
            { 28392, 357 },
            { 28393, 358 },
            { 28394, 359 },
            { 28395, 360 },
            { 28396, 361 },
            { 28397, 362 },
            { 28398, 363 },
            { 28399, 364 },
            { 28400, 365 },
            { 28401, 366 },
            { 28402, 367 },
            { 28403, 368 },
            { 28404, 369 },
            { 28405, 370 },
            { 28406, 371 },
            { 28407, 372 },
            { 28408, 373 },
            { 28409, 374 },
            { 28410, 375 },
            { 28411, 376 },
            { 28412, 377 },
            { 28413, 378 },
            { 28414, 379 },
            { 28415, 380 },
            { 28416, 381 },
            { 28417, 382 },
            { 28418, 383 },
            { 28419, 384 },
            { 28420, 385 },
            { 28421, 386 },
            { 28422, 387 },
            { 28423, 388 },
            { 28424, 389 },
            { 28425, 390 },
            { 28426, 391 },
            { 28427, 392 },
            { 28428, 393 },
            { 28429, 394 },
            { 28430, 395 },
            { 28431, 396 },
            { 28432, 397 },
            { 28433, 398 },
            { 28434, 399 },
            { 28435, 400 },
            { 28436, 401 },
            { 28437, 402 },
            { 28438, 403 },
            { 28439, 404 },
            { 28440, 405 },
            { 28441, 406 },
            { 28442, 407 },
            { 28443, 408 },
            { 28444, 409 },
            { 28445, 410 },
            { 28446, 411 },
            { 28447, 412 },
            { 28448, 413 },
            { 28449, 414 },
            { 28450, 415 },
            { 28451, 416 },
            { 28452, 417 },
            { 28453, 418 },
            { 28454, 419 },
            { 28455, 420 },
            { 28456, 421 },
            { 28457, 422 },
            { 28458, 423 },
            { 28459, 424 },
            { 28460, 425 },
            { 28461, 426 },
            { 28462, 427 },
            { 28463, 428 },
            { 28464, 429 },
            { 28465, 430 },
            { 28466, 431 },
            { 28467, 432 },
            { 28468, 433 },
            { 28469, 434 },
            { 28470, 435 },
            { 28471, 436 },
            { 28472, 437 },
            { 28473, 438 },
            { 28474, 439 },
            { 28475, 440 },
            { 28476, 441 },
            { 28477, 442 },
            { 28478, 443 },
            { 28479, 444 },
            { 28480, 445 },
            { 28481, 446 },
            { 28482, 447 },
            { 28483, 448 },
            { 28484, 449 },
            { 28485, 450 },
            { 28486, 451 },
            { 28487, 452 },
            { 28488, 453 },
            { 28489, 454 },
            { 28490, 455 },
            { 28491, 456 },
            { 28492, 457 },
            { 28493, 458 },
            { 28494, 459 },
            { 28495, 460 },
            { 28496, 461 },
            { 28497, 462 },
            { 28498, 463 },
            { 28499, 464 },
            { 28500, 465 },
            { 28501, 466 },
            { 28502, 467 },
            { 28503, 468 },
            { 28504, 469 },
            { 28505, 470 },
            { 28506, 471 },
            { 28507, 472 },
            { 28508, 473 },
            { 28509, 474 },
            { 28510, 475 },
            { 28511, 476 },
            { 28512, 477 },
            { 28513, 478 },
            { 28514, 479 },
            { 28515, 480 },
            { 28516, 481 },
            { 28517, 482 },
            { 28518, 483 },
            { 28519, 484 },
            { 28520, 485 },
            { 28521, 486 },
            { 28522, 487 },
            { 28523, 488 },
            { 28524, 489 },
            { 28525, 490 },
            { 28526, 491 },
            { 28527, 492 },
            { 28528, 493 },
            { 28529, 494 },
            { 28530, 495 },
            { 28531, 496 },
            { 28532, 497 },
            { 28533, 498 },
            { 28534, 499 },
            { 28535, 500 },
            { 28536, 501 },
            { 28537, 502 },
            { 28538, 503 },
            { 28539, 504 },
            { 28540, 505 },
            { 28541, 506 },
            { 28542, 507 },
            { 28543, 508 },
            { 28544, 509 },
            { 28545, 510 },
            { 28546, 511 },
            { 28547, 512 },
            { 28548, 513 },
            { 28549, 514 },
            { 28550, 515 },
            { 28551, 516 },
            { 28552, 517 },
            { 28553, 518 },
            { 28554, 519 },
            { 28555, 520 },
            { 28556, 521 },
            { 28557, 522 },
            { 28558, 523 },
            { 28559, 524 },
            { 28560, 525 },
            { 28561, 526 },
            { 28562, 527 },
            { 28563, 528 },
            { 28564, 529 },
            { 28565, 530 },
            { 28566, 531 },
            { 28567, 532 },
            { 28568, 533 },
            { 28569, 534 },
            { 28570, 535 },
            { 28571, 536 },
            { 28572, 537 },
            { 28573, 538 },
            { 28574, 539 },
            { 28575, 540 },
            { 28576, 541 },
            { 28577, 542 },
            { 28578, 543 },
            { 28579, 544 },
            { 28580, 545 },
            { 28581, 546 },
            { 28582, 547 },
            { 28583, 548 },
            { 28584, 549 },
            { 28585, 550 },
            { 28586, 551 },
            { 28587, 552 },
            { 28588, 553 },
            { 28589, 554 },
            { 28590, 555 },
            { 28591, 556 },
            { 28592, 557 },
            { 28593, 558 },
            { 28594, 559 },
            { 28595, 560 },
            { 28596, 561 },
            { 28597, 562 },
            { 28598, 563 },
            { 28599, 564 },
            { 28600, 565 },
            { 28601, 566 },
            { 28602, 567 },
            { 28603, 568 },
            { 28604, 569 },
            { 28605, 570 },
            { 28606, 571 },
            { 28607, 572 },
            { 28608, 573 },
            { 28609, 574 },
            { 28610, 575 },
            { 28611, 576 },
            { 28612, 577 },
            { 28613, 578 },
            { 28614, 579 },
            { 28615, 580 },
            { 28616, 581 },
            { 28617, 582 },
            { 28618, 583 },
            { 28619, 584 },
            { 28620, 585 },
            { 28621, 586 },
            { 28622, 587 },
            { 28623, 588 },
            { 28624, 589 },
            { 28625, 590 },
            { 28626, 591 },
            { 28627, 592 },
            { 28628, 593 },
            { 28629, 594 },
            { 28630, 595 },
            { 28631, 596 },
            { 28632, 597 },
            { 28633, 598 },
            { 28634, 599 },
            { 28635, 600 },
            { 28636, 601 },
            { 28637, 602 },
            { 28638, 603 },
            { 28639, 604 },
            { 28640, 605 },
            { 28641, 606 },
            { 28642, 607 },
            { 28643, 608 },
            { 28644, 609 },
            { 28645, 610 },
            { 28646, 611 },
            { 28647, 612 },
            { 28648, 613 },
            { 28649, 614 },
            { 28650, 615 },
            { 28651, 616 },
            { 28652, 617 },
            { 28653, 618 },
            { 28654, 619 },
            { 28655, 620 },
            { 28656, 621 },
            { 28657, 622 },
            { 28658, 623 },
            { 28659, 624 },
            { 28660, 625 },
            { 28661, 626 },
            { 28662, 627 },
            { 28663, 628 },
            { 28664, 629 },
            { 28665, 630 },
            { 28666, 631 },
            { 28667, 632 },
            { 28668, 633 },
            { 28669, 634 },
            { 28670, 635 },
            { 28671, 636 },
            { 28672, 637 },
            { 28673, 638 },
            { 28674, 639 },
            { 28675, 640 },
            { 28676, 641 },
            { 28677, 642 },
            { 28678, 643 },
            { 28679, 644 },
            { 28680, 645 },
            { 28681, 646 },
            { 28682, 647 },
            { 28683, 648 },
            { 28684, 649 },
            { 28685, 650 },
            { 28686, 651 },
            { 28687, 652 },
            { 28688, 653 },
            { 28689, 654 },
            { 28690, 655 },
            { 28691, 656 },
            { 28692, 657 },
            { 28693, 658 },
            { 28694, 659 },
            { 28695, 660 },
            { 28696, 661 },
            { 28697, 662 },
            { 28698, 663 },
            { 28699, 664 },
            { 28700, 665 }
        };

        #endregion

        #region map questionIDs to maturity question IDs (ACET only)

        /// <summary>
        /// Maps the legacy NEW_QUESTION ID to the MATURITY_QUESTIONS ID for ACET assessments.
        /// These relationships can also be found in the database table FINANCIAL_QUESTIONS.
        /// </summary>
        public static Dictionary<int, int> QuestionToMaturity = new Dictionary<int, int>()
        {
            { 38, 394 },
            { 45, 201 },
            { 75, 258 },
            { 151, 205 },
            { 174, 393 },
            { 177, 415 },
            { 232, 390 },
            { 253, 403 },
            { 406, 419 },
            { 487, 497 },
            { 529, 218 },
            { 552, 364 },
            { 717, 441 },
            { 740, 362 },
            { 786, 494 },
            { 1040, 294 },
            { 1141, 413 },
            { 1235, 361 },
            { 1328, 400 },
            { 1599, 389 },
            { 1753, 508 },
            { 1825, 372 },
            { 1844, 481 },
            { 3198, 455 },
            { 3362, 295 },
            { 3374, 597 },
            { 3571, 333 },
            { 3572, 342 },
            { 3594, 346 },
            { 3598, 328 },
            { 3655, 656 },
            { 3658, 659 },
            { 3664, 657 },
            { 3742, 284 },
            { 3757, 297 },
            { 3758, 293 },
            { 3775, 210 },
            { 3779, 206 },
            { 3803, 282 },
            { 3806, 178 },
            { 4059, 366 },
            { 5174, 398 },
            { 9882, 301 },
            { 10111, 363 },
            { 10352, 463 },
            { 10509, 473 },
            { 10511, 241 },
            { 10581, 203 },
            { 10605, 240 },
            { 10880, 412 },
            { 11037, 631 },
            { 11053, 498 },
            { 11259, 495 },
            { 11792, 584 },
            { 12084, 401 },
            { 13823, 359 },
            { 13849, 384 },
            { 13865, 396 },
            { 13880, 383 },
            { 14216, 522 },
            { 14278, 483 },
            { 14566, 583 },
            { 15486, 172 },
            { 15487, 173 },
            { 15488, 174 },
            { 15489, 175 },
            { 15490, 176 },
            { 15491, 177 },
            { 15492, 178 },
            { 15493, 179 },
            { 15494, 180 },
            { 15495, 181 },
            { 15496, 182 },
            { 15497, 183 },
            { 15498, 184 },
            { 15499, 185 },
            { 15500, 186 },
            { 15501, 187 },
            { 15502, 188 },
            { 15503, 189 },
            { 15504, 190 },
            { 15505, 191 },
            { 15506, 192 },
            { 15507, 193 },
            { 15508, 194 },
            { 15509, 195 },
            { 15510, 196 },
            { 15511, 197 },
            { 15512, 198 },
            { 15513, 199 },
            { 15514, 200 },
            { 15515, 201 },
            { 15516, 202 },
            { 15517, 203 },
            { 15518, 204 },
            { 15519, 205 },
            { 15520, 206 },
            { 15521, 207 },
            { 15522, 208 },
            { 15523, 209 },
            { 15524, 210 },
            { 15525, 211 },
            { 15526, 212 },
            { 15527, 213 },
            { 15528, 214 },
            { 15529, 215 },
            { 15530, 216 },
            { 15531, 217 },
            { 15532, 218 },
            { 15533, 219 },
            { 15534, 220 },
            { 15535, 221 },
            { 15536, 222 },
            { 15537, 223 },
            { 15538, 224 },
            { 15539, 225 },
            { 15540, 226 },
            { 15541, 227 },
            { 15542, 228 },
            { 15543, 229 },
            { 15544, 230 },
            { 15545, 231 },
            { 15546, 232 },
            { 15547, 233 },
            { 15548, 234 },
            { 15549, 235 },
            { 15550, 236 },
            { 15551, 237 },
            { 15552, 238 },
            { 15553, 239 },
            { 15554, 240 },
            { 15555, 241 },
            { 15556, 242 },
            { 15557, 243 },
            { 15558, 244 },
            { 15559, 245 },
            { 15560, 246 },
            { 15561, 247 },
            { 15562, 248 },
            { 15563, 249 },
            { 15564, 250 },
            { 15565, 251 },
            { 15566, 252 },
            { 15567, 253 },
            { 15568, 254 },
            { 15569, 255 },
            { 15570, 256 },
            { 15571, 257 },
            { 15572, 258 },
            { 15573, 259 },
            { 15574, 260 },
            { 15575, 261 },
            { 15576, 262 },
            { 15577, 263 },
            { 15578, 264 },
            { 15579, 265 },
            { 15580, 266 },
            { 15581, 267 },
            { 15582, 268 },
            { 15583, 269 },
            { 15584, 270 },
            { 15585, 271 },
            { 15586, 272 },
            { 15587, 273 },
            { 15588, 274 },
            { 15589, 275 },
            { 15590, 276 },
            { 15591, 277 },
            { 15592, 278 },
            { 15593, 279 },
            { 15594, 280 },
            { 15595, 281 },
            { 15596, 282 },
            { 15597, 283 },
            { 15598, 284 },
            { 15599, 285 },
            { 15600, 286 },
            { 15601, 287 },
            { 15602, 288 },
            { 15603, 289 },
            { 15604, 290 },
            { 15605, 291 },
            { 15606, 292 },
            { 15607, 293 },
            { 15608, 294 },
            { 15609, 295 },
            { 15610, 296 },
            { 15611, 297 },
            { 15612, 298 },
            { 15613, 299 },
            { 15614, 300 },
            { 15615, 301 },
            { 15616, 302 },
            { 15617, 303 },
            { 15618, 304 },
            { 15619, 305 },
            { 15620, 306 },
            { 15621, 307 },
            { 15622, 308 },
            { 15623, 309 },
            { 15624, 310 },
            { 15625, 311 },
            { 15626, 312 },
            { 15627, 313 },
            { 15628, 314 },
            { 15629, 315 },
            { 15630, 316 },
            { 15631, 317 },
            { 15632, 318 },
            { 15633, 319 },
            { 15634, 320 },
            { 15635, 321 },
            { 15636, 322 },
            { 15637, 323 },
            { 15638, 324 },
            { 15639, 325 },
            { 15640, 326 },
            { 15641, 327 },
            { 15642, 328 },
            { 15643, 329 },
            { 15644, 330 },
            { 15645, 331 },
            { 15646, 332 },
            { 15647, 334 },
            { 15648, 335 },
            { 15649, 336 },
            { 15650, 337 },
            { 15651, 338 },
            { 15652, 339 },
            { 15653, 340 },
            { 15654, 341 },
            { 15655, 342 },
            { 15656, 343 },
            { 15657, 344 },
            { 15658, 345 },
            { 15659, 346 },
            { 15660, 347 },
            { 15661, 348 },
            { 15662, 349 },
            { 15663, 350 },
            { 15664, 351 },
            { 15665, 352 },
            { 15666, 353 },
            { 15667, 354 },
            { 15668, 355 },
            { 15669, 356 },
            { 15670, 357 },
            { 15671, 358 },
            { 15672, 359 },
            { 15673, 360 },
            { 15674, 361 },
            { 15675, 362 },
            { 15676, 363 },
            { 15677, 364 },
            { 15678, 365 },
            { 15679, 366 },
            { 15680, 367 },
            { 15681, 368 },
            { 15682, 369 },
            { 15683, 370 },
            { 15684, 371 },
            { 15685, 372 },
            { 15686, 373 },
            { 15687, 374 },
            { 15688, 375 },
            { 15689, 376 },
            { 15690, 377 },
            { 15691, 378 },
            { 15692, 379 },
            { 15693, 380 },
            { 15694, 381 },
            { 15695, 382 },
            { 15696, 383 },
            { 15697, 384 },
            { 15698, 385 },
            { 15699, 386 },
            { 15700, 387 },
            { 15701, 388 },
            { 15702, 389 },
            { 15703, 390 },
            { 15704, 391 },
            { 15705, 392 },
            { 15706, 393 },
            { 15707, 394 },
            { 15708, 395 },
            { 15709, 396 },
            { 15710, 397 },
            { 15711, 398 },
            { 15712, 399 },
            { 15713, 400 },
            { 15714, 401 },
            { 15715, 402 },
            { 15716, 403 },
            { 15717, 404 },
            { 15718, 405 },
            { 15719, 406 },
            { 15720, 407 },
            { 15721, 408 },
            { 15722, 409 },
            { 15723, 410 },
            { 15724, 411 },
            { 15725, 412 },
            { 15726, 413 },
            { 15727, 414 },
            { 15728, 415 },
            { 15729, 416 },
            { 15730, 417 },
            { 15731, 418 },
            { 15732, 419 },
            { 15733, 420 },
            { 15734, 421 },
            { 15735, 422 },
            { 15736, 423 },
            { 15737, 424 },
            { 15738, 425 },
            { 15739, 426 },
            { 15740, 427 },
            { 15741, 428 },
            { 15742, 429 },
            { 15743, 430 },
            { 15744, 431 },
            { 15745, 432 },
            { 15746, 433 },
            { 15747, 434 },
            { 15748, 435 },
            { 15749, 436 },
            { 15750, 437 },
            { 15751, 438 },
            { 15752, 439 },
            { 15753, 440 },
            { 15754, 441 },
            { 15755, 442 },
            { 15756, 443 },
            { 15757, 444 },
            { 15758, 445 },
            { 15759, 446 },
            { 15760, 447 },
            { 15761, 448 },
            { 15762, 449 },
            { 15763, 450 },
            { 15764, 451 },
            { 15765, 452 },
            { 15766, 453 },
            { 15767, 454 },
            { 15768, 455 },
            { 15769, 456 },
            { 15770, 457 },
            { 15771, 458 },
            { 15772, 459 },
            { 15773, 460 },
            { 15774, 461 },
            { 15775, 462 },
            { 15776, 463 },
            { 15777, 464 },
            { 15778, 465 },
            { 15779, 466 },
            { 15780, 467 },
            { 15781, 468 },
            { 15782, 469 },
            { 15783, 470 },
            { 15784, 471 },
            { 15785, 472 },
            { 15786, 473 },
            { 15787, 474 },
            { 15788, 475 },
            { 15789, 476 },
            { 15790, 477 },
            { 15791, 478 },
            { 15792, 479 },
            { 15793, 480 },
            { 15794, 481 },
            { 15795, 482 },
            { 15796, 483 },
            { 15797, 484 },
            { 15798, 485 },
            { 15799, 486 },
            { 15800, 487 },
            { 15801, 488 },
            { 15802, 489 },
            { 15803, 490 },
            { 15804, 491 },
            { 15805, 492 },
            { 15806, 493 },
            { 15807, 494 },
            { 15808, 495 },
            { 15809, 496 },
            { 15810, 497 },
            { 15811, 498 },
            { 15812, 499 },
            { 15813, 500 },
            { 15814, 501 },
            { 15815, 502 },
            { 15816, 503 },
            { 15817, 504 },
            { 15818, 505 },
            { 15819, 506 },
            { 15820, 507 },
            { 15821, 508 },
            { 15822, 509 },
            { 15823, 510 },
            { 15824, 511 },
            { 15825, 512 },
            { 15826, 513 },
            { 15827, 514 },
            { 15828, 515 },
            { 15829, 516 },
            { 15830, 517 },
            { 15831, 518 },
            { 15832, 519 },
            { 15833, 520 },
            { 15834, 521 },
            { 15835, 522 },
            { 15836, 523 },
            { 15837, 524 },
            { 15838, 525 },
            { 15839, 526 },
            { 15840, 527 },
            { 15841, 528 },
            { 15842, 529 },
            { 15843, 530 },
            { 15844, 531 },
            { 15845, 532 },
            { 15846, 533 },
            { 15847, 534 },
            { 15848, 535 },
            { 15849, 536 },
            { 15850, 537 },
            { 15851, 538 },
            { 15852, 539 },
            { 15853, 540 },
            { 15854, 541 },
            { 15855, 542 },
            { 15856, 543 },
            { 15857, 544 },
            { 15858, 545 },
            { 15859, 546 },
            { 15860, 547 },
            { 15861, 548 },
            { 15862, 549 },
            { 15863, 550 },
            { 15864, 551 },
            { 15865, 552 },
            { 15866, 553 },
            { 15867, 554 },
            { 15868, 555 },
            { 15869, 556 },
            { 15870, 557 },
            { 15871, 558 },
            { 15872, 559 },
            { 15873, 560 },
            { 15874, 561 },
            { 15875, 562 },
            { 15876, 563 },
            { 15877, 564 },
            { 15878, 565 },
            { 15879, 566 },
            { 15880, 567 },
            { 15881, 568 },
            { 15882, 569 },
            { 15883, 570 },
            { 15884, 571 },
            { 15885, 572 },
            { 15886, 573 },
            { 15887, 574 },
            { 15888, 575 },
            { 15889, 576 },
            { 15890, 577 },
            { 15891, 578 },
            { 15892, 579 },
            { 15893, 580 },
            { 15894, 581 },
            { 15895, 582 },
            { 15896, 583 },
            { 15897, 584 },
            { 15898, 585 },
            { 15899, 586 },
            { 15900, 587 },
            { 15901, 588 },
            { 15902, 589 },
            { 15903, 590 },
            { 15904, 591 },
            { 15905, 592 },
            { 15906, 593 },
            { 15907, 594 },
            { 15908, 595 },
            { 15909, 596 },
            { 15910, 597 },
            { 15911, 598 },
            { 15912, 599 },
            { 15913, 600 },
            { 15914, 601 },
            { 15915, 602 },
            { 15916, 603 },
            { 15917, 604 },
            { 15918, 605 },
            { 15919, 606 },
            { 15920, 607 },
            { 15921, 608 },
            { 15922, 609 },
            { 15923, 610 },
            { 15924, 611 },
            { 15925, 612 },
            { 15926, 613 },
            { 15927, 614 },
            { 15928, 615 },
            { 15929, 616 },
            { 15930, 617 },
            { 15931, 618 },
            { 15932, 619 },
            { 15933, 620 },
            { 15934, 621 },
            { 15935, 622 },
            { 15936, 623 },
            { 15937, 624 },
            { 15938, 625 },
            { 15939, 626 },
            { 15940, 627 },
            { 15941, 628 },
            { 15942, 629 },
            { 15943, 630 },
            { 15944, 631 },
            { 15945, 632 },
            { 15946, 633 },
            { 15947, 634 },
            { 15948, 635 },
            { 15949, 636 },
            { 15950, 637 },
            { 15951, 638 },
            { 15952, 639 },
            { 15953, 640 },
            { 15954, 641 },
            { 15955, 642 },
            { 15956, 643 },
            { 15957, 644 },
            { 15958, 645 },
            { 15959, 646 },
            { 15960, 647 },
            { 15961, 648 },
            { 15962, 649 },
            { 15963, 650 },
            { 15964, 651 },
            { 15965, 652 },
            { 15966, 653 },
            { 15967, 654 },
            { 15968, 655 },
            { 15969, 656 },
            { 15970, 657 },
            { 15971, 658 },
            { 15972, 659 },
            { 15973, 660 },
            { 15974, 661 },
            { 15975, 662 },
            { 15976, 663 },
            { 15977, 664 },
            { 15978, 665 }
        };

        #endregion
    }
}
