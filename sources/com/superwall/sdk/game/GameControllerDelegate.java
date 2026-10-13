package com.superwall.sdk.game;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;

/* JADX INFO: compiled from: GameControllerManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/game/GameControllerDelegate;", "", "gameControllerEventOccured", "", NotificationCompat.CATEGORY_EVENT, "Lcom/superwall/sdk/game/GameControllerEvent;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface GameControllerDelegate {
    void gameControllerEventOccured(GameControllerEvent event);
}
