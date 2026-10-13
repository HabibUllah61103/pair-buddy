package com.swmansion.pulsar.presets;

import androidx.core.app.NotificationCompat;
import com.swmansion.pulsar.ActivityProvider;
import com.swmansion.pulsar.Pulsar;
import com.swmansion.pulsar.haptics.HapticEngineWrapper;
import com.swmansion.pulsar.presets.generated.AfterglowPreset;
import com.swmansion.pulsar.presets.generated.AftershockPreset;
import com.swmansion.pulsar.presets.generated.AlarmPreset;
import com.swmansion.pulsar.presets.generated.AnvilPreset;
import com.swmansion.pulsar.presets.generated.ApplausePreset;
import com.swmansion.pulsar.presets.generated.AscentPreset;
import com.swmansion.pulsar.presets.generated.BalloonPopPreset;
import com.swmansion.pulsar.presets.generated.BarragePreset;
import com.swmansion.pulsar.presets.generated.BassDropPreset;
import com.swmansion.pulsar.presets.generated.BatterPreset;
import com.swmansion.pulsar.presets.generated.BellTollPreset;
import com.swmansion.pulsar.presets.generated.BlipPreset;
import com.swmansion.pulsar.presets.generated.BloomPreset;
import com.swmansion.pulsar.presets.generated.BongoPreset;
import com.swmansion.pulsar.presets.generated.BoulderPreset;
import com.swmansion.pulsar.presets.generated.BreakingWavePreset;
import com.swmansion.pulsar.presets.generated.BreathPreset;
import com.swmansion.pulsar.presets.generated.BuildupPreset;
import com.swmansion.pulsar.presets.generated.BurstPreset;
import com.swmansion.pulsar.presets.generated.BuzzPreset;
import com.swmansion.pulsar.presets.generated.CadencePreset;
import com.swmansion.pulsar.presets.generated.CameraShutterPreset;
import com.swmansion.pulsar.presets.generated.CanterPreset;
import com.swmansion.pulsar.presets.generated.CascadePreset;
import com.swmansion.pulsar.presets.generated.CastanetsPreset;
import com.swmansion.pulsar.presets.generated.CatPawPreset;
import com.swmansion.pulsar.presets.generated.ChargePreset;
import com.swmansion.pulsar.presets.generated.ChimePreset;
import com.swmansion.pulsar.presets.generated.ChipPreset;
import com.swmansion.pulsar.presets.generated.ChirpPreset;
import com.swmansion.pulsar.presets.generated.ClamorPreset;
import com.swmansion.pulsar.presets.generated.ClaspPreset;
import com.swmansion.pulsar.presets.generated.CleavePreset;
import com.swmansion.pulsar.presets.generated.CoilPreset;
import com.swmansion.pulsar.presets.generated.CoinDropPreset;
import com.swmansion.pulsar.presets.generated.CombinationLockPreset;
import com.swmansion.pulsar.presets.generated.CrescendoPreset;
import com.swmansion.pulsar.presets.generated.DewdropPreset;
import com.swmansion.pulsar.presets.generated.DirgePreset;
import com.swmansion.pulsar.presets.generated.DissolvePreset;
import com.swmansion.pulsar.presets.generated.DogBarkPreset;
import com.swmansion.pulsar.presets.generated.DronePreset;
import com.swmansion.pulsar.presets.generated.EngineRevPreset;
import com.swmansion.pulsar.presets.generated.ExhalePreset;
import com.swmansion.pulsar.presets.generated.ExplosionPreset;
import com.swmansion.pulsar.presets.generated.FadeOutPreset;
import com.swmansion.pulsar.presets.generated.FanfarePreset;
import com.swmansion.pulsar.presets.generated.FeatherPreset;
import com.swmansion.pulsar.presets.generated.FinalePreset;
import com.swmansion.pulsar.presets.generated.FingerDrumPreset;
import com.swmansion.pulsar.presets.generated.FirecrackerPreset;
import com.swmansion.pulsar.presets.generated.FizzPreset;
import com.swmansion.pulsar.presets.generated.FlarePreset;
import com.swmansion.pulsar.presets.generated.FlickPreset;
import com.swmansion.pulsar.presets.generated.FlinchPreset;
import com.swmansion.pulsar.presets.generated.FlourishPreset;
import com.swmansion.pulsar.presets.generated.FlurryPreset;
import com.swmansion.pulsar.presets.generated.FlushPreset;
import com.swmansion.pulsar.presets.generated.GallopPreset;
import com.swmansion.pulsar.presets.generated.GavelPreset;
import com.swmansion.pulsar.presets.generated.GlitchPreset;
import com.swmansion.pulsar.presets.generated.GuitarStrumPreset;
import com.swmansion.pulsar.presets.generated.HailPreset;
import com.swmansion.pulsar.presets.generated.HammerPreset;
import com.swmansion.pulsar.presets.generated.HeartbeatPreset;
import com.swmansion.pulsar.presets.generated.HeraldPreset;
import com.swmansion.pulsar.presets.generated.HoofBeatPreset;
import com.swmansion.pulsar.presets.generated.IgnitionPreset;
import com.swmansion.pulsar.presets.generated.ImpactPreset;
import com.swmansion.pulsar.presets.generated.JoltPreset;
import com.swmansion.pulsar.presets.generated.KeyboardMechanicalPreset;
import com.swmansion.pulsar.presets.generated.KeyboardMembranePreset;
import com.swmansion.pulsar.presets.generated.KnellPreset;
import com.swmansion.pulsar.presets.generated.KnockPreset;
import com.swmansion.pulsar.presets.generated.LamentPreset;
import com.swmansion.pulsar.presets.generated.LatchPreset;
import com.swmansion.pulsar.presets.generated.LighthousePreset;
import com.swmansion.pulsar.presets.generated.LiltPreset;
import com.swmansion.pulsar.presets.generated.LockPreset;
import com.swmansion.pulsar.presets.generated.LopePreset;
import com.swmansion.pulsar.presets.generated.MarchPreset;
import com.swmansion.pulsar.presets.generated.MetronomePreset;
import com.swmansion.pulsar.presets.generated.MurmurPreset;
import com.swmansion.pulsar.presets.generated.NudgePreset;
import com.swmansion.pulsar.presets.generated.PassingCarPreset;
import com.swmansion.pulsar.presets.generated.PatterPreset;
import com.swmansion.pulsar.presets.generated.PealPreset;
import com.swmansion.pulsar.presets.generated.PeckPreset;
import com.swmansion.pulsar.presets.generated.PendulumPreset;
import com.swmansion.pulsar.presets.generated.PingPreset;
import com.swmansion.pulsar.presets.generated.PipPreset;
import com.swmansion.pulsar.presets.generated.PistonPreset;
import com.swmansion.pulsar.presets.generated.PlinkPreset;
import com.swmansion.pulsar.presets.generated.PlummetPreset;
import com.swmansion.pulsar.presets.generated.PlunkPreset;
import com.swmansion.pulsar.presets.generated.PokePreset;
import com.swmansion.pulsar.presets.generated.PoundPreset;
import com.swmansion.pulsar.presets.generated.PowerDownPreset;
import com.swmansion.pulsar.presets.generated.PropelPreset;
import com.swmansion.pulsar.presets.generated.PulsePreset;
import com.swmansion.pulsar.presets.generated.PummelPreset;
import com.swmansion.pulsar.presets.generated.PushPreset;
import com.swmansion.pulsar.presets.generated.RadarPreset;
import com.swmansion.pulsar.presets.generated.RainPreset;
import com.swmansion.pulsar.presets.generated.RampPreset;
import com.swmansion.pulsar.presets.generated.RapPreset;
import com.swmansion.pulsar.presets.generated.RatchetPreset;
import com.swmansion.pulsar.presets.generated.ReboundPreset;
import com.swmansion.pulsar.presets.generated.RipplePreset;
import com.swmansion.pulsar.presets.generated.RivetPreset;
import com.swmansion.pulsar.presets.generated.RustlePreset;
import com.swmansion.pulsar.presets.generated.ShockwavePreset;
import com.swmansion.pulsar.presets.generated.SnapPreset;
import com.swmansion.pulsar.presets.generated.SonarPreset;
import com.swmansion.pulsar.presets.generated.SparkPreset;
import com.swmansion.pulsar.presets.generated.SpinPreset;
import com.swmansion.pulsar.presets.generated.StaggerPreset;
import com.swmansion.pulsar.presets.generated.StampPreset;
import com.swmansion.pulsar.presets.generated.StampedePreset;
import com.swmansion.pulsar.presets.generated.StompPreset;
import com.swmansion.pulsar.presets.generated.StoneSkipPreset;
import com.swmansion.pulsar.presets.generated.StrikePreset;
import com.swmansion.pulsar.presets.generated.SummonPreset;
import com.swmansion.pulsar.presets.generated.SurgePreset;
import com.swmansion.pulsar.presets.generated.SwayPreset;
import com.swmansion.pulsar.presets.generated.SweepPreset;
import com.swmansion.pulsar.presets.generated.SwellPreset;
import com.swmansion.pulsar.presets.generated.SyncopatePreset;
import com.swmansion.pulsar.presets.generated.ThrobPreset;
import com.swmansion.pulsar.presets.generated.ThudPreset;
import com.swmansion.pulsar.presets.generated.ThumpPreset;
import com.swmansion.pulsar.presets.generated.ThunderPreset;
import com.swmansion.pulsar.presets.generated.ThunderRollPreset;
import com.swmansion.pulsar.presets.generated.TickTockPreset;
import com.swmansion.pulsar.presets.generated.TidalSurgePreset;
import com.swmansion.pulsar.presets.generated.TideSwellPreset;
import com.swmansion.pulsar.presets.generated.TremorPreset;
import com.swmansion.pulsar.presets.generated.TriggerPreset;
import com.swmansion.pulsar.presets.generated.TriumphPreset;
import com.swmansion.pulsar.presets.generated.TrumpetPreset;
import com.swmansion.pulsar.presets.generated.TypewriterPreset;
import com.swmansion.pulsar.presets.generated.UnfurlPreset;
import com.swmansion.pulsar.presets.generated.VortexPreset;
import com.swmansion.pulsar.presets.generated.WanePreset;
import com.swmansion.pulsar.presets.generated.WarDrumPreset;
import com.swmansion.pulsar.presets.generated.WaterfallPreset;
import com.swmansion.pulsar.presets.generated.WavePreset;
import com.swmansion.pulsar.presets.generated.WispPreset;
import com.swmansion.pulsar.presets.generated.WobblePreset;
import com.swmansion.pulsar.presets.generated.WoodpeckerPreset;
import com.swmansion.pulsar.presets.generated.ZipperPreset;
import com.swmansion.pulsar.types.Preset;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PresetsWrapper.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000_\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0003\bË\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000bJ\u0006\u0010\u001c\u001a\u00020\u000bJ\u0006\u0010\u001d\u001a\u00020\u001aJ\u0014\u0010\u001e\u001a\u00020\u001a2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000e0 J\u000e\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u000eJ\u0010\u0010#\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\"\u001a\u00020\u000eJ\u0012\u0010$\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\"\u001a\u00020\u000eH\u0002J\u0010\u0010%\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000eH\u0002J\u0006\u0010&\u001a\u00020\u001aJ\u0006\u0010'\u001a\u00020\u001aJ\u0006\u0010(\u001a\u00020\u001aJ\u0006\u0010)\u001a\u00020\u001aJ\u0006\u0010*\u001a\u00020\u001aJ\u0006\u0010+\u001a\u00020\u001aJ\u0006\u0010,\u001a\u00020\u001aJ\u0006\u0010-\u001a\u00020\u001aJ\u0006\u0010.\u001a\u00020\u001aJ\u0006\u0010/\u001a\u00020\u001aJ\u0006\u00100\u001a\u00020\u001aJ\u0006\u00101\u001a\u00020\u001aJ\u0006\u00102\u001a\u00020\u001aJ\u0006\u00103\u001a\u00020\u001aJ\u0006\u00104\u001a\u00020\u001aJ\u0006\u00105\u001a\u00020\u001aJ\u0006\u00106\u001a\u00020\u001aJ\u0006\u00107\u001a\u00020\u001aJ\u0006\u00108\u001a\u00020\u001aJ\u0006\u00109\u001a\u00020\u001aJ\u0006\u0010:\u001a\u00020\u001aJ\u0006\u0010;\u001a\u00020\u001aJ\u0006\u0010<\u001a\u00020\u001aJ\u0006\u0010=\u001a\u00020\u001aJ\u0006\u0010>\u001a\u00020\u001aJ\u0006\u0010?\u001a\u00020\u001aJ\u0006\u0010@\u001a\u00020\u001aJ\u0006\u0010A\u001a\u00020\u001aJ\u0006\u0010B\u001a\u00020\u001aJ\u0006\u0010C\u001a\u00020\u001aJ\u0006\u0010D\u001a\u00020\u001aJ\u0006\u0010E\u001a\u00020\u001aJ\u0006\u0010F\u001a\u00020\u001aJ\u0006\u0010G\u001a\u00020\u001aJ\u0006\u0010H\u001a\u00020\u001aJ\u0006\u0010I\u001a\u00020\u001aJ\u0006\u0010J\u001a\u00020\u001aJ\u0006\u0010K\u001a\u00020\u001aJ\u0006\u0010L\u001a\u00020\u001aJ\u0006\u0010M\u001a\u00020\u001aJ\u0006\u0010N\u001a\u00020\u001aJ\u0006\u0010O\u001a\u00020\u001aJ\u0006\u0010P\u001a\u00020\u001aJ\u0006\u0010Q\u001a\u00020\u001aJ\u0006\u0010R\u001a\u00020\u001aJ\u0006\u0010S\u001a\u00020\u001aJ\u0006\u0010T\u001a\u00020\u001aJ\u0006\u0010U\u001a\u00020\u001aJ\u0006\u0010V\u001a\u00020\u001aJ\u0006\u0010W\u001a\u00020\u001aJ\u0006\u0010X\u001a\u00020\u001aJ\u0006\u0010Y\u001a\u00020\u001aJ\u0006\u0010Z\u001a\u00020\u001aJ\u0006\u0010[\u001a\u00020\u001aJ\u0006\u0010\\\u001a\u00020\u001aJ\u0006\u0010]\u001a\u00020\u001aJ\u0006\u0010^\u001a\u00020\u001aJ\u0006\u0010_\u001a\u00020\u001aJ\u0006\u0010`\u001a\u00020\u001aJ\u0006\u0010a\u001a\u00020\u001aJ\u0006\u0010b\u001a\u00020\u001aJ\u0006\u0010c\u001a\u00020\u001aJ\u0006\u0010d\u001a\u00020\u001aJ\u0006\u0010e\u001a\u00020\u001aJ\u0006\u0010f\u001a\u00020\u001aJ\u0006\u0010g\u001a\u00020\u001aJ\u0006\u0010h\u001a\u00020\u001aJ\u0006\u0010i\u001a\u00020\u001aJ\u0006\u0010j\u001a\u00020\u001aJ\u0006\u0010k\u001a\u00020\u001aJ\u0006\u0010l\u001a\u00020\u001aJ\u0006\u0010m\u001a\u00020\u001aJ\u0006\u0010n\u001a\u00020\u001aJ\u0006\u0010o\u001a\u00020\u001aJ\u0006\u0010p\u001a\u00020\u001aJ\u0006\u0010q\u001a\u00020\u001aJ\u0006\u0010r\u001a\u00020\u001aJ\u0006\u0010s\u001a\u00020\u001aJ\u0006\u0010t\u001a\u00020\u001aJ\u0006\u0010u\u001a\u00020\u001aJ\u0006\u0010v\u001a\u00020\u001aJ\u0006\u0010w\u001a\u00020\u001aJ\u0006\u0010x\u001a\u00020\u001aJ\u0006\u0010y\u001a\u00020\u001aJ\u0006\u0010z\u001a\u00020\u001aJ\u0006\u0010{\u001a\u00020\u001aJ\u0006\u0010|\u001a\u00020\u001aJ\u0006\u0010}\u001a\u00020\u001aJ\u0006\u0010~\u001a\u00020\u001aJ\u0006\u0010\u007f\u001a\u00020\u001aJ\u0007\u0010\u0080\u0001\u001a\u00020\u001aJ\u0007\u0010\u0081\u0001\u001a\u00020\u001aJ\u0007\u0010\u0082\u0001\u001a\u00020\u001aJ\u0007\u0010\u0083\u0001\u001a\u00020\u001aJ\u0007\u0010\u0084\u0001\u001a\u00020\u001aJ\u0007\u0010\u0085\u0001\u001a\u00020\u001aJ\u0007\u0010\u0086\u0001\u001a\u00020\u001aJ\u0007\u0010\u0087\u0001\u001a\u00020\u001aJ\u0007\u0010\u0088\u0001\u001a\u00020\u001aJ\u0007\u0010\u0089\u0001\u001a\u00020\u001aJ\u0007\u0010\u008a\u0001\u001a\u00020\u001aJ\u0007\u0010\u008b\u0001\u001a\u00020\u001aJ\u0007\u0010\u008c\u0001\u001a\u00020\u001aJ\u0007\u0010\u008d\u0001\u001a\u00020\u001aJ\u0007\u0010\u008e\u0001\u001a\u00020\u001aJ\u0007\u0010\u008f\u0001\u001a\u00020\u001aJ\u0007\u0010\u0090\u0001\u001a\u00020\u001aJ\u0007\u0010\u0091\u0001\u001a\u00020\u001aJ\u0007\u0010\u0092\u0001\u001a\u00020\u001aJ\u0007\u0010\u0093\u0001\u001a\u00020\u001aJ\u0007\u0010\u0094\u0001\u001a\u00020\u001aJ\u0007\u0010\u0095\u0001\u001a\u00020\u001aJ\u0007\u0010\u0096\u0001\u001a\u00020\u001aJ\u0007\u0010\u0097\u0001\u001a\u00020\u001aJ\u0007\u0010\u0098\u0001\u001a\u00020\u001aJ\u0007\u0010\u0099\u0001\u001a\u00020\u001aJ\u0007\u0010\u009a\u0001\u001a\u00020\u001aJ\u0007\u0010\u009b\u0001\u001a\u00020\u001aJ\u0007\u0010\u009c\u0001\u001a\u00020\u001aJ\u0007\u0010\u009d\u0001\u001a\u00020\u001aJ\u0007\u0010\u009e\u0001\u001a\u00020\u001aJ\u0007\u0010\u009f\u0001\u001a\u00020\u001aJ\u0007\u0010 \u0001\u001a\u00020\u001aJ\u0007\u0010¡\u0001\u001a\u00020\u001aJ\u0007\u0010¢\u0001\u001a\u00020\u001aJ\u0007\u0010£\u0001\u001a\u00020\u001aJ\u0007\u0010¤\u0001\u001a\u00020\u001aJ\u0007\u0010¥\u0001\u001a\u00020\u001aJ\u0007\u0010¦\u0001\u001a\u00020\u001aJ\u0007\u0010§\u0001\u001a\u00020\u001aJ\u0007\u0010¨\u0001\u001a\u00020\u001aJ\u0007\u0010©\u0001\u001a\u00020\u001aJ\u0007\u0010ª\u0001\u001a\u00020\u001aJ\u0007\u0010«\u0001\u001a\u00020\u001aJ\u0007\u0010¬\u0001\u001a\u00020\u001aJ\u0007\u0010\u00ad\u0001\u001a\u00020\u001aJ\u0007\u0010®\u0001\u001a\u00020\u001aJ\u0007\u0010¯\u0001\u001a\u00020\u001aJ\u0007\u0010°\u0001\u001a\u00020\u001aJ\u0007\u0010±\u0001\u001a\u00020\u001aJ\u0007\u0010²\u0001\u001a\u00020\u001aJ\u0007\u0010³\u0001\u001a\u00020\u001aJ\u0007\u0010´\u0001\u001a\u00020\u001aJ\u0007\u0010µ\u0001\u001a\u00020\u001aJ\u0007\u0010¶\u0001\u001a\u00020\u001aJ\u0007\u0010·\u0001\u001a\u00020\u001aJ\u0007\u0010¸\u0001\u001a\u00020\u001aJ\u0007\u0010¹\u0001\u001a\u00020\u001aJ\u0007\u0010º\u0001\u001a\u00020\u001aJ\u0007\u0010»\u0001\u001a\u00020\u001aJ\u0007\u0010¼\u0001\u001a\u00020\u001aJ\u0007\u0010½\u0001\u001a\u00020\u001aJ\u0007\u0010¾\u0001\u001a\u00020\u001aJ\u0007\u0010¿\u0001\u001a\u00020\u001aJ\u0007\u0010À\u0001\u001a\u00020\u001aJ\u0007\u0010Á\u0001\u001a\u00020\u001aJ\u0007\u0010Â\u0001\u001a\u00020\u001aJ\u0007\u0010Ã\u0001\u001a\u00020\u001aJ\u0007\u0010Ä\u0001\u001a\u00020\u001aJ\u0007\u0010Å\u0001\u001a\u00020\u001aJ\u0007\u0010Æ\u0001\u001a\u00020\u001aJ\u0007\u0010Ç\u0001\u001a\u00020\u001aJ\u0007\u0010È\u0001\u001a\u00020\u001aJ\u0007\u0010É\u0001\u001a\u00020\u001aJ\u0007\u0010Ê\u0001\u001a\u00020\u001aJ\u0007\u0010Ë\u0001\u001a\u00020\u001aJ\u0007\u0010Ì\u0001\u001a\u00020\u001aJ\u0007\u0010Í\u0001\u001a\u00020\u001aJ\u0007\u0010Î\u0001\u001a\u00020\u001aJ\u0007\u0010Ï\u0001\u001a\u00020\u001aJ\u0007\u0010Ð\u0001\u001a\u00020\u001aJ\u0007\u0010Ñ\u0001\u001a\u00020\u001aJ\u0007\u0010Ò\u0001\u001a\u00020\u001aJ\u0007\u0010Ó\u0001\u001a\u00020\u001aJ\u0007\u0010Ô\u0001\u001a\u00020\u001aJ\u0007\u0010Õ\u0001\u001a\u00020\u001aJ\u0007\u0010Ö\u0001\u001a\u00020\u001aJ\u0007\u0010×\u0001\u001a\u00020\u001aJ\u0007\u0010Ø\u0001\u001a\u00020\u001aJ\u0007\u0010Ù\u0001\u001a\u00020\u001aJ\u0007\u0010Ú\u0001\u001a\u00020\u001aJ\u0007\u0010Û\u0001\u001a\u00020\u001aJ\u0007\u0010Ü\u0001\u001a\u00020\u001aJ\u0007\u0010Ý\u0001\u001a\u00020\u001aJ\u0007\u0010Þ\u0001\u001a\u00020\u001aJ\u0007\u0010ß\u0001\u001a\u00020\u001aJ\u0007\u0010à\u0001\u001a\u00020\u001aJ\u0007\u0010á\u0001\u001a\u00020\u001aJ\u0007\u0010â\u0001\u001a\u00020\u001aJ\u0007\u0010ã\u0001\u001a\u00020\u001aJ\u0007\u0010ä\u0001\u001a\u00020\u001aJ\u0007\u0010å\u0001\u001a\u00020\u001aJ\u0007\u0010æ\u0001\u001a\u00020\u001aJ\u0007\u0010ç\u0001\u001a\u00020\u001aJ\u0007\u0010è\u0001\u001a\u00020\u001aJ\u0007\u0010é\u0001\u001a\u00020\u001aJ\u0007\u0010ê\u0001\u001a\u00020\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0016\u001a\u001a\u0012\u0004\u0012\u00020\u000e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f0\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006ë\u0001"}, d2 = {"Lcom/swmansion/pulsar/presets/PresetsWrapper;", "", "haptics", "Lcom/swmansion/pulsar/Pulsar;", "activityProvider", "Lcom/swmansion/pulsar/ActivityProvider;", "engine", "Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;", "<init>", "(Lcom/swmansion/pulsar/Pulsar;Lcom/swmansion/pulsar/ActivityProvider;Lcom/swmansion/pulsar/haptics/HapticEngineWrapper;)V", "useCache", "", "cache", "", "", "Lcom/swmansion/pulsar/types/Preset;", "systemEffectPresets", "Lcom/swmansion/pulsar/presets/SystemEffectPresets;", "systemPrimitivePresets", "Lcom/swmansion/pulsar/presets/SystemPrimitivePresets;", "systemViewBasedPresets", "Lcom/swmansion/pulsar/presets/SystemViewBasedPresets;", "mapper", "", "Lkotlin/Function1;", "enableCache", "", "state", "isCacheEnabled", "resetCache", "preloadPresetByNames", "names", "", "preloadPresetByName", "name", "getByName", "getCacheablePreset", "normalizeName", "systemImpactLight", "systemImpactMedium", "systemImpactHeavy", "systemImpactSoft", "systemImpactRigid", "systemNotificationSuccess", "systemNotificationWarning", "systemNotificationError", "systemSelection", "systemEffectClick", "systemEffectDoubleClick", "systemEffectTick", "systemEffectHeavyClick", "systemLongPress", "systemVirtualKey", "systemKeyboardTap", "systemClockTick", "systemCalendarDate", "systemContextClick", "systemKeyboardPress", "systemKeyboardRelease", "systemVirtualKeyRelease", "systemTextHandleMove", "systemDragCrossing", "systemGestureStart", "systemGestureEnd", "systemEdgeSqueeze", "systemEdgeRelease", "systemConfirm", "systemRelease", "systemScrollTick", "systemScrollItemFocus", "systemScrollLimit", "systemToggleOn", "systemToggleOff", "systemDragStart", "systemSegmentTick", "systemSegmentFrequentTick", "systemPrimitiveClick", "systemPrimitiveThud", "systemPrimitiveSpin", "systemPrimitiveQuickRise", "systemPrimitiveSlowRise", "systemPrimitiveQuickFall", "systemPrimitiveTick", "systemPrimitiveLowTick", "afterglow", "aftershock", NotificationCompat.CATEGORY_ALARM, "anvil", "applause", "ascent", "balloonPop", "barrage", "bassDrop", "batter", "bellToll", "blip", "bloom", "bongo", "boulder", "breakingWave", "breath", "buildup", "burst", "buzz", "cadence", "cameraShutter", "canter", "cascade", "castanets", "catPaw", "charge", "chime", "chip", "chirp", "clamor", "clasp", "cleave", "coil", "coinDrop", "combinationLock", "crescendo", "dewdrop", "dirge", "dissolve", "dogBark", "drone", "engineRev", "exhale", "explosion", "fadeOut", "fanfare", "feather", "finale", "fingerDrum", "firecracker", "fizz", "flare", "flick", "flinch", "flourish", "flurry", "flush", "gallop", "gavel", "glitch", "guitarStrum", "hail", "hammer", "heartbeat", "herald", "hoofBeat", "ignition", "impact", "jolt", "keyboardMechanical", "keyboardMembrane", "knell", "knock", "lament", "latch", "lighthouse", "lilt", "lock", "lope", "march", "metronome", "murmur", "nudge", "passingCar", "patter", "peal", "peck", "pendulum", "ping", "pip", "piston", "plink", "plummet", "plunk", "poke", "pound", "powerDown", "propel", "pulse", "pummel", "push", "radar", "rain", "ramp", "rap", "ratchet", "rebound", "ripple", "rivet", "rustle", "shockwave", "snap", "sonar", "spark", "spin", "stagger", "stamp", "stampede", "stomp", "stoneSkip", "strike", "summon", "surge", "sway", "sweep", "swell", "syncopate", "throb", "thud", "thump", "thunder", "thunderRoll", "tickTock", "tidalSurge", "tideSwell", "tremor", "trigger", "triumph", "trumpet", "typewriter", "unfurl", "vortex", "wane", "warDrum", "waterfall", "wave", "wisp", "wobble", "woodpecker", "zipper", "Pulsar_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PresetsWrapper {
    private final Map<String, Preset> cache;
    private final Pulsar haptics;
    private final Map<String, Function1<Pulsar, Preset>> mapper;
    private final SystemEffectPresets systemEffectPresets;
    private final SystemPrimitivePresets systemPrimitivePresets;
    private final SystemViewBasedPresets systemViewBasedPresets;
    private boolean useCache;

    public PresetsWrapper(Pulsar haptics, ActivityProvider activityProvider, HapticEngineWrapper engine) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        Intrinsics.checkNotNullParameter(activityProvider, "activityProvider");
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.haptics = haptics;
        this.useCache = true;
        this.cache = new LinkedHashMap();
        this.systemEffectPresets = new SystemEffectPresets(engine);
        this.systemPrimitivePresets = new SystemPrimitivePresets(engine);
        this.systemViewBasedPresets = new SystemViewBasedPresets(activityProvider);
        Map mapMapOf = MapsKt.mapOf(TuplesKt.to(SystemImpactLightPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return (Preset) PresetsWrapper.mapper$lambda$0((Pulsar) obj);
            }
        }), TuplesKt.to(SystemImpactMediumPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$1((Pulsar) obj);
            }
        }), TuplesKt.to(SystemImpactHeavyPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$2((Pulsar) obj);
            }
        }), TuplesKt.to(SystemImpactSoftPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$3((Pulsar) obj);
            }
        }), TuplesKt.to(SystemImpactRigidPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda46
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$4((Pulsar) obj);
            }
        }), TuplesKt.to(SystemNotificationSuccessPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda58
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$5((Pulsar) obj);
            }
        }), TuplesKt.to(SystemNotificationWarningPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda70
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$6((Pulsar) obj);
            }
        }), TuplesKt.to(SystemNotificationErrorPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda82
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$7((Pulsar) obj);
            }
        }), TuplesKt.to(SystemSelectionPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda94
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$8((Pulsar) obj);
            }
        }), TuplesKt.to(SystemEffectClickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda106
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$9(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemEffectDoubleClickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$10(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemEffectTickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda111
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$11(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemEffectHeavyClickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda123
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$12(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemPrimitiveClickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda135
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$13(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemPrimitiveThudPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda147
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$14(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemPrimitiveSpinPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda159
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$15(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemPrimitiveQuickRisePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda171
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$16(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemPrimitiveSlowRisePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda183
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$17(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemPrimitiveQuickFallPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda195
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$18(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemPrimitiveTickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$19(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemPrimitiveLowTickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$20(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemLongPressPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$21(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemVirtualKeyPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$22(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemKeyboardTapPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$23(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemClockTickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$24(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemCalendarDatePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$25(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemContextClickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$26(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemKeyboardPressPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$27(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemKeyboardReleasePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$28(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemVirtualKeyReleasePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$29(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemTextHandleMovePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$30(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemDragCrossingPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$31(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemGestureStartPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$32(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemGestureEndPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$33(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemEdgeSqueezePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda27
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$34(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemEdgeReleasePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda28
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$35(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemConfirmPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda29
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$36(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemReleasePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda30
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$37(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemScrollTickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda31
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$38(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemScrollItemFocusPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda32
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$39(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemScrollLimitPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda35
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$40(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemToggleOnPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda36
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$41(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemToggleOffPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda37
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$42(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemDragStartPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda38
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$43(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemSegmentTickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda39
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$44(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(SystemSegmentFrequentTickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda40
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$45(this.f$0, (Pulsar) obj);
            }
        }), TuplesKt.to(AfterglowPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda41
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$46((Pulsar) obj);
            }
        }), TuplesKt.to(AftershockPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda42
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$47((Pulsar) obj);
            }
        }), TuplesKt.to(AlarmPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda43
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$48((Pulsar) obj);
            }
        }), TuplesKt.to(AnvilPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda45
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$49((Pulsar) obj);
            }
        }), TuplesKt.to(ApplausePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda47
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$50((Pulsar) obj);
            }
        }), TuplesKt.to(AscentPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda48
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$51((Pulsar) obj);
            }
        }), TuplesKt.to(BalloonPopPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda49
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$52((Pulsar) obj);
            }
        }), TuplesKt.to(BarragePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda50
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$53((Pulsar) obj);
            }
        }), TuplesKt.to(BassDropPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda51
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$54((Pulsar) obj);
            }
        }), TuplesKt.to(BatterPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda52
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$55((Pulsar) obj);
            }
        }), TuplesKt.to(BellTollPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda53
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$56((Pulsar) obj);
            }
        }), TuplesKt.to(BlipPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda54
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$57((Pulsar) obj);
            }
        }), TuplesKt.to(BloomPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda56
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$58((Pulsar) obj);
            }
        }), TuplesKt.to(BongoPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda57
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$59((Pulsar) obj);
            }
        }), TuplesKt.to(BoulderPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda59
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$60((Pulsar) obj);
            }
        }), TuplesKt.to(BreakingWavePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda60
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$61((Pulsar) obj);
            }
        }), TuplesKt.to(BreathPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda61
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$62((Pulsar) obj);
            }
        }), TuplesKt.to(BuildupPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda62
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$63((Pulsar) obj);
            }
        }), TuplesKt.to(BurstPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda63
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$64((Pulsar) obj);
            }
        }), TuplesKt.to(BuzzPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda64
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$65((Pulsar) obj);
            }
        }), TuplesKt.to(CadencePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda65
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$66((Pulsar) obj);
            }
        }), TuplesKt.to(CameraShutterPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda67
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$67((Pulsar) obj);
            }
        }), TuplesKt.to(CanterPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda68
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$68((Pulsar) obj);
            }
        }), TuplesKt.to(CascadePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda69
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$69((Pulsar) obj);
            }
        }), TuplesKt.to(CastanetsPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda71
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$70((Pulsar) obj);
            }
        }), TuplesKt.to(CatPawPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda72
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$71((Pulsar) obj);
            }
        }), TuplesKt.to(ChargePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda73
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$72((Pulsar) obj);
            }
        }), TuplesKt.to(ChimePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda74
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$73((Pulsar) obj);
            }
        }), TuplesKt.to(ChipPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda75
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$74((Pulsar) obj);
            }
        }), TuplesKt.to(ChirpPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda76
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$75((Pulsar) obj);
            }
        }), TuplesKt.to(ClamorPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda78
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$76((Pulsar) obj);
            }
        }), TuplesKt.to(ClaspPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda79
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$77((Pulsar) obj);
            }
        }), TuplesKt.to(CleavePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda80
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$78((Pulsar) obj);
            }
        }), TuplesKt.to(CoilPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda81
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$79((Pulsar) obj);
            }
        }), TuplesKt.to(CoinDropPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda83
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$80((Pulsar) obj);
            }
        }), TuplesKt.to(CombinationLockPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda84
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$81((Pulsar) obj);
            }
        }), TuplesKt.to(CrescendoPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda85
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$82((Pulsar) obj);
            }
        }), TuplesKt.to(DewdropPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda86
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$83((Pulsar) obj);
            }
        }), TuplesKt.to(DirgePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda87
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$84((Pulsar) obj);
            }
        }), TuplesKt.to(DissolvePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda89
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$85((Pulsar) obj);
            }
        }), TuplesKt.to(DogBarkPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda90
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$86((Pulsar) obj);
            }
        }), TuplesKt.to(DronePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda91
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$87((Pulsar) obj);
            }
        }), TuplesKt.to(EngineRevPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda92
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$88((Pulsar) obj);
            }
        }), TuplesKt.to(ExhalePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda93
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$89((Pulsar) obj);
            }
        }), TuplesKt.to(ExplosionPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda95
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$90((Pulsar) obj);
            }
        }), TuplesKt.to(FadeOutPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda96
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$91((Pulsar) obj);
            }
        }), TuplesKt.to(FanfarePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda97
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$92((Pulsar) obj);
            }
        }), TuplesKt.to(FeatherPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda98
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$93((Pulsar) obj);
            }
        }), TuplesKt.to(FinalePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda100
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$94((Pulsar) obj);
            }
        }), TuplesKt.to(FingerDrumPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda101
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$95((Pulsar) obj);
            }
        }), TuplesKt.to(FirecrackerPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda102
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$96((Pulsar) obj);
            }
        }), TuplesKt.to(FizzPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda103
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$97((Pulsar) obj);
            }
        }), TuplesKt.to(FlarePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda104
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$98((Pulsar) obj);
            }
        }), TuplesKt.to(FlickPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda105
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$99((Pulsar) obj);
            }
        }), TuplesKt.to(FlinchPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda108
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$100((Pulsar) obj);
            }
        }), TuplesKt.to(FlourishPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda119
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$101((Pulsar) obj);
            }
        }), TuplesKt.to(FlurryPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda130
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$102((Pulsar) obj);
            }
        }), TuplesKt.to(FlushPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda141
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$103((Pulsar) obj);
            }
        }), TuplesKt.to(GallopPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda152
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$104((Pulsar) obj);
            }
        }), TuplesKt.to(GavelPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda163
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$105((Pulsar) obj);
            }
        }), TuplesKt.to(GlitchPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda174
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$106((Pulsar) obj);
            }
        }), TuplesKt.to(GuitarStrumPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda185
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$107((Pulsar) obj);
            }
        }), TuplesKt.to(HailPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda196
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$108((Pulsar) obj);
            }
        }), TuplesKt.to(HammerPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$109((Pulsar) obj);
            }
        }), TuplesKt.to(HeartbeatPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda33
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$110((Pulsar) obj);
            }
        }), TuplesKt.to(HeraldPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda44
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$111((Pulsar) obj);
            }
        }), TuplesKt.to(HoofBeatPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda55
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$112((Pulsar) obj);
            }
        }), TuplesKt.to(IgnitionPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda66
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$113((Pulsar) obj);
            }
        }), TuplesKt.to(ImpactPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda77
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$114((Pulsar) obj);
            }
        }), TuplesKt.to(JoltPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda88
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$115((Pulsar) obj);
            }
        }), TuplesKt.to(KeyboardMechanicalPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda99
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$116((Pulsar) obj);
            }
        }), TuplesKt.to(KeyboardMembranePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda107
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$117((Pulsar) obj);
            }
        }), TuplesKt.to(KnellPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda109
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$118((Pulsar) obj);
            }
        }), TuplesKt.to(KnockPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda110
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$119((Pulsar) obj);
            }
        }), TuplesKt.to(LamentPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda112
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$120((Pulsar) obj);
            }
        }), TuplesKt.to(LatchPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda113
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$121((Pulsar) obj);
            }
        }), TuplesKt.to(LighthousePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda114
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$122((Pulsar) obj);
            }
        }), TuplesKt.to(LiltPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda115
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$123((Pulsar) obj);
            }
        }), TuplesKt.to(LockPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda116
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$124((Pulsar) obj);
            }
        }), TuplesKt.to(LopePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda117
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$125((Pulsar) obj);
            }
        }), TuplesKt.to(MarchPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda118
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$126((Pulsar) obj);
            }
        }), TuplesKt.to(MetronomePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda120
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$127((Pulsar) obj);
            }
        }), TuplesKt.to(MurmurPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda121
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$128((Pulsar) obj);
            }
        }), TuplesKt.to(NudgePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda122
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$129((Pulsar) obj);
            }
        }), TuplesKt.to(PassingCarPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda124
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$130((Pulsar) obj);
            }
        }), TuplesKt.to(PatterPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda125
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$131((Pulsar) obj);
            }
        }), TuplesKt.to(PealPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda126
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$132((Pulsar) obj);
            }
        }), TuplesKt.to(PeckPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda127
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$133((Pulsar) obj);
            }
        }), TuplesKt.to(PendulumPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda128
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$134((Pulsar) obj);
            }
        }), TuplesKt.to(PingPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda129
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$135((Pulsar) obj);
            }
        }), TuplesKt.to(PipPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda131
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$136((Pulsar) obj);
            }
        }), TuplesKt.to(PistonPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda132
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$137((Pulsar) obj);
            }
        }), TuplesKt.to(PlinkPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda133
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$138((Pulsar) obj);
            }
        }), TuplesKt.to(PlummetPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda134
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$139((Pulsar) obj);
            }
        }), TuplesKt.to(PlunkPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda136
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$140((Pulsar) obj);
            }
        }), TuplesKt.to(PokePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda137
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$141((Pulsar) obj);
            }
        }), TuplesKt.to(PoundPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda138
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$142((Pulsar) obj);
            }
        }), TuplesKt.to(PowerDownPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda139
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$143((Pulsar) obj);
            }
        }), TuplesKt.to(PropelPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda140
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$144((Pulsar) obj);
            }
        }), TuplesKt.to(PulsePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda142
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$145((Pulsar) obj);
            }
        }), TuplesKt.to(PummelPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda143
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$146((Pulsar) obj);
            }
        }), TuplesKt.to(PushPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda144
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$147((Pulsar) obj);
            }
        }), TuplesKt.to(RadarPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda145
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$148((Pulsar) obj);
            }
        }), TuplesKt.to(RainPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda146
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$149((Pulsar) obj);
            }
        }), TuplesKt.to(RampPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda148
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$150((Pulsar) obj);
            }
        }), TuplesKt.to(RapPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda149
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$151((Pulsar) obj);
            }
        }), TuplesKt.to(RatchetPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda150
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$152((Pulsar) obj);
            }
        }), TuplesKt.to(ReboundPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda151
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$153((Pulsar) obj);
            }
        }), TuplesKt.to(RipplePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda153
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$154((Pulsar) obj);
            }
        }), TuplesKt.to(RivetPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda154
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$155((Pulsar) obj);
            }
        }), TuplesKt.to(RustlePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda155
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$156((Pulsar) obj);
            }
        }), TuplesKt.to(ShockwavePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda156
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$157((Pulsar) obj);
            }
        }), TuplesKt.to(SnapPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda157
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$158((Pulsar) obj);
            }
        }), TuplesKt.to(SonarPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda158
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$159((Pulsar) obj);
            }
        }), TuplesKt.to(SparkPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda160
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$160((Pulsar) obj);
            }
        }), TuplesKt.to(SpinPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda161
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$161((Pulsar) obj);
            }
        }), TuplesKt.to(StaggerPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda162
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$162((Pulsar) obj);
            }
        }), TuplesKt.to(StampPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda164
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$163((Pulsar) obj);
            }
        }), TuplesKt.to(StampedePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda165
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$164((Pulsar) obj);
            }
        }), TuplesKt.to(StompPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda166
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$165((Pulsar) obj);
            }
        }), TuplesKt.to(StoneSkipPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda167
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$166((Pulsar) obj);
            }
        }), TuplesKt.to(StrikePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda168
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$167((Pulsar) obj);
            }
        }), TuplesKt.to(SummonPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda169
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$168((Pulsar) obj);
            }
        }), TuplesKt.to(SurgePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda170
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$169((Pulsar) obj);
            }
        }), TuplesKt.to(SwayPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda172
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$170((Pulsar) obj);
            }
        }), TuplesKt.to(SweepPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda173
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$171((Pulsar) obj);
            }
        }), TuplesKt.to(SwellPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda175
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$172((Pulsar) obj);
            }
        }), TuplesKt.to(SyncopatePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda176
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$173((Pulsar) obj);
            }
        }), TuplesKt.to(ThrobPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda177
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$174((Pulsar) obj);
            }
        }), TuplesKt.to(ThudPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda178
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$175((Pulsar) obj);
            }
        }), TuplesKt.to(ThumpPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda179
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$176((Pulsar) obj);
            }
        }), TuplesKt.to(ThunderPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda180
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$177((Pulsar) obj);
            }
        }), TuplesKt.to(ThunderRollPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda181
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$178((Pulsar) obj);
            }
        }), TuplesKt.to(TickTockPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda182
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$179((Pulsar) obj);
            }
        }), TuplesKt.to(TidalSurgePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda184
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$180((Pulsar) obj);
            }
        }), TuplesKt.to(TideSwellPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda186
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$181((Pulsar) obj);
            }
        }), TuplesKt.to(TremorPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda187
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$182((Pulsar) obj);
            }
        }), TuplesKt.to(TriggerPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda188
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$183((Pulsar) obj);
            }
        }), TuplesKt.to(TriumphPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda189
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$184((Pulsar) obj);
            }
        }), TuplesKt.to(TrumpetPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda190
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$185((Pulsar) obj);
            }
        }), TuplesKt.to(TypewriterPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda191
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$186((Pulsar) obj);
            }
        }), TuplesKt.to(UnfurlPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda192
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$187((Pulsar) obj);
            }
        }), TuplesKt.to(VortexPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda193
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$188((Pulsar) obj);
            }
        }), TuplesKt.to(WanePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda194
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$189((Pulsar) obj);
            }
        }), TuplesKt.to(WarDrumPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$190((Pulsar) obj);
            }
        }), TuplesKt.to(WaterfallPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$191((Pulsar) obj);
            }
        }), TuplesKt.to(WavePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$192((Pulsar) obj);
            }
        }), TuplesKt.to(WispPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$193((Pulsar) obj);
            }
        }), TuplesKt.to(WobblePreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$194((Pulsar) obj);
            }
        }), TuplesKt.to(WoodpeckerPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$195((Pulsar) obj);
            }
        }), TuplesKt.to(ZipperPreset.INSTANCE.getName(), new Function1() { // from class: com.swmansion.pulsar.presets.PresetsWrapper$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PresetsWrapper.mapper$lambda$196((Pulsar) obj);
            }
        }));
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(mapMapOf.size()));
        for (Map.Entry entry : mapMapOf.entrySet()) {
            linkedHashMap.put(normalizeName((String) entry.getKey()), entry.getValue());
        }
        this.mapper = linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object mapper$lambda$0(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemImpactLightPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$1(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemImpactMediumPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$2(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemImpactHeavyPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$3(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemImpactSoftPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$4(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemImpactRigidPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$5(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemNotificationSuccessPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$6(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemNotificationWarningPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$7(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemNotificationErrorPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$8(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemSelectionPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$9(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemEffectClickPreset(haptics, presetsWrapper.systemEffectPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$10(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemEffectDoubleClickPreset(haptics, presetsWrapper.systemEffectPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$11(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemEffectTickPreset(haptics, presetsWrapper.systemEffectPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$12(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemEffectHeavyClickPreset(haptics, presetsWrapper.systemEffectPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$13(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemPrimitiveClickPreset(haptics, presetsWrapper.systemPrimitivePresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$14(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemPrimitiveThudPreset(haptics, presetsWrapper.systemPrimitivePresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$15(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemPrimitiveSpinPreset(haptics, presetsWrapper.systemPrimitivePresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$16(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemPrimitiveQuickRisePreset(haptics, presetsWrapper.systemPrimitivePresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$17(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemPrimitiveSlowRisePreset(haptics, presetsWrapper.systemPrimitivePresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$18(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemPrimitiveQuickFallPreset(haptics, presetsWrapper.systemPrimitivePresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$19(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemPrimitiveTickPreset(haptics, presetsWrapper.systemPrimitivePresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$20(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemPrimitiveLowTickPreset(haptics, presetsWrapper.systemPrimitivePresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$21(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemLongPressPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$22(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemVirtualKeyPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$23(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemKeyboardTapPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$24(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemClockTickPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$25(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemCalendarDatePreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$26(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemContextClickPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$27(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemKeyboardPressPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$28(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemKeyboardReleasePreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$29(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemVirtualKeyReleasePreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$30(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemTextHandleMovePreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$31(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemDragCrossingPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$32(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemGestureStartPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$33(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemGestureEndPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$34(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemEdgeSqueezePreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$35(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemEdgeReleasePreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$36(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemConfirmPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$37(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemReleasePreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$38(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemScrollTickPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$39(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemScrollItemFocusPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$40(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemScrollLimitPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$41(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemToggleOnPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$42(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemToggleOffPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$43(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemDragStartPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$44(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemSegmentTickPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$45(PresetsWrapper presetsWrapper, Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SystemSegmentFrequentTickPreset(haptics, presetsWrapper.systemViewBasedPresets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$46(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new AfterglowPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$47(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new AftershockPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$48(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new AlarmPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$49(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new AnvilPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$50(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ApplausePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$51(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new AscentPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$52(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BalloonPopPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$53(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BarragePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$54(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BassDropPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$55(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BatterPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$56(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BellTollPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$57(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BlipPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$58(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BloomPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$59(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BongoPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$60(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BoulderPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$61(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BreakingWavePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$62(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BreathPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$63(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BuildupPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$64(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BurstPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$65(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new BuzzPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$66(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CadencePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$67(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CameraShutterPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$68(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CanterPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$69(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CascadePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$70(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CastanetsPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$71(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CatPawPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$72(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ChargePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$73(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ChimePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$74(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ChipPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$75(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ChirpPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$76(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ClamorPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$77(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ClaspPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$78(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CleavePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$79(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CoilPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$80(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CoinDropPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$81(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CombinationLockPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$82(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new CrescendoPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$83(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new DewdropPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$84(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new DirgePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$85(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new DissolvePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$86(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new DogBarkPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$87(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new DronePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$88(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new EngineRevPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$89(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ExhalePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$90(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ExplosionPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$91(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FadeOutPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$92(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FanfarePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$93(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FeatherPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$94(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FinalePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$95(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FingerDrumPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$96(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FirecrackerPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$97(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FizzPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$98(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FlarePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$99(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FlickPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$100(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FlinchPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$101(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FlourishPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$102(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FlurryPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$103(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new FlushPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$104(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new GallopPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$105(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new GavelPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$106(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new GlitchPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$107(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new GuitarStrumPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$108(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new HailPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$109(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new HammerPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$110(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new HeartbeatPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$111(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new HeraldPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$112(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new HoofBeatPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$113(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new IgnitionPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$114(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ImpactPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$115(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new JoltPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$116(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new KeyboardMechanicalPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$117(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new KeyboardMembranePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$118(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new KnellPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$119(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new KnockPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$120(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new LamentPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$121(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new LatchPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$122(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new LighthousePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$123(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new LiltPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$124(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new LockPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$125(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new LopePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$126(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new MarchPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$127(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new MetronomePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$128(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new MurmurPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$129(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new NudgePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$130(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PassingCarPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$131(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PatterPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$132(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PealPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$133(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PeckPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$134(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PendulumPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$135(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PingPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$136(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PipPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$137(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PistonPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$138(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PlinkPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$139(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PlummetPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$140(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PlunkPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$141(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PokePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$142(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PoundPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$143(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PowerDownPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$144(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PropelPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$145(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PulsePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$146(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PummelPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$147(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new PushPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$148(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new RadarPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$149(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new RainPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$150(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new RampPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$151(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new RapPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$152(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new RatchetPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$153(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ReboundPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$154(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new RipplePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$155(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new RivetPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$156(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new RustlePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$157(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ShockwavePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$158(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SnapPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$159(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SonarPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$160(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SparkPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$161(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SpinPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$162(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new StaggerPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$163(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new StampPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$164(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new StampedePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$165(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new StompPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$166(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new StoneSkipPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$167(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new StrikePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$168(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SummonPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$169(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SurgePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$170(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SwayPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$171(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SweepPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$172(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SwellPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$173(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new SyncopatePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$174(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ThrobPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$175(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ThudPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$176(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ThumpPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$177(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ThunderPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$178(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ThunderRollPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$179(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new TickTockPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$180(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new TidalSurgePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$181(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new TideSwellPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$182(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new TremorPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$183(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new TriggerPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$184(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new TriumphPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$185(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new TrumpetPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$186(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new TypewriterPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$187(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new UnfurlPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$188(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new VortexPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$189(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new WanePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$190(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new WarDrumPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$191(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new WaterfallPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$192(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new WavePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$193(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new WispPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$194(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new WobblePreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$195(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new WoodpeckerPreset(haptics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preset mapper$lambda$196(Pulsar haptics) {
        Intrinsics.checkNotNullParameter(haptics, "haptics");
        return new ZipperPreset(haptics);
    }

    public final void enableCache(boolean state) {
        this.useCache = state;
        if (state) {
            return;
        }
        resetCache();
    }

    /* JADX INFO: renamed from: isCacheEnabled, reason: from getter */
    public final boolean getUseCache() {
        return this.useCache;
    }

    public final void resetCache() {
        this.cache.clear();
    }

    public final void preloadPresetByNames(List<String> names) {
        Intrinsics.checkNotNullParameter(names, "names");
        Iterator<String> it = names.iterator();
        while (it.hasNext()) {
            preloadPresetByName(it.next());
        }
    }

    public final void preloadPresetByName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.useCache = true;
        getCacheablePreset(name);
    }

    public final Preset getByName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return getCacheablePreset(name);
    }

    private final Preset getCacheablePreset(String name) {
        Preset presetInvoke;
        String strNormalizeName = normalizeName(name);
        if (this.useCache) {
            Map<String, Preset> map = this.cache;
            Preset presetInvoke2 = map.get(strNormalizeName);
            if (presetInvoke2 == null) {
                Function1<Pulsar, Preset> function1 = this.mapper.get(strNormalizeName);
                if (function1 == null || (presetInvoke2 = function1.invoke(this.haptics)) == null) {
                    return null;
                }
                map.put(strNormalizeName, presetInvoke2);
            }
            return presetInvoke2;
        }
        Function1<Pulsar, Preset> function2 = this.mapper.get(strNormalizeName);
        if (function2 == null || (presetInvoke = function2.invoke(this.haptics)) == null) {
            return null;
        }
        return presetInvoke;
    }

    private final String normalizeName(String name) {
        String lowerCase = name.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    public final void systemImpactLight() {
        Preset cacheablePreset = getCacheablePreset(SystemImpactLightPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemImpactMedium() {
        Preset cacheablePreset = getCacheablePreset(SystemImpactMediumPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemImpactHeavy() {
        Preset cacheablePreset = getCacheablePreset(SystemImpactHeavyPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemImpactSoft() {
        Preset cacheablePreset = getCacheablePreset(SystemImpactSoftPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemImpactRigid() {
        Preset cacheablePreset = getCacheablePreset(SystemImpactRigidPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemNotificationSuccess() {
        Preset cacheablePreset = getCacheablePreset(SystemNotificationSuccessPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemNotificationWarning() {
        Preset cacheablePreset = getCacheablePreset(SystemNotificationWarningPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemNotificationError() {
        Preset cacheablePreset = getCacheablePreset(SystemNotificationErrorPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemSelection() {
        Preset cacheablePreset = getCacheablePreset(SystemSelectionPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemEffectClick() {
        Preset cacheablePreset = getCacheablePreset(SystemEffectClickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemEffectDoubleClick() {
        Preset cacheablePreset = getCacheablePreset(SystemEffectDoubleClickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemEffectTick() {
        Preset cacheablePreset = getCacheablePreset(SystemEffectTickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemEffectHeavyClick() {
        Preset cacheablePreset = getCacheablePreset(SystemEffectHeavyClickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemLongPress() {
        Preset cacheablePreset = getCacheablePreset(SystemLongPressPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemVirtualKey() {
        Preset cacheablePreset = getCacheablePreset(SystemVirtualKeyPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemKeyboardTap() {
        Preset cacheablePreset = getCacheablePreset(SystemKeyboardTapPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemClockTick() {
        Preset cacheablePreset = getCacheablePreset(SystemClockTickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemCalendarDate() {
        Preset cacheablePreset = getCacheablePreset(SystemCalendarDatePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemContextClick() {
        Preset cacheablePreset = getCacheablePreset(SystemContextClickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemKeyboardPress() {
        Preset cacheablePreset = getCacheablePreset(SystemKeyboardPressPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemKeyboardRelease() {
        Preset cacheablePreset = getCacheablePreset(SystemKeyboardReleasePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemVirtualKeyRelease() {
        Preset cacheablePreset = getCacheablePreset(SystemVirtualKeyReleasePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemTextHandleMove() {
        Preset cacheablePreset = getCacheablePreset(SystemTextHandleMovePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemDragCrossing() {
        Preset cacheablePreset = getCacheablePreset(SystemDragCrossingPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemGestureStart() {
        Preset cacheablePreset = getCacheablePreset(SystemGestureStartPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemGestureEnd() {
        Preset cacheablePreset = getCacheablePreset(SystemGestureEndPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemEdgeSqueeze() {
        Preset cacheablePreset = getCacheablePreset(SystemEdgeSqueezePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemEdgeRelease() {
        Preset cacheablePreset = getCacheablePreset(SystemEdgeReleasePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemConfirm() {
        Preset cacheablePreset = getCacheablePreset(SystemConfirmPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemRelease() {
        Preset cacheablePreset = getCacheablePreset(SystemReleasePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemScrollTick() {
        Preset cacheablePreset = getCacheablePreset(SystemScrollTickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemScrollItemFocus() {
        Preset cacheablePreset = getCacheablePreset(SystemScrollItemFocusPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemScrollLimit() {
        Preset cacheablePreset = getCacheablePreset(SystemScrollLimitPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemToggleOn() {
        Preset cacheablePreset = getCacheablePreset(SystemToggleOnPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemToggleOff() {
        Preset cacheablePreset = getCacheablePreset(SystemToggleOffPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemDragStart() {
        Preset cacheablePreset = getCacheablePreset(SystemDragStartPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemSegmentTick() {
        Preset cacheablePreset = getCacheablePreset(SystemSegmentTickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemSegmentFrequentTick() {
        Preset cacheablePreset = getCacheablePreset(SystemSegmentFrequentTickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemPrimitiveClick() {
        Preset cacheablePreset = getCacheablePreset(SystemPrimitiveClickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemPrimitiveThud() {
        Preset cacheablePreset = getCacheablePreset(SystemPrimitiveThudPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemPrimitiveSpin() {
        Preset cacheablePreset = getCacheablePreset(SystemPrimitiveSpinPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemPrimitiveQuickRise() {
        Preset cacheablePreset = getCacheablePreset(SystemPrimitiveQuickRisePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemPrimitiveSlowRise() {
        Preset cacheablePreset = getCacheablePreset(SystemPrimitiveSlowRisePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemPrimitiveQuickFall() {
        Preset cacheablePreset = getCacheablePreset(SystemPrimitiveQuickFallPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemPrimitiveTick() {
        Preset cacheablePreset = getCacheablePreset(SystemPrimitiveTickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void systemPrimitiveLowTick() {
        Preset cacheablePreset = getCacheablePreset(SystemPrimitiveLowTickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void afterglow() {
        Preset cacheablePreset = getCacheablePreset(AfterglowPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void aftershock() {
        Preset cacheablePreset = getCacheablePreset(AftershockPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void alarm() {
        Preset cacheablePreset = getCacheablePreset(AlarmPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void anvil() {
        Preset cacheablePreset = getCacheablePreset(AnvilPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void applause() {
        Preset cacheablePreset = getCacheablePreset(ApplausePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void ascent() {
        Preset cacheablePreset = getCacheablePreset(AscentPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void balloonPop() {
        Preset cacheablePreset = getCacheablePreset(BalloonPopPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void barrage() {
        Preset cacheablePreset = getCacheablePreset(BarragePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void bassDrop() {
        Preset cacheablePreset = getCacheablePreset(BassDropPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void batter() {
        Preset cacheablePreset = getCacheablePreset(BatterPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void bellToll() {
        Preset cacheablePreset = getCacheablePreset(BellTollPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void blip() {
        Preset cacheablePreset = getCacheablePreset(BlipPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void bloom() {
        Preset cacheablePreset = getCacheablePreset(BloomPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void bongo() {
        Preset cacheablePreset = getCacheablePreset(BongoPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void boulder() {
        Preset cacheablePreset = getCacheablePreset(BoulderPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void breakingWave() {
        Preset cacheablePreset = getCacheablePreset(BreakingWavePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void breath() {
        Preset cacheablePreset = getCacheablePreset(BreathPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void buildup() {
        Preset cacheablePreset = getCacheablePreset(BuildupPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void burst() {
        Preset cacheablePreset = getCacheablePreset(BurstPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void buzz() {
        Preset cacheablePreset = getCacheablePreset(BuzzPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void cadence() {
        Preset cacheablePreset = getCacheablePreset(CadencePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void cameraShutter() {
        Preset cacheablePreset = getCacheablePreset(CameraShutterPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void canter() {
        Preset cacheablePreset = getCacheablePreset(CanterPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void cascade() {
        Preset cacheablePreset = getCacheablePreset(CascadePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void castanets() {
        Preset cacheablePreset = getCacheablePreset(CastanetsPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void catPaw() {
        Preset cacheablePreset = getCacheablePreset(CatPawPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void charge() {
        Preset cacheablePreset = getCacheablePreset(ChargePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void chime() {
        Preset cacheablePreset = getCacheablePreset(ChimePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void chip() {
        Preset cacheablePreset = getCacheablePreset(ChipPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void chirp() {
        Preset cacheablePreset = getCacheablePreset(ChirpPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void clamor() {
        Preset cacheablePreset = getCacheablePreset(ClamorPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void clasp() {
        Preset cacheablePreset = getCacheablePreset(ClaspPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void cleave() {
        Preset cacheablePreset = getCacheablePreset(CleavePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void coil() {
        Preset cacheablePreset = getCacheablePreset(CoilPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void coinDrop() {
        Preset cacheablePreset = getCacheablePreset(CoinDropPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void combinationLock() {
        Preset cacheablePreset = getCacheablePreset(CombinationLockPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void crescendo() {
        Preset cacheablePreset = getCacheablePreset(CrescendoPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void dewdrop() {
        Preset cacheablePreset = getCacheablePreset(DewdropPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void dirge() {
        Preset cacheablePreset = getCacheablePreset(DirgePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void dissolve() {
        Preset cacheablePreset = getCacheablePreset(DissolvePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void dogBark() {
        Preset cacheablePreset = getCacheablePreset(DogBarkPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void drone() {
        Preset cacheablePreset = getCacheablePreset(DronePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void engineRev() {
        Preset cacheablePreset = getCacheablePreset(EngineRevPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void exhale() {
        Preset cacheablePreset = getCacheablePreset(ExhalePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void explosion() {
        Preset cacheablePreset = getCacheablePreset(ExplosionPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void fadeOut() {
        Preset cacheablePreset = getCacheablePreset(FadeOutPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void fanfare() {
        Preset cacheablePreset = getCacheablePreset(FanfarePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void feather() {
        Preset cacheablePreset = getCacheablePreset(FeatherPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void finale() {
        Preset cacheablePreset = getCacheablePreset(FinalePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void fingerDrum() {
        Preset cacheablePreset = getCacheablePreset(FingerDrumPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void firecracker() {
        Preset cacheablePreset = getCacheablePreset(FirecrackerPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void fizz() {
        Preset cacheablePreset = getCacheablePreset(FizzPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void flare() {
        Preset cacheablePreset = getCacheablePreset(FlarePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void flick() {
        Preset cacheablePreset = getCacheablePreset(FlickPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void flinch() {
        Preset cacheablePreset = getCacheablePreset(FlinchPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void flourish() {
        Preset cacheablePreset = getCacheablePreset(FlourishPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void flurry() {
        Preset cacheablePreset = getCacheablePreset(FlurryPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void flush() {
        Preset cacheablePreset = getCacheablePreset(FlushPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void gallop() {
        Preset cacheablePreset = getCacheablePreset(GallopPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void gavel() {
        Preset cacheablePreset = getCacheablePreset(GavelPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void glitch() {
        Preset cacheablePreset = getCacheablePreset(GlitchPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void guitarStrum() {
        Preset cacheablePreset = getCacheablePreset(GuitarStrumPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void hail() {
        Preset cacheablePreset = getCacheablePreset(HailPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void hammer() {
        Preset cacheablePreset = getCacheablePreset(HammerPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void heartbeat() {
        Preset cacheablePreset = getCacheablePreset(HeartbeatPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void herald() {
        Preset cacheablePreset = getCacheablePreset(HeraldPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void hoofBeat() {
        Preset cacheablePreset = getCacheablePreset(HoofBeatPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void ignition() {
        Preset cacheablePreset = getCacheablePreset(IgnitionPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void impact() {
        Preset cacheablePreset = getCacheablePreset(ImpactPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void jolt() {
        Preset cacheablePreset = getCacheablePreset(JoltPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void keyboardMechanical() {
        Preset cacheablePreset = getCacheablePreset(KeyboardMechanicalPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void keyboardMembrane() {
        Preset cacheablePreset = getCacheablePreset(KeyboardMembranePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void knell() {
        Preset cacheablePreset = getCacheablePreset(KnellPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void knock() {
        Preset cacheablePreset = getCacheablePreset(KnockPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void lament() {
        Preset cacheablePreset = getCacheablePreset(LamentPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void latch() {
        Preset cacheablePreset = getCacheablePreset(LatchPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void lighthouse() {
        Preset cacheablePreset = getCacheablePreset(LighthousePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void lilt() {
        Preset cacheablePreset = getCacheablePreset(LiltPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void lock() {
        Preset cacheablePreset = getCacheablePreset(LockPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void lope() {
        Preset cacheablePreset = getCacheablePreset(LopePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void march() {
        Preset cacheablePreset = getCacheablePreset(MarchPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void metronome() {
        Preset cacheablePreset = getCacheablePreset(MetronomePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void murmur() {
        Preset cacheablePreset = getCacheablePreset(MurmurPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void nudge() {
        Preset cacheablePreset = getCacheablePreset(NudgePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void passingCar() {
        Preset cacheablePreset = getCacheablePreset(PassingCarPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void patter() {
        Preset cacheablePreset = getCacheablePreset(PatterPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void peal() {
        Preset cacheablePreset = getCacheablePreset(PealPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void peck() {
        Preset cacheablePreset = getCacheablePreset(PeckPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void pendulum() {
        Preset cacheablePreset = getCacheablePreset(PendulumPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void ping() {
        Preset cacheablePreset = getCacheablePreset(PingPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void pip() {
        Preset cacheablePreset = getCacheablePreset(PipPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void piston() {
        Preset cacheablePreset = getCacheablePreset(PistonPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void plink() {
        Preset cacheablePreset = getCacheablePreset(PlinkPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void plummet() {
        Preset cacheablePreset = getCacheablePreset(PlummetPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void plunk() {
        Preset cacheablePreset = getCacheablePreset(PlunkPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void poke() {
        Preset cacheablePreset = getCacheablePreset(PokePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void pound() {
        Preset cacheablePreset = getCacheablePreset(PoundPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void powerDown() {
        Preset cacheablePreset = getCacheablePreset(PowerDownPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void propel() {
        Preset cacheablePreset = getCacheablePreset(PropelPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void pulse() {
        Preset cacheablePreset = getCacheablePreset(PulsePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void pummel() {
        Preset cacheablePreset = getCacheablePreset(PummelPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void push() {
        Preset cacheablePreset = getCacheablePreset(PushPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void radar() {
        Preset cacheablePreset = getCacheablePreset(RadarPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void rain() {
        Preset cacheablePreset = getCacheablePreset(RainPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void ramp() {
        Preset cacheablePreset = getCacheablePreset(RampPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void rap() {
        Preset cacheablePreset = getCacheablePreset(RapPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void ratchet() {
        Preset cacheablePreset = getCacheablePreset(RatchetPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void rebound() {
        Preset cacheablePreset = getCacheablePreset(ReboundPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void ripple() {
        Preset cacheablePreset = getCacheablePreset(RipplePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void rivet() {
        Preset cacheablePreset = getCacheablePreset(RivetPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void rustle() {
        Preset cacheablePreset = getCacheablePreset(RustlePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void shockwave() {
        Preset cacheablePreset = getCacheablePreset(ShockwavePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void snap() {
        Preset cacheablePreset = getCacheablePreset(SnapPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void sonar() {
        Preset cacheablePreset = getCacheablePreset(SonarPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void spark() {
        Preset cacheablePreset = getCacheablePreset(SparkPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void spin() {
        Preset cacheablePreset = getCacheablePreset(SpinPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void stagger() {
        Preset cacheablePreset = getCacheablePreset(StaggerPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void stamp() {
        Preset cacheablePreset = getCacheablePreset(StampPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void stampede() {
        Preset cacheablePreset = getCacheablePreset(StampedePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void stomp() {
        Preset cacheablePreset = getCacheablePreset(StompPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void stoneSkip() {
        Preset cacheablePreset = getCacheablePreset(StoneSkipPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void strike() {
        Preset cacheablePreset = getCacheablePreset(StrikePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void summon() {
        Preset cacheablePreset = getCacheablePreset(SummonPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void surge() {
        Preset cacheablePreset = getCacheablePreset(SurgePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void sway() {
        Preset cacheablePreset = getCacheablePreset(SwayPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void sweep() {
        Preset cacheablePreset = getCacheablePreset(SweepPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void swell() {
        Preset cacheablePreset = getCacheablePreset(SwellPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void syncopate() {
        Preset cacheablePreset = getCacheablePreset(SyncopatePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void throb() {
        Preset cacheablePreset = getCacheablePreset(ThrobPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void thud() {
        Preset cacheablePreset = getCacheablePreset(ThudPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void thump() {
        Preset cacheablePreset = getCacheablePreset(ThumpPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void thunder() {
        Preset cacheablePreset = getCacheablePreset(ThunderPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void thunderRoll() {
        Preset cacheablePreset = getCacheablePreset(ThunderRollPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void tickTock() {
        Preset cacheablePreset = getCacheablePreset(TickTockPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void tidalSurge() {
        Preset cacheablePreset = getCacheablePreset(TidalSurgePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void tideSwell() {
        Preset cacheablePreset = getCacheablePreset(TideSwellPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void tremor() {
        Preset cacheablePreset = getCacheablePreset(TremorPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void trigger() {
        Preset cacheablePreset = getCacheablePreset(TriggerPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void triumph() {
        Preset cacheablePreset = getCacheablePreset(TriumphPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void trumpet() {
        Preset cacheablePreset = getCacheablePreset(TrumpetPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void typewriter() {
        Preset cacheablePreset = getCacheablePreset(TypewriterPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void unfurl() {
        Preset cacheablePreset = getCacheablePreset(UnfurlPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void vortex() {
        Preset cacheablePreset = getCacheablePreset(VortexPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void wane() {
        Preset cacheablePreset = getCacheablePreset(WanePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void warDrum() {
        Preset cacheablePreset = getCacheablePreset(WarDrumPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void waterfall() {
        Preset cacheablePreset = getCacheablePreset(WaterfallPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void wave() {
        Preset cacheablePreset = getCacheablePreset(WavePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void wisp() {
        Preset cacheablePreset = getCacheablePreset(WispPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void wobble() {
        Preset cacheablePreset = getCacheablePreset(WobblePreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void woodpecker() {
        Preset cacheablePreset = getCacheablePreset(WoodpeckerPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }

    public final void zipper() {
        Preset cacheablePreset = getCacheablePreset(ZipperPreset.INSTANCE.getName());
        Intrinsics.checkNotNull(cacheablePreset);
        cacheablePreset.play();
    }
}
