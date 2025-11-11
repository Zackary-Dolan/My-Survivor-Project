/// @description reandomly select a song

snd = [snd_bg_1, snd_bg_2, snd_bg_3, snd_bg_4, snd_bg_5, snd_bg_6, snd_bg_7, snd_bg_8, snd_bg_9, snd_bg_10];

randomize();
random_pick = random(array_length(snd));

snd_index = audio_play_sound(snd[random_pick], 10, true);



