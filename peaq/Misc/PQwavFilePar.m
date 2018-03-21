function WAV = PQwavFilePar (File)
% Print a WAVE file header, pick up the file parameters

persistent iB

if (isempty (iB))
    iB = 0;
else
    iB = mod (iB + 1, 2);   % Only two files can be "active" at a time
end

%[size WAV.Fs Nbit] = wavread (File, 'size');
ai = audioinfo(File);
WAV.Fname = ai.Filename;
WAV.Nframe = ai.TotalSamples;
WAV.Nchan = ai.NumChannels;
WAV.iB = iB;   % Buffer number
Nbit = ai.BitsPerSample
WAV.Fs = ai.SampleRate

% Initialize the buffer
PQgetData (WAV, 0, 0);

fprintf (' WAVE file: %s\n', File);
if (WAV.Nchan == 1)
    fprintf ('   Number of samples : %d (%.4g s)\n', WAV.Nframe, WAV.Nframe / WAV.Fs);
else
    fprintf ('   Number of frames  : %d (%.4g s)\n', WAV.Nframe, WAV.Nframe / WAV.Fs);
end
fprintf ('   Sampling frequency: %g\n', WAV.Fs);
fprintf ('   Number of channels: %d (%d-bit integer)\n', WAV.Nchan, Nbit);
