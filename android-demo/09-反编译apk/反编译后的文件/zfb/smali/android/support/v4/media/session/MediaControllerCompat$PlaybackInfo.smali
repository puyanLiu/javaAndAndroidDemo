.class public final Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
.super Ljava/lang/Object;


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->a:I

    iput p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->b:I

    iput p3, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->c:I

    iput p4, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->d:I

    iput p5, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->e:I

    return-void
.end method


# virtual methods
.method public final getAudioStream()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->b:I

    return v0
.end method

.method public final getCurrentVolume()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->e:I

    return v0
.end method

.method public final getMaxVolume()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->d:I

    return v0
.end method

.method public final getPlaybackType()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->a:I

    return v0
.end method

.method public final getVolumeControl()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->c:I

    return v0
.end method
