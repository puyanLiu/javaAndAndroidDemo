.class public Lmtopsdk/xstate/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# static fields
.field private static a:Landroid/telephony/TelephonyManager;

.field private static b:Lmtopsdk/xstate/NetworkStatus;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lmtopsdk/xstate/NetworkStatus;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lmtopsdk/xstate/NetworkStatus;->a:Landroid/telephony/TelephonyManager;

    .line 53
    :cond_0
    return-void
.end method

.method public static a(I)Lmtopsdk/xstate/NetworkClassEnum;
    .locals 1

    .prologue
    .line 69
    packed-switch p0, :pswitch_data_0

    .line 89
    sget-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_UNKONWN:Lmtopsdk/xstate/NetworkClassEnum;

    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    sget-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_2G:Lmtopsdk/xstate/NetworkClassEnum;

    goto :goto_0

    .line 85
    :pswitch_1
    sget-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

    goto :goto_0

    .line 87
    :pswitch_2
    sget-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_4G:Lmtopsdk/xstate/NetworkClassEnum;

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lmtopsdk/xstate/NetworkStatus;
    .locals 3

    .prologue
    .line 58
    const-class v1, Lmtopsdk/xstate/NetworkStatus;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 59
    :try_start_0
    const-string/jumbo v0, "mtopsdk.NetworkStatus"

    const-string/jumbo v2, "parameter context for getInstance(Context context) is null."

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v0, 0x0

    .line 65
    :goto_0
    monitor-exit v1

    return-object v0

    .line 62
    :cond_0
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/NetworkStatus;->b:Lmtopsdk/xstate/NetworkStatus;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lmtopsdk/xstate/NetworkStatus;

    invoke-direct {v0, p0}, Lmtopsdk/xstate/NetworkStatus;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmtopsdk/xstate/NetworkStatus;->b:Lmtopsdk/xstate/NetworkStatus;

    .line 65
    :cond_1
    sget-object v0, Lmtopsdk/xstate/NetworkStatus;->b:Lmtopsdk/xstate/NetworkStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    packed-switch p0, :pswitch_data_0

    .line 136
    const-string/jumbo v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 106
    :pswitch_0
    const-string/jumbo v0, "GPRS"

    goto :goto_0

    .line 108
    :pswitch_1
    const-string/jumbo v0, "EDGE"

    goto :goto_0

    .line 110
    :pswitch_2
    const-string/jumbo v0, "UMTS"

    goto :goto_0

    .line 112
    :pswitch_3
    const-string/jumbo v0, "HSDPA"

    goto :goto_0

    .line 114
    :pswitch_4
    const-string/jumbo v0, "HSUPA"

    goto :goto_0

    .line 116
    :pswitch_5
    const-string/jumbo v0, "HSPA"

    goto :goto_0

    .line 118
    :pswitch_6
    const-string/jumbo v0, "CDMA"

    goto :goto_0

    .line 120
    :pswitch_7
    const-string/jumbo v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 122
    :pswitch_8
    const-string/jumbo v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 124
    :pswitch_9
    const-string/jumbo v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 126
    :pswitch_a
    const-string/jumbo v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 128
    :pswitch_b
    const-string/jumbo v0, "LTE"

    goto :goto_0

    .line 130
    :pswitch_c
    const-string/jumbo v0, "CDMA - eHRPD"

    goto :goto_0

    .line 132
    :pswitch_d
    const-string/jumbo v0, "iDEN"

    goto :goto_0

    .line 134
    :pswitch_e
    const-string/jumbo v0, "HSPA+"

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method
