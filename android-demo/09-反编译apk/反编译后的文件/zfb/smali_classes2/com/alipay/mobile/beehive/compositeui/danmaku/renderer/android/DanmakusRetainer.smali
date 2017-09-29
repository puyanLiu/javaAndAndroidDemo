.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;
.super Ljava/lang/Object;
.source "DanmakusRetainer.java"


# static fields
.field private static fbdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

.field private static ftdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

.field private static lrdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

.field private static rldrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 30
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 32
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 34
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->clear()V

    .line 75
    :cond_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->clear()V

    .line 78
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-eqz v0, :cond_2

    .line 79
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->clear()V

    .line 81
    :cond_2
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-eqz v0, :cond_3

    .line 82
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->clear()V

    .line 84
    :cond_3
    return-void
.end method

.method public static fix(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    .line 39
    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    :pswitch_0
    return-void

    .line 41
    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;

    invoke-direct {v0, v1, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 44
    :cond_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->fix(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V

    goto :goto_0

    .line 47
    :pswitch_2
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;

    invoke-direct {v0, v1, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$RLDanmakusRetainer;)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 50
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->fix(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V

    goto :goto_0

    .line 53
    :pswitch_3
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-nez v0, :cond_2

    .line 54
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;

    invoke-direct {v0, v1, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FTDanmakusRetainer;)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 56
    :cond_2
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->fix(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V

    goto :goto_0

    .line 59
    :pswitch_4
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    if-nez v0, :cond_3

    .line 60
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$FBDanmakusRetainer;)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 62
    :cond_3
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;->fix(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V

    goto :goto_0

    .line 65
    :pswitch_5
    invoke-virtual {p0, p1, v2, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->layout(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FF)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public static release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->clear()V

    .line 88
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->rldrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 89
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->lrdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 90
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->ftdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 91
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer;->fbdrInstance:Lcom/alipay/mobile/beehive/compositeui/danmaku/renderer/android/DanmakusRetainer$IDanmakusRetainer;

    .line 92
    return-void
.end method
