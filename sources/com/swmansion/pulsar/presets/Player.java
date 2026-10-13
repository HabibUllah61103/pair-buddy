package com.swmansion.pulsar.presets;

import com.swmansion.pulsar.Pulsar;
import com.swmansion.pulsar.composers.PatternComposer;
import com.swmansion.pulsar.types.PatternData;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Player.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\f\u001a\u00020\rH\u0016J\u0016\u0010\u000e\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0010H\u0004R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/swmansion/pulsar/presets/Player;", "", "haptics", "Lcom/swmansion/pulsar/Pulsar;", "pattern", "Lcom/swmansion/pulsar/types/PatternData;", "audioOnly", "", "<init>", "(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/types/PatternData;Z)V", "composer", "Lcom/swmansion/pulsar/composers/PatternComposer;", "play", "", "playSystemOrFallback", "systemPlay", "Lkotlin/Function0;", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class Player {
    private boolean audioOnly;
    private PatternComposer composer;

    public Player(Pulsar haptics, PatternData pattern, boolean z) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        this.audioOnly = z;
        PatternComposer patternComposer = haptics.getPatternComposer();
        this.composer = patternComposer;
        patternComposer.parsePattern(pattern);
    }

    public /* synthetic */ Player(Pulsar pulsar, PatternData patternData, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(pulsar, patternData, (i & 4) != 0 ? false : z);
    }

    public void play() {
        if (this.audioOnly) {
            this.composer.playAudioOnly();
        } else {
            this.composer.play();
        }
    }

    protected final void playSystemOrFallback(Function0<Boolean> systemPlay) {
        Intrinsics.checkNotNullParameter(systemPlay, "systemPlay");
        this.composer.playAudioOnly();
        if (systemPlay.invoke().booleanValue()) {
            return;
        }
        this.composer.play();
    }
}
