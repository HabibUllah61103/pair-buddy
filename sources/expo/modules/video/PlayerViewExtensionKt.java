package expo.modules.video;

import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.media3.ui.DefaultTimeBar;
import androidx.media3.ui.PlayerView;
import com.facebook.react.uimanager.ViewProps;
import expo.modules.video.records.ButtonOptions;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlayerViewExtension.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0001\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0001\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0001\u001a\u0014\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0001\u001a\u0014\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0001\u001a\u0014\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0001\u001a\u001e\u0010\f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0004H\u0001¨\u0006\u0010"}, d2 = {"applyRequiresLinearPlayback", "", "Landroidx/media3/ui/PlayerView;", "requireLinearPlayback", "", "setTimeBarInteractive", "interactive", "setFullscreenButtonVisibility", ViewProps.VISIBLE, "setSettingsButtonVisibility", "setPlayPauseButtonVisibility", "setBottomBarVisibility", "applyButtonOptions", "config", "Lexpo/modules/video/records/ButtonOptions;", "requiresLinearPlayback", "expo-video_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class PlayerViewExtensionKt {
    public static final void applyRequiresLinearPlayback(PlayerView playerView, boolean z) {
        Intrinsics.checkNotNullParameter(playerView, "<this>");
        playerView.setShowFastForwardButton(!z);
        playerView.setShowRewindButton(!z);
        playerView.setShowPreviousButton(!z);
        playerView.setShowNextButton(!z);
        setTimeBarInteractive(playerView, z);
    }

    public static final void setTimeBarInteractive(PlayerView playerView, boolean z) {
        Intrinsics.checkNotNullParameter(playerView, "<this>");
        DefaultTimeBar defaultTimeBar = (DefaultTimeBar) playerView.findViewById(androidx.media3.ui.R.id.exo_progress);
        if (z) {
            if (defaultTimeBar != null) {
                defaultTimeBar.setScrubberColor(0);
            }
            if (defaultTimeBar != null) {
                defaultTimeBar.setEnabled(false);
                return;
            }
            return;
        }
        if (defaultTimeBar != null) {
            defaultTimeBar.setScrubberColor(-1);
        }
        if (defaultTimeBar != null) {
            defaultTimeBar.setEnabled(true);
        }
    }

    public static final void setFullscreenButtonVisibility(PlayerView playerView, boolean z) {
        Intrinsics.checkNotNullParameter(playerView, "<this>");
        ImageButton imageButton = (ImageButton) playerView.findViewById(androidx.media3.ui.R.id.exo_fullscreen);
        if (imageButton != null) {
            imageButton.setVisibility(z ? 0 : 8);
        }
    }

    public static final void setSettingsButtonVisibility(PlayerView playerView, boolean z) {
        Intrinsics.checkNotNullParameter(playerView, "<this>");
        ImageButton imageButton = (ImageButton) playerView.findViewById(androidx.media3.ui.R.id.exo_settings);
        if (imageButton != null) {
            imageButton.setVisibility(z ? 0 : 8);
        }
    }

    public static final void setPlayPauseButtonVisibility(PlayerView playerView, boolean z) {
        Intrinsics.checkNotNullParameter(playerView, "<this>");
        ImageButton imageButton = (ImageButton) playerView.findViewById(androidx.media3.ui.R.id.exo_play_pause);
        if (imageButton != null) {
            imageButton.setVisibility(z ? 0 : 8);
        }
    }

    public static final void setBottomBarVisibility(PlayerView playerView, boolean z) {
        Intrinsics.checkNotNullParameter(playerView, "<this>");
        ViewGroup viewGroup = (ViewGroup) playerView.findViewById(androidx.media3.ui.R.id.exo_bottom_bar);
        if (viewGroup != null) {
            viewGroup.setVisibility(z ? 0 : 8);
        }
        DefaultTimeBar defaultTimeBar = (DefaultTimeBar) playerView.findViewById(androidx.media3.ui.R.id.exo_progress);
        if (defaultTimeBar != null) {
            defaultTimeBar.setVisibility(z ? 0 : 8);
        }
    }

    public static /* synthetic */ void applyButtonOptions$default(PlayerView playerView, ButtonOptions buttonOptions, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        applyButtonOptions(playerView, buttonOptions, z);
    }

    public static final void applyButtonOptions(PlayerView playerView, ButtonOptions config, boolean z) {
        Intrinsics.checkNotNullParameter(playerView, "<this>");
        Intrinsics.checkNotNullParameter(config, "config");
        playerView.setShowFastForwardButton(!z && config.getShowSeekForward());
        playerView.setShowRewindButton(!z && config.getShowSeekBackward());
        playerView.setShowPreviousButton(!z && config.getShowPrevious());
        playerView.setShowNextButton(!z && config.getShowNext());
        setSettingsButtonVisibility(playerView, config.getShowSettings());
        setPlayPauseButtonVisibility(playerView, config.getShowPlayPause());
        setBottomBarVisibility(playerView, config.getShowBottomBar());
    }
}
